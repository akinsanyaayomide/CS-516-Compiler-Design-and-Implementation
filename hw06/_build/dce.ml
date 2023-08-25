(** Dead Code Elimination  *)
open Ll
open Datastructures
(* SOLN *)
let removable : insn -> bool = function
  | Binop _ | Alloca _ | Bitcast _ | Gep _ | Load _ | Icmp _ -> true
  | Store _ | Call _ -> false
(* STUBWITH *)

(* expose a top-level analysis operation ------------------------------------ *)
(* TASK: This function should optimize a block by removing dead instructions
   - lb: a function from uids to the live-OUT set at the 
     corresponding program point
   - ab: the alias map flowing IN to each program point in the block
   - b: the current ll block

   Note: 
     Call instructions are never considered to be dead (they might produce
     side effects)

     Store instructions are not dead if the pointer written to is live _or_
     the pointer written to may be aliased.

     Other instructions are dead if the value they compute is not live.

   Hint: Consider using List.filter
 *)
let dce_block (lb:uid -> Liveness.Fact.t) 
              (ab:uid -> Alias.fact)
              (b:Ll.block) : Ll.block =
  (* SOLN *)
  let insns = List.filter
      (fun (u,i) -> 
         match i with
         | Store (_, _, Id v) ->
           UidS.mem v (lb @@ u) ||
           Alias.SymPtr.MayAlias == (UidM.find_or Alias.SymPtr.MayAlias (ab @@ u) v)
         | _ -> 
           UidS.mem u (lb @@ u) || not (removable i)
      ) b.insns in
  { b with insns }
(* STUBWITH failwith "Dce.dce_block unimplemented" *)

let run (lg:Liveness.Graph.t) (ag:Alias.Graph.t) (cfg:Cfg.t) : Cfg.t =

  LblS.fold (fun l cfg ->
    let b = Cfg.block cfg l in

    (* compute liveness at each program point for the block *)
    let lb = Liveness.Graph.uid_out lg l in

    (* compute aliases at each program point for the block *)
    let ab = Alias.Graph.uid_in ag l in 

    (* compute optimized block *)
    let b' = dce_block lb ab b in
    Cfg.add_block l b' cfg
  ) (Cfg.nodes cfg) cfg

