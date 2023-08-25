open Ll
open Datastructures

(* The lattice of symbolic constants ---------------------------------------- *)
module SymConst =
  struct
    type t = NonConst           (* Uid may take on multiple values at runtime *)
           | Const of int64     (* Uid will always evaluate to const i64 or i1 *)
           | UndefConst         (* Uid is not defined at the point *)

    let compare s t =
      match (s, t) with
      | (Const i, Const j) -> Int64.compare i j
      | (NonConst, NonConst) | (UndefConst, UndefConst) -> 0
      | (NonConst, _) | (_, UndefConst) -> 1
      | (UndefConst, _) | (_, NonConst) -> -1

    let to_string : t -> string = function
      | NonConst -> "NonConst"
      | Const i -> Printf.sprintf "Const (%LdL)" i
      | UndefConst -> "UndefConst"

    (* SOLN *)
    let combine_one c d =
      match c, d with
      | NonConst, _ | _, NonConst -> NonConst
      | Const i, Const j when Int64.compare i j == 0 -> Const i
      | Const _, Const _ -> NonConst
      | UndefConst, x | x, UndefConst -> x
    (* STUBWITH *)
  end

(* The analysis computes, at each program point, which UIDs in scope will evaluate 
   to integer constants *)
type fact = SymConst.t UidM.t

(* SOLN *)
let counter = ref 0
(* STUBWITH *)

(* flow function across Ll instructions ------------------------------------- *)
(* - Uid of a binop or icmp with const arguments is constant-out
   - Uid of a binop or icmp with an UndefConst argument is UndefConst-out
   - Uid of a binop or icmp with an NonConst argument is NonConst-out
   - Uid of stores and void calls are UndefConst-out
   - Uid of all other instructions are NonConst-out
 *)
let insn_flow (u,i:uid * insn) (d:fact) : fact =
  (* SOLN *)
  let open SymConst in

  let sym_bop b s t : SymConst.t =
    let open Int64 in
    match b, s, t with
    | _, NonConst, _ | _, _, NonConst  -> NonConst
    | _, UndefConst, _ | _, _, UndefConst  -> UndefConst
    | Add,  Const m, Const n -> Const (add m n)
    | Sub,  Const m, Const n -> Const (sub m n)
    | Mul,  Const m, Const n -> Const (mul m n)
    | Shl,  Const m, Const n -> Const (shift_left m (to_int n))
    | Lshr, Const m, Const n -> Const (shift_right_logical m (to_int n))
    | Ashr, Const m, Const n -> Const (shift_right m (to_int n))
    | And,  Const m, Const n -> Const (logand m n)
    | Or,   Const m, Const n -> Const (logor m n)
    | Xor,  Const m, Const n -> Const (logxor m n)
  in

  let sym_icmp (c:cnd) s t : SymConst.t =
    let open Int64 in
    let of_bool = function true -> 1L | false -> 0L in
    match c, s, t with
    | _, NonConst, _ | _, _, NonConst -> NonConst
    | _, UndefConst, _ | _, _, UndefConst -> UndefConst
    | Eq,  Const m, Const n -> Const (of_bool (compare m n == 0))
    | Ne,  Const m, Const n -> Const (of_bool (compare m n != 0))
    | Slt, Const m, Const n -> Const (of_bool (compare m n <  0))
    | Sle, Const m, Const n -> Const (of_bool (compare m n <= 0))
    | Sgt, Const m, Const n -> Const (of_bool (compare m n >  0))
    | Sge, Const m, Const n -> Const (of_bool (compare m n >= 0))
  in

  let sym_of_operand = function
    | Null | Gid _ -> NonConst
    | Const i      -> Const i
    | Id u         -> UidM.find_or UndefConst d u
  in

  let sym_exec (i:insn) (d:SymConst.t UidM.t) : SymConst.t =
    match i with
    | Binop (b, _, o1, o2) -> sym_bop b (sym_of_operand o1) (sym_of_operand o2)
    | Icmp (c, _, o1, o2)  -> sym_icmp c (sym_of_operand o1) (sym_of_operand o2)
    | Store _ | Call (Void, _, _) -> UndefConst
    | _ -> NonConst
  in

  UidM.update_or SymConst.UndefConst (SymConst.combine_one @@ sym_exec i d) u d
  (* STUBWITH failwith "Constprop.insn_flow unimplemented" *)

(* The flow function across terminators is trivial: they never change const info *)
let terminator_flow (t:terminator) (d:fact) : fact = d

(* module for instantiating the generic framework --------------------------- *)
module Fact =
  struct
    type t = fact
    let forwards = true

    let insn_flow = insn_flow
    let terminator_flow = terminator_flow
    
    let normalize : fact -> fact = 
      UidM.filter (fun _ v -> v != SymConst.UndefConst)

    let compare (d:fact) (e:fact) : int  = 
      UidM.compare SymConst.compare (normalize d) (normalize e)

    let to_string : fact -> string =
      UidM.to_string (fun _ v -> SymConst.to_string v)

    (* The constprop analysis should take the meet over predecessors to compute the
       flow into a node. You may find the UidM.merge function useful *)
    let combine (ds:fact list) : fact = 
      (* SOLN *)
      let combine_one d1 d2 =
        UidM.merge (fun k c1 c2 -> 
                    let f = function None -> SymConst.UndefConst | Some s -> s in
                    Some (SymConst.combine_one (f c1) (f c2))
                   ) d1 d2
      in
      List.fold_left combine_one UidM.empty ds
      (* STUBWITH failwith "Constprop.Fact.combine unimplemented" *)
  end

(* instantiate the general framework ---------------------------------------- *)
module Graph = Cfg.AsGraph (Fact)
module Solver = Solver.Make (Fact) (Graph)

(* expose a top-level analysis operation ------------------------------------ *)
let analyze (g:Cfg.t) : Graph.t =
  (* the analysis starts with every node set to bottom (the map of every uid 
     in the function to UndefConst *)
  let init l = UidM.empty in

  (* the flow into the entry node should indicate that any parameter to the
     function is not a constant *)
  let cp_in = List.fold_right 
    (fun (u,_) -> UidM.add u SymConst.NonConst)
    g.Cfg.args UidM.empty 
  in
  let fg = Graph.of_cfg init cp_in g in
  Solver.solve fg


(* run constant propagation on a cfg given analysis results ----------------- *)
(* HINT: your cp_block implementation will probably rely on several helper 
   functions.                                                                 *)
let run (cg:Graph.t) (cfg:Cfg.t) : Cfg.t =
  let open SymConst in
  (* SOLN *)

  let cp_op d o =
    match o with
    | Null | Const _ | Gid _ -> o
    | Id u -> match UidM.find_or UndefConst d u with
              | Const n -> incr counter; Ll.Const n
              | _ -> o
  in

  let cp_terminator cb (id, t) : uid * terminator =
    let f = cp_op (cb id) in
    match t with
    | Ret (t, Some o) -> id, Ret (t, Some (f o))
    | Cbr (o, k, l)   -> id, Cbr (f o, k, l)
    | Ret (_, None)
    | Br _            -> id, t
  in

  let cp_insn cb (u,i) = 
    let f = cp_op (cb u) in
    u, match i with
       | Alloca _          -> i
       | Binop (bop,t,o,p) -> Binop (bop,t,f o, f p)
       | Load (t,o)        -> Load (t, f o)
       | Store (t,o,p)     -> Store (t, f o, f p)
       | Icmp (cnd,t,o,p)  -> Icmp (cnd, t, f o, f p)
       | Call (t,o,args)   -> Call (t, f o, List.map (fun (t,o) -> t, f o) args)
       | Bitcast (s,o,t)   -> Bitcast (s, f o, t)
       | Gep (t,o,os)      -> Gep (t, f o, List.map f os)
  in
  counter := 0;
  (* STUBWITH *)

  let cp_block (l:Ll.lbl) (cfg:Cfg.t) : Cfg.t =
    let b = Cfg.block cfg l in
    let cb = Graph.uid_out cg l in
    (* SOLN *)
    let insns = List.map (cp_insn cb) b.insns in
    let term = cp_terminator cb b.term in
    Cfg.add_block l {insns; term} cfg
    (* STUBWITH failwith "Constprop.cp_block unimplemented" *)
  in

  LblS.fold cp_block (Cfg.nodes cfg) cfg
