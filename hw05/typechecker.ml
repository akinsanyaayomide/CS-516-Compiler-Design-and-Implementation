open Ast
open Astlib
open Tctxt

(* Error Reporting ---------------------------------------------------------- *)
(* NOTE: Use type_error to report error messages for ill-typed programs. *)

exception TypeError of string

let type_error (l : 'a node) err = 
  let (_, (s, e), _) = l.loc in
  raise (TypeError (Printf.sprintf "[%d, %d] %s" s e err))



(* initial context: G0 ------------------------------------------------------ *)
(* The Oat types of the Oat built-in functions *)
let builtins =
  [ "array_of_string",  ([TRef RString],  RetVal (TRef(RArray TInt)))
  ; "string_of_array",  ([TRef(RArray TInt)], RetVal (TRef RString))
  ; "length_of_string", ([TRef RString],  RetVal TInt)
  ; "string_of_int",    ([TInt], RetVal (TRef RString))
  ; "string_cat",       ([TRef RString; TRef RString], RetVal (TRef RString))
  ; "print_string",     ([TRef RString],  RetVoid)
  ; "print_int",        ([TInt], RetVoid)
  ; "print_bool",       ([TBool], RetVoid)
  ]

(* binary operation types --------------------------------------------------- *)
let typ_of_binop : Ast.binop -> Ast.ty * Ast.ty * Ast.ty = function
  | Add | Mul | Sub | Shl | Shr | Sar | IAnd | IOr -> (TInt, TInt, TInt)
  | Lt | Lte | Gt | Gte -> (TInt, TInt, TBool)
  | And | Or -> (TBool, TBool, TBool)
  | Eq | Neq -> failwith "typ_of_binop called on polymorphic == or !="

(* unary operation types ---------------------------------------------------- *)
let typ_of_unop : Ast.unop -> Ast.ty * Ast.ty = function
  | Neg | Bitnot -> (TInt, TInt)
  | Lognot       -> (TBool, TBool)

(* subtyping ---------------------------------------------------------------- *)
(* Decides whether H |- t1 <: t2 
    - assumes that H contains the declarations of all the possible struct types

    - you will want to introduce addition (possibly mutually recursive) 
      helper functions to implement the different judgments of the subtyping
      relation. We have included a template for subtype_ref to get you started.
      (Don't forget about OCaml's 'and' keyword.)
*)
let rec subtype (c : Tctxt.t) (t1 : Ast.ty) (t2 : Ast.ty) : bool =
  match (t1, t2) with
  | Ast.TInt, Ast.TInt -> true
  | Ast.TBool, Ast.TBool -> true
  | Ast.TNullRef(rt1), Ast.TNullRef(rt2) ->subtype_ref c rt1 rt2
  | Ast.TRef(rt1), Ast.TRef(rt2) ->subtype_ref c rt1 rt2
  | Ast.TRef(rt1), Ast.TNullRef(rt2) -> subtype_ref c rt1 rt2
  | _ -> false


(* Decides whether H |-r ref1 <: ref2 *)
and subtype_ref (c : Tctxt.t) (t1 : Ast.rty) (t2 : Ast.rty) : bool =
match (t1, t2) with
| Ast.RString, Ast.RString -> true
| Ast.RArray t1, Ast.RArray t2 -> let bool1 = (t1 = t2) in bool1
| Ast.RStruct a, Ast.RStruct b -> subtype_struct c a b
| Ast.RFun(a, rt1), Ast.RFun(b, rt2) -> subtype_func c a rt1 b rt2
| _ -> false

(* Decides whether H |-r rt1 <: rt2 *)
and subtype_rt (c : Tctxt.t) (t1 : Ast.ret_ty) (t2 : Ast.ret_ty) : bool =
  match (t1, t2) with
  | Ast.RetVoid, Ast.RetVoid -> true
  | Ast.RetVal(a), Ast.RetVal(b) -> subtype c a b
  | _ -> false 
and subtype_func (c : Tctxt.t) (typ_args1 :Ast.ty list) (rt1 :Ast.ret_ty) (typ_args2 :Ast.ty list) (rt2 :Ast.ret_ty) : bool = 
  let a = List.length typ_args1 in 
  let b = List.length typ_args2 in 
  let c1 = if (a = b) then true else false in
  let bool1 = c1 in
  let bool2 = List.fold_left2(fun accum typ_arg1 typ_arg2 -> accum && subtype c typ_arg2 typ_arg1) true typ_args1 typ_args2 in
  let bool3 = bool1 &&  bool2 in
  let rt_bool = subtype_rt c rt1 rt2 in
  bool3 && rt_bool

and subtype_struct (c : Tctxt.t) (struct1 : Ast.id) (struct2 : Ast.id) : bool = struct1 = struct2 ||
  match Tctxt.lookup_struct_option struct2 c with
  | None -> false
  | Some struct2_fields ->
    List.fold_left (fun accum field -> accum && 
      match (Tctxt.lookup_field_option struct1 field.fieldName c) with
      | None -> false | Some t -> t = field.ftyp) true struct2_fields



(* well-formed types -------------------------------------------------------- *)
(* Implement a (set of) functions that check that types are well formed according
   to the H |- t and related inference rules

    - the function should succeed by returning () if the type is well-formed
      according to the rules

    - the function should fail using the "type_error" helper function if the 
      type is not well formed

    - l is just an ast node that provides source location information for
      generating error messages (it's only needed for the type_error generation)

    - tc contains the structure definition context
 *)
 let rec typecheck_ty (l : 'a Ast.node) (tc : Tctxt.t) (t : Ast.ty) : unit =
  match t with
  | Ast.TInt  ->()
  | Ast.TBool -> ()
  | Ast.TRef(rt) ->typecheck_reftyp l tc rt
  | Ast.TNullRef(rt) -> typecheck_reftyp l tc rt
and typecheck_reftyp  (l : 'a Ast.node) (tc : Tctxt.t) (t : Ast.rty) : unit =
  match t with
  | Ast.RString -> ()
  | Ast.RArray ty -> typecheck_ty l tc ty
  | Ast.RStruct id -> (match Tctxt.lookup_struct_option id tc with
    | None -> type_error l "typecheck_reftyp: undefined struct " | Some _ -> ())
  | Ast.RFun(typ_args, rt_ty) -> (List.iter (fun i -> typecheck_ty l tc i) typ_args;
    typecheck_rttyp l tc rt_ty;)
and typecheck_rttyp  (l : 'a Ast.node) (tc : Tctxt.t) (t : Ast.ret_ty) : unit =
  match t with
  | Ast.RetVoid -> () | Ast.RetVal ty -> typecheck_ty l tc ty


(* A helper function to determine whether a type allows the null value *)
let is_nullable_ty (t : Ast.ty) : bool =
  match t with
  | TNullRef _ -> true
  | _ -> false

(* typechecking expressions ------------------------------------------------- *)
(* Typechecks an expression in the typing context c, returns the type of the
   expression.  This function should implement the inference rules given in the
   oat.pdf specification.  There, they are written:

       H; G; L |- exp : t

   See tctxt.ml for the implementation of the context c, which represents the
   four typing contexts: H - for structure definitions G - for global
   identifiers L - for local identifiers

   Returns the (most precise) type for the expression, if it is type correct
   according to the inference rules.

   Uses the type_error function to indicate a (useful!) error message if the
   expression is not type correct.  The exact wording of the error message is
   not important, but the fact that the error is raised, is important.  (Our
   tests also do not check the location information associated with the error.)

   Notes: - Structure values permit the programmer to write the fields in any
   order (compared with the structure definition).  This means that, given the
   declaration struct T { a:int; b:int; c:int } The expression new T {b=3; c=4;
   a=1} is well typed.  (You should sort the fields to compare them.)

*)
let rec typecheck_exp (c : Tctxt.t) (e : Ast.exp node) : Ast.ty =
  let expr = e.elt in 
  match expr with
  | Ast.CNull(rty) -> (typecheck_reftyp e c rty; TNullRef(rty))
  | Ast.CBool _-> TBool
  | Ast.CInt _ -> TInt
  | Ast.CStr _ -> TRef(RString)
  | Ast.Id id -> let a = Tctxt.lookup_option id c in 
  (match a with
    | None -> type_error e "typecheck_exp Id: undefined Identifier " | Some ty -> ty)
  
  | Ast.CArr(ty, expr_list) -> (
    typecheck_ty e c ty;
    let typ_of_expr = List.map (fun e -> typecheck_exp c e) expr_list in
    let init_bool = List.fold_left (fun acc t -> acc && subtype c t ty) true typ_of_expr in
    match init_bool with
    | false -> type_error e "typecheck_exp CArr: unexpected array element type"
    | true -> TRef(RArray(ty))
  )
  | Ast.NewArr (ty, exp_node) -> 
      typecheck_ty e c ty;
      let a = typecheck_exp c exp_node in
       (match a with
      | Ast.TInt -> (match ty with 
      |TInt ->TRef(RArray(ty))
      |TBool ->TRef(RArray(ty))
      |TNullRef(_) ->TRef(RArray(ty))
      |_ -> type_error e "typecheck_exp CArr: unexpected array element type")
      
      | _ -> type_error e "NewArr size expression must evaluate to an integer"
  )

  | Ast.NewArrInit(ty, length, id, init) -> (
    typecheck_ty e c ty;
    let a =typecheck_exp c length in 
    let b = if a = TInt then true else false in 
    let typecheck_length = b in 
    let c1 = Tctxt.lookup_local_option id c in 
    let typecheck_id = match c1 with None -> true | Some _ -> false in
    let d = Tctxt.add_local c id TInt in 
    let init_1 = typecheck_exp d init in
    let init_bool = subtype c init_1 ty in
    match typecheck_length, typecheck_id, init_bool with
    | true, true, true -> TRef(RArray(ty))
    | false, _, _ -> type_error e "typecheck_exp NewArr: expected a length of Int type "
    | _, false, _ -> type_error e "typecheck_exp NewArr: array init identifier is defined in the local context"
    | _, _, false -> type_error e "typecheck_exp NewArr: invalid type of init expression " 
  )
  | Ast.Index(array, i) -> (
    let (typ_of_i,typ_of_array) = (typecheck_exp c i,typecheck_exp c array) in
    match (typ_of_array, typ_of_i )with
    | TRef(RArray(ty)), TInt -> ty
    | TRef(RArray(_)), ty -> type_error e "typecheck_exp Index: expected an index of Int type " 
    | ty, TInt -> type_error e "typecheck_exp Index: expected an expression of TRef(TArray(t)) type"
    | _, _ -> type_error e "typecheck_exp Index: both the expression and index have incorrect types"
  )
  | Ast.Length(array) -> (
    match (typecheck_exp c array) with
    | TRef(RArray(_))-> TInt
    | ty -> type_error e "typecheck_exp Length: expected an expression of TRef(RArray(ty)) type "
  )
  | Ast.CStruct(struct_id, struct_fields) -> (
    let subtype_struct_fields = List.fold_left(fun accum (func_id, func_init_expr) -> accum &&
      let a = typecheck_exp c func_init_expr in
      let func_init_typ = a in
      let b = Tctxt.lookup_field_option struct_id func_id c in
      match b with
      | None -> false
      | Some func_typ -> let c1 = subtype c func_init_typ func_typ in c1
    ) true struct_fields in
    let correct_fields = Tctxt.lookup_struct struct_id c in
    let typcheck_allfields = List.fold_left(
      fun accum f -> accum && List.exists (fun (id, _) -> id = f.fieldName) struct_fields
    ) true correct_fields in
    let d = List.length correct_fields in
    let e1 = List.length struct_fields in 
    let g = if (d=e1 ) then true else false in 
    let final_init_bool = g in
    match subtype_struct_fields, typcheck_allfields, final_init_bool with
    | true, true, true -> TRef(RStruct struct_id)
    | false, _, _ -> type_error e "typecheck_exp CStruct: expression does not have the correct field type"
    | _, false, _ -> type_error e "typecheck_exp CStruct: you need to initialize all the struct fields"
    | _, _, false -> type_error e "typecheck_exp CStruct: duplicate fields in struct initialization expression"
  )
  | Ast.Proj(s, f_id) -> (
    match (typecheck_exp c s) with
    | TRef(RStruct s_id) -> (
      match (Tctxt.lookup_field_option s_id f_id c) with
      | None -> type_error e "typecheck_exp Proj: undefined field"
      | Some ty -> ty)
    | ty -> type_error e "typecheck_exp Proj: expected an expression of struct type"
  )
  | Ast.Call(func_id, args) -> (
    let args1, typrt = match typecheck_exp c func_id with
    | TRef(RFun(args1, typrt)) -> args1, typrt
    | ty -> type_error e "typecheck_exp Call: identifier is not a function" in

    let typ_args = List.map(fun arg -> typecheck_exp c arg) args in
    let a = List.length args1 in 
    let b = List.length args  in 
    let c1 = if (a=b) then true else false in 
    let typecheck_arg_length = c1 in
    match typecheck_arg_length with
    | true -> (
      let typecheck_args_bool = List.fold_left2(fun accum x arg -> accum && subtype c arg x) true args1 typ_args in
      match typecheck_args_bool, typrt with
      | true, RetVal(typrt)  -> typrt
      | false, _ -> type_error e "typecheck_exp Call: unexpected argument types in function call"
      | _, RetVoid -> type_error e "typecheck_exp Call: unexpected function type"
    )
    | false -> type_error e "typecheck_exp Call: unexpected number of arguments"
  )
  | Bop (Neq, left, right)-> (
    let type_of_left_operand = typecheck_exp c left in
    let type_of_right_operand = typecheck_exp c right in
    let c1 = subtype c type_of_left_operand type_of_right_operand in 
    let d = subtype c type_of_right_operand type_of_left_operand in 
    match c1, d with
    | true, true -> TBool
    | false, _ -> type_error e "typecheck_exp Bop: mismatch of left and right operand"
    | _, false -> type_error e "typecheck_exp Bop: mismatch of left and right operand"
  )

  | Bop (Eq, left, right) -> (
    let type_of_left_operand = typecheck_exp c left in
    let type_of_right_operand = typecheck_exp c right in
    let c1 = subtype c type_of_left_operand type_of_right_operand in 
    let d = subtype c type_of_right_operand type_of_left_operand in 
    match c1, d with
    | true, true -> TBool
    | false, _ -> type_error e "typecheck_exp Bop: mismatch of left and right operand"
    | _, false -> type_error e "typecheck_exp Bop: mismatch of left and right operand"
  )
  | Bop (biop, left, right) -> (
    let type_of_left_operand, type_of_right_operand, typrt = typ_of_binop biop in
    let a = typecheck_exp c left in 
    let b = type_of_left_operand in 
    let c1 = if (a=b) then true else false in 
    let typecheck_left =  c1 in
    let d = typecheck_exp c right  in 
    let g = type_of_right_operand in 
    let h= if (d=g) then true else false in 
    let typecheck_right = h in
    match typecheck_left, typecheck_right with
    | true, true -> typrt
    | false, _ -> type_error e "typecheck_exp  Bop: incorrect type of left operand" 
    | _, false -> type_error e "typecheck_exp Bop: incorrect type of right operand"
  ) 
  | Uop (uop, expr) -> (
    let type_expr, typrt = typ_of_unop uop in
    let a = typecheck_exp c expr in 
    let b = if (a=type_expr ) then true else false in 
    let typecheck_expr = b in
    match typecheck_expr with
    | true -> typrt
    | false -> type_error e "typecheck_exp Uop: incorrect operand"
  )
(* statements --------------------------------------------------------------- *)

(* Typecheck a statement 
   This function should implement the statment typechecking rules from oat.pdf.  

   Inputs:
    - tc: the type context
    - s: the statement node
    - to_ret: the desired return type (from the function declaration)

   Returns:
     - the new type context (which includes newly declared variables in scope
       after this statement)

     - A boolean indicating the return behavior of a statement:
        false:  might not return
        true: definitely returns 

        in the branching statements, the return behavior of the branching 
        statement is the conjunction of the return behavior of the two 
        branches: both both branches must definitely return in order for 
        the whole statement to definitely return.

        Intuitively: if one of the two branches of a conditional does not 
        contain a return statement, then the entire conditional statement might 
        not return.
  
        looping constructs never definitely return 

   Uses the type_error function to indicate a (useful!) error message if the
   statement is not type correct.  The exact wording of the error message is
   not important, but the fact that the error is raised, is important.  (Our
   tests also do not check the location information associated with the error.)

   - You will probably find it convenient to add a helper function that implements the 
     block typecheck rules.
*)
let rec typecheck_stmt (tc : Tctxt.t) (s:Ast.stmt node) (to_ret:ret_ty) : Tctxt.t * bool =
  match s.elt with
  | Ast.Decl vdecl -> 
      let id, exp = vdecl in
      (match Tctxt.lookup_local_option id tc with
      | Some _ -> type_error s "typecheck_stmt: not allowed to redeclare variable"
      | None -> 
        let exp_ty = typecheck_exp tc exp in
        Tctxt.add_local tc id exp_ty,false)

  | Ast.Assn (lhs, rhs) -> (
    let lhs_ty = match lhs.elt with
    | Id id -> (
      let id_ty = typecheck_exp tc lhs in
      match id_ty, Tctxt.lookup_global_option id tc with
      | TRef(RFun _), Some ty -> type_error lhs "typecheck_stmt Assn: identifier is a function "
      | _ -> id_ty
    )
    | _ -> typecheck_exp tc lhs in
    let rhs_ty = typecheck_exp tc rhs in
    let boolsubtype_result = subtype tc rhs_ty lhs_ty in
    match boolsubtype_result with
    | true -> tc, false
    | false -> type_error s "typecheck_stmt Assn: unexpected RHS expression type in assignment statement"
  )
  | Ast.SCall(e, e_list) -> (
    let e_typ = match typecheck_exp tc e with
    | TRef(RFun(e_typ, RetVoid)) -> e_typ
    | _ -> type_error e "typecheck_stmt SCall: unexpected function type"
    in
    let argtyps = List.map (fun arg -> typecheck_exp tc arg) e_list in
    let a = List.length argtyps in 
    let b = List.length e_typ in 
    let c = if (a=b) then true else false in 
    let bool_of_arglist = c in
    match bool_of_arglist with
    | true -> (
      let boolsubtype_result = List.fold_left2 (fun acc p_ty a_ty -> acc && subtype tc a_ty p_ty) true e_typ argtyps in
      match boolsubtype_result with
      | true -> tc, false
      | false -> type_error e "typecheck_stmt SCall: unexpected function type"
    )
    | false -> type_error e "typecheck_stmt SCall: unexpected number of arguments"
  )
  | Ast.If (e_n, branch1, branch2) -> 
    ( match typecheck_exp tc e_n with
    | TBool ->
      let st_ty1 = typecheck_block tc branch1 to_ret in
      let st_ty2 = typecheck_block tc branch2 to_ret in
      ( match st_ty1, st_ty2 with
      | (tc,true), (tc1,true) -> (tc1, true)
      | _ -> (tc, false)
      )
    | _ -> type_error s "typecheck_stmt: expression must be of type bool"
    )
  | Ast.Cast(rty, id, exp, brach1, branch2) -> (
    let bool_of_id,possibly_null_exp_ty = Tctxt.lookup_local_option id tc,typecheck_exp tc exp in
    let exp_ty = match possibly_null_exp_ty with
    | TNullRef rty -> TRef rty
    | _ -> type_error exp "typecheck_stmt Cast: unexpected expression type in null check"
    in
    let id_ty = match rty with
    | RString -> TRef RString | RStruct sid -> TRef(RStruct sid)
    | RArray ty -> TRef(RArray ty) | RFun(tys, ret_ty) -> TRef(RFun(tys, ret_ty))
    in
    let boolsubtype_result,brach1_tc = subtype tc exp_ty id_ty,Tctxt.add_local tc id id_ty in
    let (_, brach1_returns), (_, branch2_returns) = (typecheck_block brach1_tc brach1 to_ret),(typecheck_block tc branch2 to_ret) in

    match bool_of_id, boolsubtype_result with
    | None, true ->  tc, brach1_returns && branch2_returns
    | Some _, _-> type_error s  "typecheck_stmt Cast: identifier  already defined in local context" 
    | _, false -> type_error exp "typecheck_stmt Cast: unexpected expression type in null check"
  )
  | Ast.Ret e_opt -> 
    (match e_opt with
    | Some ex -> 
      let typ_ex = typecheck_exp tc ex in
      ( match to_ret with
      | Ast.RetVal t1 -> (
        match subtype tc typ_ex t1 with
        | true -> tc, true
        | false -> type_error s  "typecheck_stmt Ret e_opt: mismatch between returned value and expected value by function" )
      | _ -> type_error s "typecheck_stmt Ret e_opt: expecting "
    )
      | None -> 
        ( match to_ret with
        | Ast.RetVal _ -> type_error s "typecheck_stmt Ret e_opt: return type mismatch"
        | _ -> (tc, true)
        )
    )
  | Ast.While (e_n, blk) -> 
    ( match typecheck_exp tc e_n with
    | TBool ->
      let _ = typecheck_block tc blk to_ret in
      (tc, false)
    | _ -> type_error s "typecheck_stmt While: expression must be of type bool"
    )
  | Ast.For (vd_lst, e_opt, stmt_opt, blk) -> 
    let (l2_ctxt, _) = 
      List.fold_left 
        (fun (ctxt,_) vd -> 
          typecheck_stmt ctxt (Ast.no_loc (Ast.Decl vd)) to_ret) (tc, false) vd_lst in
    let e_bool = ( match e_opt with
    | Some s1 -> typecheck_exp l2_ctxt s1
    | None -> Ast.TBool
     ) in
    (match e_bool with
    | Ast.TBool -> 
      let l3_ctxt = ( match stmt_opt with
      | Some s2 -> let c, _ = typecheck_stmt l2_ctxt s2 to_ret in c
      | None -> l2_ctxt
       ) in
      let _ = typecheck_block l3_ctxt blk to_ret in
      (tc, false)
    | _ -> type_error s "typecheck_stmt For: expression must be of type bool"
    )

and typecheck_block (tc : Tctxt.t) (block : Ast.block) (to_ret:ret_ty) : Tctxt.t * bool =
  match block with
  | [] -> tc, false
  | [s] -> typecheck_stmt tc s to_ret
  | s :: stmts -> (
    let new_c, returncond = typecheck_stmt tc s to_ret in
    match returncond with
    | false -> typecheck_block new_c stmts to_ret
    | true -> type_error s "typecheck_block: unexpected return behaviour of statement"
  )




(* struct type declarations ------------------------------------------------- *)
(* Here is an example of how to implement the TYP_TDECLOK rule, which is 
   is needed elswhere in the type system.
 *)

(* Helper function to look for duplicate field names *)
let rec check_dups fs =
  match fs with
  | [] -> false
  | h :: t -> (List.exists (fun x -> x.fieldName = h.fieldName) t) || check_dups t

let typecheck_tdecl (tc : Tctxt.t) id fs  (l : 'a Ast.node) : unit =
  if check_dups fs
  then type_error l ("Repeated fields in " ^ id) 
  else List.iter (fun f -> typecheck_ty l tc f.ftyp) fs

(* function declarations ---------------------------------------------------- *)
(* typecheck a function declaration 
    - extends the local context with the types of the formal parameters to the 
      function
    - typechecks the body of the function (passing in the expected return type
    - checks that the function actually returns
*)
let typecheck_fdecl (tc : Tctxt.t) (f : Ast.fdecl) (l : 'a Ast.node) : unit =
  let frtyp = f.frtyp in
  let args = f.args in
  let body = f.body in
  let new_tc = List.fold_left (fun acc (ty, id) -> Tctxt.add_local acc id ty) tc args in
  let _, returncond = typecheck_block new_tc body frtyp in
  match returncond with
  | true -> ()
  | false -> type_error l "typecheck_fdecl: last statement of the function body does not return" 


(* creating the typchecking context ----------------------------------------- *)

(* The following functions correspond to the
   judgments that create the global typechecking context.

   create_struct_ctxt: - adds all the struct types to the struct 'S'
   context (checking to see that there are no duplicate fields

     H |-s prog ==> H'


   create_function_ctxt: - adds the the function identifiers and their
   types to the 'G' context (ensuring that there are no redeclared
   function identifiers)

     H ; G1 |-f prog ==> G2


   create_global_ctxt: - typechecks the global initializers and adds
   their identifiers to the 'G' global context

     H ; G1 |-g prog ==> G2    


   NOTE: global initializers may mention function identifiers as
   constants, but can mention only other global values that were declared earlier
*)
let rec has_duplicates list proj =
  match list with
  | hd::tl -> List.exists (fun e -> proj e = proj hd) tl || has_duplicates tl proj
  | [] -> false

let rec check_fdecl_redeclare c fname =
  begin match Tctxt.lookup_global_option fname c with 
  | Some _ -> true
  | None -> false
  end

let rec typecheck_gexp (tc : Tctxt.t) (e : Ast.exp node) : Ast.ty =
  match e.elt with
  | CNull _ | CBool _ | CInt _ | CStr _ | CArr _  | Id _ -> typecheck_exp tc e 
  | CStruct (sid, fields) -> (
    let individual_field_type,init_individual_typ = (List.map (fun (fid, _) -> Tctxt.lookup_field sid fid tc) fields),(List.map (fun (_, init) -> typecheck_gexp tc init) fields) in
    let bool_of_field = List.fold_left2 (fun acc exp_ty ty  -> acc && subtype tc ty exp_ty) true individual_field_type init_individual_typ in
    match bool_of_field with
    | true -> TRef (RStruct sid)
    | false -> type_error e "typecheck_gexp: invalid field initializer"
  )
  | _ -> type_error e "typecheck_gexp: unexpected global initializer"
let create_struct_ctxt (p:Ast.prog) : Tctxt.t =
  List.fold_left (fun c decl ->
    match decl with
    | Gtdecl({elt=(id, fs)} as l) -> (
      let bool_of_field = not @@ has_duplicates fs (fun f -> f.fieldName) in
      match bool_of_field with
      | false -> type_error l "create_struct_ctxt: already declared struct with same name"
      | true -> (let a = Tctxt.lookup_struct_option id c in
        match a with
        | None -> Tctxt.add_struct c id fs
        | Some _ -> type_error l "create_struct_ctxt: duplicate fields in struct declaration"
      )
    )
    | _ -> c
  ) Tctxt.empty p

let create_function_ctxt (tc:Tctxt.t) (p:Ast.prog) : Tctxt.t =
  let builtins_context = 
    List.fold_left (fun c (id,(p_ty, rt_ty)) -> Tctxt.add_global c id (TRef(RFun(p_ty, rt_ty)))) tc builtins
  in
  List.fold_left (fun ctxt el ->
    match el with
    | Gfdecl ({elt=f} as l) -> 
      if check_fdecl_redeclare ctxt f.fname then 
        type_error l "create_function_ctxt: trying to redeclare a function"
      else 
        let arg_types = List.map (fun (t,i) -> t) f.args in
        Tctxt.add_global ctxt f.fname (TRef(RFun((arg_types,f.frtyp))))
    | _ -> ctxt) builtins_context p

let create_global_ctxt (tc:Tctxt.t) (p:Ast.prog) : Tctxt.t =
  List.fold_left(fun c decl ->
    match decl with
    | Gvdecl({elt={name;init}} as l) -> (
      let a = Tctxt.lookup_global_option name c in 
      match a with
      | None -> Tctxt.add_global c name (typecheck_gexp tc init)
      | Some ty -> type_error l"create_global_ctxt: already declared global with a different name" 
    ) 
    | _ -> c
  ) tc p



(* This function implements the |- prog and the H ; G |- prog 
   rules of the oat.pdf specification.   
*)
let typecheck_program (p:Ast.prog) : unit =
  let sc = create_struct_ctxt p in
  let fc = create_function_ctxt sc p in
  let tc = create_global_ctxt fc p in
  List.iter (fun p ->
    match p with
    | Gfdecl ({elt=f} as l) -> typecheck_fdecl tc f l
    | Gtdecl ({elt=(id, fs)} as l) -> typecheck_tdecl tc id fs l 
    | _ -> ()) p
