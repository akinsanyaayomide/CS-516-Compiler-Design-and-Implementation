(* ll ir compilation -------------------------------------------------------- *)

open Ll
open X86
open Asm
(* Overview ----------------------------------------------------------------- *)

(* We suggest that you spend some time understanding this entire file and 
   how it fits with the compiler pipeline before making changes.  The suggested
   plan for implementing the compiler is provided on the project web page. 
*)


(* helpers ------------------------------------------------------------------ *)

(* Map LL comparison operations to X86 condition codes *)
let compile_cnd = function
  | Ll.Eq  -> X86.Eq
  | Ll.Ne  -> X86.Neq
  | Ll.Slt -> X86.Lt
  | Ll.Sle -> X86.Le
  | Ll.Sgt -> X86.Gt
  | Ll.Sge -> X86.Ge



(* locals and layout -------------------------------------------------------- *)

(* One key problem in compiling the LLVM IR is how to map its local
   identifiers to X86 abstractions.  For the best performance, one
   would want to use an X86 register for each LLVM %uid.  However,
   since there are an unlimited jber of %uids and only 16 registers,
   doing so effectively is quite difficult.  We will see later in the
   course how _register allocation_ algorithms can do a good job at
   this.

   A simpler, but less performant, implementation is to map each %uid
   in the LLVM source to a _stack slot_ (i.e. a region of memory in
   the stack).  Since LLVMlite, unlike real LLVM, permits %uid locals
   to store only 64-bit data, each stack slot is an 8-byte value.

   [ NOTE: For compiling LLVMlite, even i1 data values should be
   represented as a 8-byte quad. This greatly simplifies code
   generation. ]

   We call the datastructure that maps each %uid to its stack slot a
   'stack layout'.  A stack layout maps a uid to an X86 operand for
   accessing its contents.  For this compilation strategy, the operand
   is always an offset from ebp (in bytes) that represents a storage slot in
   the stack.  
*)

type layout = (uid * X86.operand) list

(* A context contains the global type declarations (needed for getelementptr
   calculations) and a stack layout. *)
type ctxt = { tdecls : (tid * ty) list
            ; layout : layout
            }

(* useful for looking up items in tdecls or layouts *)
let lookup m x = List.assoc x m


(* compiling operands  ------------------------------------------------------ *)

(* LLVM IR instructions support several kinds of operands.

   LL local %uids live in stack slots, whereas global ids live at
   global addresses that must be computed from a label.  Constants are
   immediately available, and the operand Null is the 64-bit 0 value.

     NOTE: two important facts about global identifiers:

     (1) You should use (Platform.mangle gid) to obtain a string 
     suitable for naming a global label on your platform (OS X expects
     "_main" while linux expects "main").

     (2) 64-bit assembly labels are not allowed as immediate operands.
     That is, the X86 code: movq _gid %rax which looks like it should
     put the address denoted by _gid into %rax is not allowed.
     Instead, you need to compute an %rip-relative address using the
     leaq instruction:   leaq _gid(%rip).

   One strategy for compiling instruction operands is to use a
   designated register (or registers) for holding the values being
   manipulated by the LLVM IR instruction. You might find it useful to
   implement the following helper function, whose job is to generate
   the X86 instruction that moves an LLVM operand into a designated
   destination (usually a register).  
*)

let compile_operand ctxt dest : Ll.operand -> ins =
  fun (x: Ll.operand) -> begin match x with
      | Null -> Xorq, [dest;dest]
      | Const n -> (Movq, [Imm (Lit n); dest ])
      | Id i -> (Movq, [lookup ctxt.layout i; dest])
      | Gid g -> (Leaq, [(Ind3((Lbl (Platform.mangle g)), (Rip))); (dest)])
    end

let stack_offset n :operand = Ind3(Lit(Int64.of_int (8*n)), Rbp)
let arg_loc (n : int) : operand = match n with 
  |0 -> Reg Rdi |1-> Reg Rsi |2 -> Reg Rdx |3 ->Reg Rcx |4 -> Reg R08 |5 -> X86.Reg R09 
  |_ -> stack_offset (n-4)
  

(* compiling call  ---------------------------------------------------------- *)

(* You will probably find it helpful to implement a helper function that 
   generates code for the LLVM IR call instruction.

   The code you generate should follow the x64 System V AMD64 ABI
   calling conventions, which places the first six 64-bit (or smaller)
   values in registers and pushes the rest onto the stack.  Note that,
   since all LLVM IR operands are 64-bit values, the first six
   operands will always be placed in registers.  (See the notes about
   compiling fdecl below.)

   [ NOTE: It is the caller's responsibility to clean up arguments
   pushed onto the stack, so you must free the stack space after the
   call returns. ]

   [ NOTE: Don't forget to preserve caller-save registers (only if
   needed). ]
*)
let compile_call (ctxt :ctxt) f args =
  let call = ( match f with 
    |Gid(id) -> [Callq,[~$$(Platform.mangle id)]]
    |Id(id) -> compile_operand ctxt (Reg Rax) f :: [Callq, [Reg Rax]]
    |_ ->failwith "call: must be a valid local and global function"
    ) in 
  let handle_args = List.mapi (fun i (_, arg) -> 
    (compile_operand ctxt (Reg R09) arg) :: 
      if i < 6 then [Movq, [Reg R09; arg_loc i]]
      else [Pushq, [Reg R09]]
      ) args |>List.flatten in handle_args @ call @ 
      let stack_args = (List.length args) - 6 in 
      if stack_args > 0 then [Addq, [~$(8 * stack_args); Reg Rsp]] else [] 



(* compiling getelementptr (gep)  ------------------------------------------- *)

(* The getelementptr instruction computes an address by indexing into
   a datastructure, following a path of offsets.  It computes the
   address based on the size of the data, which is dictated by the
   data's type.

   To compile getelmentptr, you must generate x86 code that performs
   the appropriate arithemetic calculations.
*)

(* [size_ty] maps an LLVMlite type to a size in bytes. 
    (needed for getelementptr)

   - the size of a struct is the sum of the sizes of each component
   - the size of an array of t's with n elements is n * the size of t
   - all pointers, I1, and I64 are 8 bytes
   - the size of a named type is the size of its definition

   - Void, i8, and functions have undefined sizes according to LLVMlite.
     Your function should simply return 0 in those cases
*)
let rec size_ty tdecls t : int =
  let sum tdecl b_size e: int = b_size + (size_ty tdecl e) in
  let sumtotal = (sum tdecls) in ( match t with
    | Void -> 0
    | I1 -> 8
    | Ptr _  -> 8
    | I8 -> 0
    | I64 -> 8
    | Struct x -> List.fold_left sumtotal 0 x
    | Array (y, z) -> y * (size_ty tdecls z)
    | Fun _ -> 0
    | Namedt w -> size_ty tdecls (List.assoc w tdecls)
  )
let form_insl ctxt dest ll_op: ins list =
  (match ll_op with
   | Id i -> (Movq, [lookup ctxt.layout i; (~%R10)])::
             (compile_operand ctxt dest ll_op)::[]
   | _ -> (compile_operand ctxt dest ll_op)::[])



(* Generates code that computes a pointer value.  

   1. op must be of pointer type: t*

   2. the value of op is the base address of the calculation

   3. the first index in the path is treated as the index into an array
     of elements of type t located at the base address

   4. subsequent indices are interpreted according to the type t:

     - if t is a struct, the index must be a constant n and it 
       picks out the n'th element of the struct. [ NOTE: the offset
       within the struct of the n'th element is determined by the 
       sizes of the types of the previous elements ]

     - if t is an array, the index can be any operand, and its
       value determines the offset within the array.
 
     - if t is any other type, the path is invalid

   5. if the index is valid, the remainder of the path is computed as
      in (4), but relative to the type f the sub-element picked out
      by the path so far
*)

let conversion operand = (match operand with| Const x -> x  | _ -> Int64.zero )

let rec evaluate types args j ind ins = 
  if j = ind then ins else( let number_ins = 
    ins @ [(Addq, [(Imm (Lit (Int64.of_int (size_ty types (List.nth args ind)))));(~%R12)])] in
   (evaluate types args j (ind+1) number_ins))

let interp tdecls (t,i) j =
  ( match t with
  | Struct args -> 
          ((List.nth args (Int64.to_int j)), evaluate tdecls args (Int64.to_int j) 0 i)
  | Array (_, t) -> 
          (t, i @ 
          [(Addq, [(Imm (Lit (Int64.mul j (Int64.of_int (size_ty tdecls t)))));(~%R12)])]) 
  |  _ -> (Void, [])
  )
let compile_gep ctxt (op : Ll.ty * Ll.operand) (path: Ll.operand list) : ins list =
   (match op with
  | (Ptr p, o) -> let type1 = ( match p with| Namedt z -> lookup ctxt.tdecls z | _ -> p) in
          let calculate = (form_insl ctxt (~%R12) o) in
          let x = (match path with | (x::_) -> x | _ -> failwith "invalid operand") in
          let startpath = ( match path with | (x::y) -> y | _ -> [] ) in
          let add = (form_insl ctxt (~%R13) x) @ [Imulq ,
          [Imm(Lit (Int64.of_int  (size_ty ctxt.tdecls p)));(Reg R13)]] in
          let addmorereg = [Addq, [(~%R13);(~%R12)]] in 
          let final = List.map conversion startpath in
          let finalins = interp ctxt.tdecls in
          let (_, finallistins) = List.fold_left finalins (type1,[]) final in
          calculate @ add @ addmorereg @ finallistins

  | (_ , _) -> []
  )




(* compiling instructions  -------------------------------------------------- *)

(* The result of compiling a single LLVM instruction might be many x86
   instructions.  We have not determined the structure of this code
   for you. Some of the instructions require only a couple assembly
   instructions, while others require more.  We have suggested that
   you need at least compile_operand, compile_call, and compile_gep
   helpers; you may introduce more as you see fit.

   Here are a few notes:

   - Icmp:  the Set instruction may be of use.  Depending on how you
     compile Cbr, you may want to ensure that the value produced by
     Icmp is exactly 0 or 1.

   - Load & Store: these need to dereference the pointers. Const and
     Null operands aren't valid pointers.  Don't forget to
     Platform.mangle the global identifier.

   - Alloca: needs to return a pointer into the stack

   - Bitcast: does nothing interesting at the assembly level
*)

let compile_insn ctxt (uid, i) : X86.ins list =

  begin match i with
    | Binop(b, t, op1, op2) -> 
      (compile_operand ctxt (Reg R09) op1) ::
      (compile_operand ctxt (Reg Rcx) op2) ::
      let bop = (match b with 
        | Add -> Addq
        | Sub -> Subq 
        | Mul -> Imulq
        | Shl ->  Shlq
        | Lshr -> Shrq
        | Ashr -> Sarq
        | And -> Andq
        | Or -> Orq
        | Xor -> Xorq)
    in (bop,[Reg Rcx; Reg R09])::[Movq,[Reg R09; (lookup ctxt.layout uid)]]

    | Icmp (c,t,op1,op2) ->
      compile_operand ctxt (Reg R12) op1 ::
      compile_operand ctxt (Reg R13 )op2 ::
      [ Cmpq,[Reg R13; Reg R12];
        Set (compile_cnd c),[(lookup ctxt.layout uid)];
        Andq, [~$1;(lookup ctxt.layout uid)]]
      

    | Alloca ty ->  
      begin match ty with
        | I1 | Ptr _ | I64 -> 
          [(Subq, [(Imm (Lit (8L))); (Reg Rsp)])] @
          [(Movq, [Reg Rsp; (lookup ctxt.layout uid)])] 
        | _ -> []
      end

    | Load (ty, op) ->
      begin match op with
         
        | _  -> 
          (compile_operand ctxt (Reg R12) op) ::
          [(Movq, [Ind2 R12; (Reg R13)]);
          (Movq, [(Reg R13); (lookup ctxt.layout uid)])] 
      end

    | Store (ty, op1, op2) -> 
      (match op2 with 
      |Id _ ->
      (compile_operand ctxt (Reg Rax) op1) ::
      (compile_operand ctxt (Reg Rcx) op2) ::
      [(Movq, [(Reg Rax); (Ind2 Rcx)])]
      
      |Gid id -> compile_operand ctxt (Reg Rax) op1 ::
      [Movq,[Reg Rax; ~$$(Platform.mangle id)]]

      |_ -> failwith "Must be a pointer"
        )


    | Bitcast (t1, o, t2) ->
            (form_insl ctxt (Reg R12) o) @
            [(Movq, [(Reg R12); (lookup ctxt.layout uid)])] 
    
    | Gep (t, o, ol) -> (compile_gep ctxt (t,o) ol) @ 
            [(Movq, [(Reg R12); (lookup ctxt.layout uid)])] 

    | Call (ty, operand, args) -> 
            compile_call ctxt operand args @ 
            (match ty with 
            | Void -> []
            |_ -> [Movq, [Reg Rax ; (lookup ctxt.layout uid)]])
  end




(* compiling terminators  --------------------------------------------------- *)

(* Compile block terminators is not too difficult:

   - Ret should properly exit the function: freeing stack space,
     restoring the value of %rbp, and putting the return value (if
     any) in %rax.

   - Br should jump

   - Cbr branch should treat its operand as a boolean conditional
*)
let compile_terminator ctxt t =
  
  let (uid, terminator) = t in
  (match terminator with
    | Ret (_, value) -> (match value with 
        |Some (v) -> [compile_operand ctxt (Reg Rax) v]
        |_ -> [] ) @ [Movq, [Reg Rbp; Reg Rsp];
                      Popq, [Reg Rbp];
                      Retq, []
                      ]
    | Br (lbl) -> [Jmp,[~$$lbl]]
    | Cbr (op,true_br,false_br) ->
    (compile_operand ctxt (Reg Rcx) op) ::
      [
        Cmpq, [~$0; Reg Rcx];
        J Neq, [~$$(true_br)];
        Jmp,  [~$$(false_br)]
      ]
    | _ -> failwith "not a valid condition")

      


(* compiling blocks --------------------------------------------------------- *)

(* We have left this helper function here for you to complete. *)
let compile_block ctxt blk : ins list =
  List.fold_left (fun l ins -> l @ 
  compile_insn ctxt ins) [] blk.insns @ 
  compile_terminator ctxt blk.term
let compile_lbl_block lbl ctxt blk : elem =
  Asm.text lbl (compile_block ctxt blk)



(* compile_fdecl ------------------------------------------------------------ *)


(* This helper function computes the location of the nth incoming
   function argument: either in a register or relative to %rbp,
   according to the calling conventions.  You might find it useful for
   compile_fdecl.

   [ NOTE: the first six arguments are jbered 0 .. 5 ]
*)
let arg_loc (n : int) : operand = match n with 
|0 -> Reg Rdi |1-> Reg Rsi |2 -> Reg Rdx |3 ->Reg Rcx |4 -> Reg R08 |5 -> X86.Reg R09 
|_ -> Ind3 (Lit (Int64.of_int ((n-4) *8)), Rbp)

(* We suggest that you create a helper function that computes the 
   stack layout for a given function declaration.

   - each function argument should be copied into a stack slot
   - in this (inefficient) compilation strategy, each local id 
     is also stored as a stack slot.
   - see the discusion about locals 

*)
let block_uids (blocks:block list) :string list =
  List.fold_left (fun l b -> l @ List.map fst b.insns) [] blocks
let stack_layout args (block, lbled_blocks) : layout =
  let uids = block_uids (block::(List.map snd lbled_blocks)) in
  List.mapi (fun i arg -> (arg, (stack_offset (-i-1)))) (args @ uids)
(* The code for the entry-point of a function must do several things:

   - since our simple compiler maps local %uids to stack slots,
     compiling the control-flow-graph body of an fdecl requires us to
     compute the layout (see the discussion of locals and layout)

   - the function code should also comply with the calling
     conventions, typically by moving arguments out of the parameter
     registers (or stack slots) into local storage space.  For our
     simple compilation strategy, that local storage space should be
     in the stack. (So the function parameters can also be accounted
     for in the layout.)

   - the function entry code should allocate the stack storage needed
     to hold all of the local stack slots.
*)
let compile_fdecl tdecls name { f_ty; f_param; f_cfg } =
  let layout = stack_layout f_param f_cfg in 
  let layout_size = 8 * List.length layout in 
  let setup_args = List.mapi (fun i arg -> 
    [Movq,[arg_loc i; Reg R09]; 
    Movq, [Reg R09; lookup layout arg]]) f_param |> List.flatten in  
  let ctx = {tdecls; layout;} in 
  let (entry, blocks) = f_cfg in 
  [gtext (Platform.mangle name) (
      (* Allocate slots on the stack for parameters *)
      [Pushq, [Reg Rbp];
      Movq, [Reg Rsp; Reg Rbp];
      Subq, [~$layout_size; Reg Rsp]] @ 
  
      setup_args @
      (* Compile entry block, terminator handled by block *)
      compile_block ctx entry )] @ 
      (* Compile remaining labelled blocks *)
      List.map (fun (lbl,b) -> compile_lbl_block lbl ctx b) blocks
  


(* compile_gdecl ------------------------------------------------------------ *)
(* Compile a global value into an X86 global data declaration and map
   a global uid to its associated X86 label.
*)
let rec compile_ginit = function
  | GNull     -> [Quad (Lit 0L)]
  | GGid gid  -> [Quad (Lbl (Platform.mangle gid))]
  | GInt c    -> [Quad (Lit c)]
  | GString s -> [Asciz s]
  | GArray gs | GStruct gs -> List.map compile_gdecl gs |> List.flatten

and compile_gdecl (_, g) = compile_ginit g


(* compile_prog ------------------------------------------------------------- *)
let compile_prog {tdecls; gdecls; fdecls} : X86.prog =
  let g = fun (lbl, gdecl) -> Asm.data (Platform.mangle lbl) (compile_gdecl gdecl) in
  let f = fun (name, fdecl) -> compile_fdecl tdecls name fdecl in
  (List.map g gdecls) @ (List.map f fdecls |> List.flatten)

 (* I worked with Adam Papenhausen on this project
 Adam helped me out with understanding and implementing the compile_fdecl and compile_call

 He also helped to provide insights on how to bettter refactor my code when implementing the compile_insns and compile_block
 *) 