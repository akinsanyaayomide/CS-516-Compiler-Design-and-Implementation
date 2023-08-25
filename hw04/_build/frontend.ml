open Ll
open Llutil
open Ast

(* instruction streams ------------------------------------------------------ *)

(* As in the last project, we'll be working with a flattened representation
   of LLVMlite programs to make emitting code easier. This version
   additionally makes it possible to emit elements will be gathered up and
   "hoisted" to specific parts of the constructed CFG
   - G of gid * Ll.gdecl: allows you to output global definitions in the middle
     of the instruction stream. You will find this useful for compiling string
     literals
   - E of uid * insn: allows you to emit an instruction that will be moved up
     to the entry block of the current function. This will be useful for 
     compiling local variable declarations
*)

type elt = 
  | L of Ll.lbl             (* block labels *)
  | I of uid * Ll.insn      (* instruction *)
  | T of Ll.terminator      (* block terminators *)
  | G of gid * Ll.gdecl     (* hoisted globals (usually strings) *)
  | E of uid * Ll.insn      (* hoisted entry block instructions *)

type stream = elt list
let ( >@ ) x y = y @ x
let ( >:: ) x y = y :: x
let lift : (uid * insn) list -> stream = List.rev_map (fun (x,i) -> I (x,i))

(* Build a CFG and collection of global variable definitions from a stream *)
let cfg_of_stream (code:stream) : Ll.cfg * (Ll.gid * Ll.gdecl) list  =
    let gs, einsns, insns, term_opt, blks = List.fold_left
      (fun (gs, einsns, insns, term_opt, blks) e ->
        match e with
        | L l ->
           begin match term_opt with
           | None -> 
              if (List.length insns) = 0 then (gs, einsns, [], None, blks)
              else failwith @@ Printf.sprintf "build_cfg: block labeled %s has\
                                               no terminator" l
           | Some term ->
              (gs, einsns, [], None, (l, {insns; term})::blks)
           end
        | T t  -> (gs, einsns, [], Some (Llutil.Parsing.gensym "tmn", t), blks)
        | I (uid,insn)  -> (gs, einsns, (uid,insn)::insns, term_opt, blks)
        | G (gid,gdecl) ->  ((gid,gdecl)::gs, einsns, insns, term_opt, blks)
        | E (uid,i) -> (gs, (uid, i)::einsns, insns, term_opt, blks)
      ) ([], [], [], None, []) code
    in
    match term_opt with
    | None -> failwith "build_cfg: entry block has no terminator" 
    | Some term -> 
       let insns = einsns @ insns in
       ({insns; term}, blks), gs


(* compilation contexts ----------------------------------------------------- *)

(* To compile OAT variables, we maintain a mapping of source identifiers to the
   corresponding LLVMlite operands. Bindings are added for global OAT variables
   and local variables that are in scope. *)

module Ctxt = struct

  type t = (Ast.id * (Ll.ty * Ll.operand)) list
  let empty = []

  (* Add a binding to the context *)
  let add (c:t) (id:id) (bnd:Ll.ty * Ll.operand) : t = (id,bnd)::c

  (* Lookup a binding in the context *)
  let lookup (id:Ast.id) (c:t) : Ll.ty * Ll.operand =
    List.assoc id c

  (* Lookup a function, fail otherwise *)
  let lookup_function (id:Ast.id) (c:t) : Ll.ty * Ll.operand =
    match List.assoc id c with
    | Ptr (Fun (args, ret)), g -> Ptr (Fun (args, ret)), g
    | _ -> failwith @@ id ^ " not bound to a function"

  let lookup_function_option (id:Ast.id) (c:t) : (Ll.ty * Ll.operand) option =
    try Some (lookup_function id c) with _ -> None
  
end

(* compiling OAT types ------------------------------------------------------ *)

(* The mapping of source types onto LLVMlite is straightforward. Booleans and ints
   are represented as the corresponding integer types. OAT strings are
   pointers to bytes (I8). Arrays are the most interesting type: they are
   represented as pointers to structs where the first component is the number
   of elements in the following array.

   The trickiest part of this project will be satisfying LLVM's rudimentary type
   system. Recall that global arrays in LLVMlite need to be declared with their
   length in the type to statically allocate the right amount of memory. The 
   global strings and arrays you emit will therefore have a more specific type
   annotation than the output of cmp_rty. You will have to carefully bitcast
   gids to satisfy the LLVM type checker.
*)

let rec cmp_ty : Ast.ty -> Ll.ty = function
  | Ast.TBool  -> I1
  | Ast.TInt   -> I64
  | Ast.TRef r -> Ptr (cmp_rty r)

and cmp_rty : Ast.rty -> Ll.ty = function
  | Ast.RString  -> I8
  | Ast.RArray u -> Struct [I64; Array(0, cmp_ty u)]
  | Ast.RFun (ts, t) -> 
      let args, ret = cmp_fty (ts, t) in
      Fun (args, ret)

and cmp_ret_ty : Ast.ret_ty -> Ll.ty = function
  | Ast.RetVoid  -> Void
  | Ast.RetVal t -> cmp_ty t

and cmp_fty (ts, r) : Ll.fty =
  List.map cmp_ty ts, cmp_ret_ty r


let typ_of_binop : Ast.binop -> Ast.ty * Ast.ty * Ast.ty = function
  | Add | Mul | Sub | Shl | Shr | Sar | IAnd | IOr -> (TInt, TInt, TInt)
  | Eq | Neq | Lt | Lte | Gt | Gte -> (TInt, TInt, TBool)
  | And | Or -> (TBool, TBool, TBool)

let typ_of_unop : Ast.unop -> Ast.ty * Ast.ty = function
  | Neg | Bitnot -> (TInt, TInt)
  | Lognot       -> (TBool, TBool)


(* Some useful helper functions *)

(* Generate a fresh temporary identifier. Since OAT identifiers cannot begin
   with an underscore, these should not clash with any source variables *)
let gensym : string -> string =
  let c = ref 0 in
  fun (s:string) -> incr c; Printf.sprintf "_%s%d" s (!c)

(* Amount of space an Oat type takes when stored in the satck, in bytes.  
   Note that since structured values are manipulated by reference, all
   Oat values take 8 bytes on the stack.
*)
let size_oat_ty (t : Ast.ty) = 8L

(* Generate code to allocate a zero-initialized array of source type TRef (RArray t) of the
   given size. Note "size" is an operand whose value can be computed at
   runtime *)
let oat_alloc_array (t:Ast.ty) (size:Ll.operand) : Ll.ty * operand * stream =
  let ans_id, arr_id = gensym "array", gensym "raw_array" in
  let ans_ty = cmp_ty @@ TRef (RArray t) in
  let arr_ty = Ptr I64 in
  ans_ty, Id ans_id, lift
    [ arr_id, Call(arr_ty, Gid "oat_alloc_array", [I64, size])
    ; ans_id, Bitcast(arr_ty, Id arr_id, ans_ty) ]




(* Compiles an expression exp in context c, outputting the Ll operand that will
   recieve the value of the expression, and the stream of instructions
   implementing the expression. 

   Tips:
   - use the provided cmp_ty function!

   - string literals (CStr s) should be hoisted. You'll need to make sure
     either that the resulting gid has type (Ptr I8), or, if the gid has type
     [n x i8] (where n is the length of the string), convert the gid to a 
     (Ptr I8), e.g., by using getelementptr.

   - use the provided "oat_alloc_array" function to implement literal arrays
     (CArr) and the (NewArr) expressions

*)
let bool_conv b   = Const (if b then 1L else 0L)
let int_conv i   = Const (Int64.of_int i)
let in64_conv i = Const i

let cmp_binop bop ty op1 op2 :  insn =
  (match bop with
    | Ast.Add -> Ll.Binop (Add, ty, op1, op2)
    | Ast.Mul -> Ll.Binop (Mul, ty, op1, op2)
    | Ast.Sub -> Ll.Binop (Sub, ty, op1, op2)
    | Ast.And -> Ll.Binop (And, ty, op1, op2)
    | Ast.IAnd -> Ll.Binop (And, ty, op1, op2) 
    | Ast.IOr -> Ll.Binop(Or, ty, op1, op2)
    | Ast.Or -> Ll.Binop(Or, ty, op1, op2)
    | Ast.Shl -> Ll.Binop(Shl, ty, op1, op2)
    | Ast.Shr -> Ll.Binop(Lshr, ty, op1, op2)
    | Ast.Sar -> Ll.Binop(Ashr, ty, op1, op2)
    | Ast.Eq  -> Ll.Icmp(Eq, ty, op1, op2)
    | Ast.Neq -> Ll.Icmp(Ne, ty, op1, op2)
    | Ast.Lt  -> Ll.Icmp(Slt, ty, op1, op2)
    | Ast.Lte -> Ll.Icmp(Sle, ty, op1, op2)
    | Ast.Gt  -> Ll.Icmp(Sgt, ty, op1, op2)
    | Ast.Gte -> Ll.Icmp(Sge, ty, op1, op2)
  )


let rec cmp_exp (c:Ctxt.t) (exp:Ast.exp node) : Ll.ty * Ll.operand * stream =
  match exp.elt with
  | Ast.CNull rty -> cmp_rty rty, Null, []
  | Ast.CInt i -> I64, Const(i), []
  | Ast.CBool b -> I1, Const(if b then Int64.one else Int64.zero), []
  | Ast.Bop (bop,e1,e2) -> 
      let (ans_ty1, op1, code1) = (cmp_exp c e1) in
      let (ans_ty2, op2, code2) = (cmp_exp c e2) in
      let ans_id = (gensym "bop") in 
      let (_, _, ret_ty) = typ_of_binop bop in
      let ret_ty = cmp_ty ret_ty in
      ((ret_ty), (Ll.Id ans_id), code1 >@ code2 >:: I (ans_id,
                                                          (cmp_binop bop ans_ty1 op1 op2)))
  | Ast.Id(id) -> (
      let (ty, op) = Ctxt.lookup id c in
      let uid = gensym ("id_"^id) in
      match ty with
      | Ptr(Array(s, ty)) -> Ptr(ty), Id(uid), [I(uid, Bitcast(Ptr(Array(s, ty)), op,  Ptr(ty)))]
      | Ptr(Struct([I64;Array(a,b)])) -> Ptr(Struct([I64;Array(0,b)])),Id(uid),[I(uid, Bitcast(ty, op,Ptr(Struct([I64;Array(0,b)]))))]
      | Ptr(ty) -> ty, Id(uid), [I(uid, Load(Ptr(ty), op))]
      
      | _ -> failwith "Id expects a Ptr"
    )
  | Ast.Uop (uop,e) ->let (ans_ty, op, code) = (cmp_exp c e) in
                      let ans_id = (gensym "unop") in
                      ((ans_ty, (Ll.Id ans_id), code >::I (ans_id, match uop with
                                | Ast.Neg -> Ll.Binop (Sub, ans_ty, int_conv 0, op)
                                | Ast.Lognot -> Ll.Icmp  (Eq, ans_ty, op, bool_conv false)
                                | Ast.Bitnot  -> Ll.Binop (Xor, ans_ty, op, int_conv (-1)))))

    
  | Ast.Call({elt=Id(id)}, args) -> (
      let ptr_fn_ty, op = Ctxt.lookup id c in
      match ptr_fn_ty with
      | Ptr Fun(_, ret_ty) -> 
        let args, str = List.fold_left (
            fun (ll_args, code) ast_arg ->
              let ty, op, str = cmp_exp c ast_arg in
              ll_args @ [(ty, op)], code >@ str
          ) ([], []) args in
        let uid = gensym "" in
        let call: Ll.insn = Call(ret_ty, op, args) in
        ret_ty, Id(uid), str >:: I(uid, call)
      | _ -> failwith "unexpected type for call"
    )

  | Ast.NewArr (elt_ty, e) -> 
  let _, size_op, size_code = cmp_exp c e in
  let arry_typ, arry_op, str = oat_alloc_array elt_ty size_op in
  arry_typ, arry_op, size_code >@ str

  | Ast.Index(exp, index) -> (
      let arry_typ, arry_op, arry_str = cmp_exp c exp in
      let _, index_op, index_str = cmp_exp c index in
      match arry_typ with
      | Ptr(Struct [_; Array(_, ty)]) ->
        let (ptr_uid,value_uid) = gensym "index_pointer", gensym "index_value" in
        ty, Id(value_uid), arry_str >@ index_str >:: I(ptr_uid, Gep(arry_typ, arry_op, 
        [Const(Int64.zero); Const(Int64.one); index_op])) >:: I(value_uid, Load(Ptr(ty), Id ptr_uid))
      | _ -> failwith "unexpected array type"
    )
    | Ast.CArr (e_ty, es) -> (
      let arry_typ, arry_op, arry_str = oat_alloc_array e_ty (Const (Int64.of_int (List.length es))) in 
      let arry_list = List.map (fun e -> cmp_exp c e) es in
      let arry_l_str = arry_list |> List.map (fun (_, _, s) -> s) |> List.flatten in 
      let final_str = arry_list|> List.mapi (fun i (ty, op, _) -> 
      let id = gensym "" in
      let size i = Ll.Const (Int64.of_int i) in
      let (s_id,f_ins,s_ins) = gensym "store",Gep (arry_typ, arry_op, [size 0; size 1; size i]),Store (ty, op, Id id) in
        lift [id, f_ins; s_id, s_ins]
      ) |> List.flatten in
      let rarry_l_str = arry_l_str >@ arry_str >@ final_str in
      arry_typ, arry_op, rarry_l_str
    )
  | Ast.CStr s -> let gid = gensym "string" in
  let (typ,uid) = (Ll.Array ((String.length s) + 1, Ll.I8)),gensym "string1" in
      Ptr I8, Id uid, [] >:: G(gid, (typ, GString s))
  >:: I(uid, Gep(Ptr typ, Gid gid, [Const 0L; Const 0L;]))
  | _ -> failwith "cmp_exp unimplemented"
  


(* Compile a statement in context c with return typ rt. Return a new context, 
   possibly extended with new local bindings, and the instruction stream
   implementing the statement.

   Left-hand-sides of assignment statements must either be OAT identifiers,
   or an index into some arbitrary expression of array type. Otherwise, the
   program is not well-formed and your compiler may throw an error.

   Tips:
   - for local variable declarations, you will need to emit Allocas in the
     entry block of the current function using the E() constructor.

   - don't forget to add a bindings to the context for local variable 
     declarations
   
   - you can avoid some work by translating For loops to the corresponding
     While loop, building the AST and recursively calling cmp_stmt

   - you might find it helpful to reuse the code you wrote for the Call
     expression to implement the SCall statement

   - compiling the left-hand-side of an assignment is almost exactly like
     compiling the Id or Index expression. Instead of loading the resulting
     pointer, you just need to store to it!

 *)
 let rec cmp_stmt (c:Ctxt.t) (rt:Ll.ty) (stmt:Ast.stmt node) : Ctxt.t * stream =
  match stmt.elt with
  | Ast.Ret exp_opt -> ( match exp_opt with
    | None -> c, [T(Ret(Void, None))]
    | Some(e) -> let (ty, op, stream) = cmp_exp c e in c, stream >:: T(Ret(ty, Some op)))

  | Ast.Decl (id,e) ->
    let ll_typ, op, str = cmp_exp c e in
    let ans = gensym id in
    let new_ctxt = Ctxt.add c id (Ptr ll_typ, Id ans) in
    new_ctxt, str  >:: E(ans, Alloca ll_typ) >:: I("",     Store (ll_typ, op, Id ans))
 
  | Ast.While (e, b1) -> let (t1, o1, s1) = (cmp_exp c e) in
    c,(cmp_while c rt o1 b1 s1)

  | Ast.For(vdecls, cond, stmt_list, stmts) ->
    let c, vdecls_str = List.fold_left(fun (c, str_accum) vdecl ->
        let (c, str) = cmp_stmt c rt (no_loc (Decl vdecl)) in
        c, str_accum >@ str) (c, []) vdecls in
    let cond = match cond with
      | Some(exp) -> exp
      | None -> no_loc (CBool true) in
    let stmt_list = match stmt_list with 
      | Some(stmt) -> [stmt]
      | None -> [] in
    let while_stmt = While(cond, (stmts @ stmt_list)) in
    let c, full_str = cmp_stmt c rt {elt = while_stmt; loc = stmt.loc}in c, vdecls_str >@ full_str

  | Ast.Assn(l, r) -> (
      let (r_ty, r_op, r_stream) = cmp_exp c r in
      match l.elt with
      | Id(id) -> 
        let _, dest_op = Ctxt.lookup id c in
        c, r_stream >:: I("", Store(r_ty, r_op, dest_op))
      | Index(arry_exp, index) -> (
          let arry_typ, arry_op, arry_str = cmp_exp c arry_exp in
          let _, index_opr, index_str = cmp_exp c index in
          match arry_typ with
          | Ptr(Struct [_; Array(_, ty)]) ->
            let ptr_id,i_of_ins = gensym "" ,(Gep(arry_typ, arry_op, [Const(Int64.zero); Const(Int64.one); index_opr])) in
            c, r_stream >@ arry_str >@ index_str >:: I(ptr_id, i_of_ins) >:: I("", Store(r_ty, r_op, Id ptr_id))
          | _ -> failwith "expected a Ptr to an Array"
        )
      | _ -> failwith "unexpected type"
    )
  | Ast.If(cnd, t, e) ->
    let (cnd_ty, cnd_op, cnd_stream) = cmp_exp c cnd in
    let (_, t_stream),(_, e_stream) = (cmp_stmts c rt t), (cmp_stmts c rt e)in
    let (l0,l1,l2,l3) = gensym "begin_if" ,gensym "then_branch",gensym "else_branch",gensym "end_if" in
    let (l0_begin, l3_end,if_l1_l2)= T(Br l0),T(Br l3),T(Cbr (cnd_op, l1, l2)) in
    let (begin_str,l1_str,l2_str) = ([L(l0)] >@ cnd_stream >:: if_l1_l2),([L(l1)] >@ t_stream >:: l3_end),([L(l2)] >@ e_stream >:: l3_end) in
    c, [l0_begin] >@ begin_str >@ l1_str >@ l2_str >:: L(l3)

  | Ast.SCall(fn, args) ->
    let nd = no_loc (Call(fn, args)) in
    let _, _, str = cmp_exp c nd  in
    c, str
and cmp_stmts (c:Ctxt.t) (rt:Ll.ty) (stmts:Ast.block) : Ctxt.t * stream =
  List.fold_left (fun (c, code) s -> 
      let c, stmt_code = cmp_stmt c rt s in
      c, code >@ stmt_code
    ) (c,[]) stmts

and cmp_while c rt exp b1 c1: stream =
let _,e_b1 = cmp_block c rt b1 in
let (l0,l1,l0_l1) = (gensym "if"), (gensym "cond"),(gensym "merge")in
[] >@ [T (Br (l1))] >@ [L l1]  >@ c1 >@
[T (Cbr (exp, l0, l0_l1))] >@
[L l0] >@ e_b1 >@ [T (Br l1)]>@ [L l0_l1]

(* Compile a series of statements *)
and cmp_block (c:Ctxt.t) (rt:Ll.ty) (stmts:Ast.block) : Ctxt.t * stream =
  List.fold_left (fun (c, code) s -> 
      let c, stmt_code = cmp_stmt c rt s in
      c, code >@ stmt_code
    ) (c,[]) stmts



(* Adds each function identifer to the context at an
   appropriately translated type.  

   NOTE: The Gid of a function is just its source name
*)
let cmp_function_ctxt (c:Ctxt.t) (p:Ast.prog) : Ctxt.t =
    List.fold_left (fun c -> function
      | Ast.Gfdecl { elt={ frtyp; fname; args } } ->
         let ft = TRef (RFun (List.map fst args, frtyp)) in
         Ctxt.add c fname (cmp_ty ft, Gid fname)
      | _ -> c
    ) c p 

(* Populate a context with bindings for global variables 
   mapping OAT identifiers to LLVMlite gids and their types.

   Only a small subset of OAT expressions can be used as global initializers
   in well-formed programs. (The constructors starting with C). 
*)
let cmp_global_ctxt (c:Ctxt.t) (p:Ast.prog) : Ctxt.t =
  List.fold_left (fun c -> function
      | Ast.Gvdecl { elt = {name; init} } -> (
          let ty = match init.elt with
            | Ast.CBool _       -> Ptr I1
            | Ast.CInt _        -> Ptr I64
            | Ast.CStr s        -> Ptr (Array (1 + String.length s, I8))
            | Ast.CArr (ty, es)  -> Ptr (Struct [I64; Array(List.length es, cmp_ty ty)])
            | Ast.CNull ty      -> Ptr(Ptr (cmp_rty ty))
            | _ -> failwith "unsupported type"
          in
          Ctxt.add c name (ty, Gid name)
        )
      | _ -> c
    ) c p


(* Compile a function declaration in global context c. Return the LLVMlite cfg
   and a list of global declarations containing the string literals appearing
   in the function.

   You will need to
   1. Allocate stack space for the function parameters using Alloca
   2. Store the function arguments in their corresponding alloca'd stack slot
   3. Extend the context with bindings for function variables
   4. Compile the body of the function using cmp_block
   5. Use cfg_of_stream to produce a LLVMlite cfg from 
 *)
 let cmp_fdecl (c:Ctxt.t) (f:Ast.fdecl node) : Ll.fdecl * (Ll.gid * Ll.gdecl) list =
  let f = f.elt in
  let (frtyp,fptyp) = (cmp_ret_ty f.frtyp), (f.args |> List.map (fun (ty, _) -> cmp_ty ty)) in
  let f_ty = fptyp, frtyp in
  let f_param = f.args |> List.map (fun (_, uid) -> uid) in
  let c, f_param_str = f.args |> List.fold_left (fun (c, str) (ty, id) ->
      let ty,uid = cmp_ty ty,gensym id in
      let c = Ctxt.add c id (Ptr ty, Id uid) in
      c, str >:: E(uid, Alloca ty) >:: I("", Store(ty, Id id, Id uid))) (c, []) in
  let full_str = f.body |> cmp_block c frtyp in
  let (f_cfg, gs) = cfg_of_stream (f_param_str >@ snd(full_str)) in
  {f_ty; f_param; f_cfg}, gs


(* Compile a global initializer, returning the resulting LLVMlite global
   declaration, and a list of additional global declarations.

   Tips:
   - Only CNull, CBool, CInt, CStr, and CArr can appear as global initializers
     in well-formed OAT programs. Your compiler may throw an error for the other
     cases

   - OAT arrays are always handled via pointers. A global array of arrays will
     be an array of pointers to arrays emitted as additional global declarations.
*)
let rec cmp_gexp (c : Ctxt.t) (e:Ast.exp node) : Ll.gdecl * (Ll.gid * Ll.gdecl) list =
  match e.elt with
  | Ast.CBool b ->  (I1, GInt(if b then Int64.one else Int64.zero)), []
  | Ast.CInt i ->  (I64, GInt i), []
  | Ast.CStr s ->  (Array (1 + String.length s, I8), GString s), []
  | Ast.CArr(ty, es)  -> (
    let arry_typ,cmp_es = (Struct [I64; Array(List.length es, cmp_ty ty)]), (List.map (fun e -> cmp_gexp c e) es) in
    let arry_init = GArray (List.map (fun (gdcl, _) -> gdcl) cmp_es) in
    let arry_struct = GStruct ([(I64,GInt (Int64.of_int(List.length es)));(Array(List.length es, cmp_ty ty),arry_init)]) in
    let others = List.flatten (List.map (fun (_, other) -> other) cmp_es) in
    (arry_typ, arry_struct), others;
  )
  | Ast.CNull ty      ->  (Ptr(cmp_rty ty), GNull),   []
  | _ -> failwith "cmp_init not implemented"



(* Oat internals function context ------------------------------------------- *)
let internals = [
    "oat_alloc_array",         Ll.Fun ([I64], Ptr I64)
  ]

(* Oat builtin function context --------------------------------------------- *)
let builtins =
  [ "array_of_string",  cmp_rty @@ RFun ([TRef RString], RetVal (TRef(RArray TInt)))
  ; "string_of_array",  cmp_rty @@ RFun ([TRef(RArray TInt)], RetVal (TRef RString))
  ; "length_of_string", cmp_rty @@ RFun ([TRef RString],  RetVal TInt)
  ; "string_of_int",    cmp_rty @@ RFun ([TInt],  RetVal (TRef RString))
  ; "string_cat",       cmp_rty @@ RFun ([TRef RString; TRef RString], RetVal (TRef RString))
  ; "print_string",     cmp_rty @@ RFun ([TRef RString],  RetVoid)
  ; "print_int",        cmp_rty @@ RFun ([TInt],  RetVoid)
  ; "print_bool",       cmp_rty @@ RFun ([TBool], RetVoid)
  ]

(* Compile a OAT program to LLVMlite *)
let cmp_prog (p:Ast.prog) : Ll.prog =
  (* add built-in functions to context *)
  let init_ctxt = 
    List.fold_left (fun c (i, t) -> Ctxt.add c i (Ll.Ptr t, Gid i))
      Ctxt.empty builtins
  in
  let fc = cmp_function_ctxt init_ctxt p in

  (* build global variable context *)
  let c = cmp_global_ctxt fc p in

  (* compile functions and global variables *)
  let fdecls, gdecls = 
    List.fold_right (fun d (fs, gs) ->
        match d with
        | Ast.Gvdecl { elt=gd } -> 
           let ll_gd, gs' = cmp_gexp c gd.init in
           (fs, (gd.name, ll_gd)::gs' @ gs)
        | Ast.Gfdecl fd ->
           let fdecl, gs' = cmp_fdecl c fd in
           (fd.elt.fname,fdecl)::fs, gs' @ gs
      ) p ([], [])
  in

  (* gather external declarations *)
  let edecls = internals @ builtins in
  { tdecls = []; gdecls; fdecls; edecls }
