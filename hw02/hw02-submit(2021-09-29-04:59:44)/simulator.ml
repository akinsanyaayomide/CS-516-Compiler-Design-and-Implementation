(* X86lite Simulator *)

(* See the documentation in the X86lite specification, available on the 
   course web pages, for a detailed explanation of the instruction
   semantics.
*)

open X86

(* simulator machine state -------------------------------------------------- *)

let mem_bot = 0x400000L          (* lowest valid address *)
let mem_top = 0x410000L          (* one past the last byte in memory *)
let mem_size = Int64.to_int (Int64.sub mem_top mem_bot)
let nregs = 17                   (* including Rip *)
let ins_size = 8L                (* assume we have a 8-byte encoding *)
let exit_addr = 0xfdeadL         (* halt when m.regs(%rip) = exit_addr *)

(* Your simulator should raise this exception if it tries to read from or
   store to an address not within the valid address space. *)
exception X86lite_segfault

(* The simulator memory maps addresses to symbolic bytes.  Symbolic
   bytes are either actual data indicated by the Byte constructor or
   'symbolic instructions' that take up four bytes for the purposes of
   layout.

   The symbolic bytes abstract away from the details of how
   instructions are represented in memory.  Each instruction takes
   exactly eight consecutive bytes, where the first byte InsB0 stores
   the actual instruction, and the next sevent bytes are InsFrag
   elements, which aren't valid data.

   For example, the two-instruction sequence:
        at&t syntax             ocaml syntax
      movq %rdi, (%rsp)       Movq,  [~%Rdi; Ind2 Rsp]
      decq %rdi               Decq,  [~%Rdi]

   is represented by the following elements of the mem array (starting
   at address 0x400000):

       0x400000 :  InsB0 (Movq,  [~%Rdi; Ind2 Rsp])
       0x400001 :  InsFrag
       0x400002 :  InsFrag
       0x400003 :  InsFrag
       0x400004 :  InsFrag
       0x400005 :  InsFrag
       0x400006 :  InsFrag
       0x400007 :  InsFrag
       0x400008 :  InsB0 (Decq,  [~%Rdi])
       0x40000A :  InsFrag
       0x40000B :  InsFrag
       0x40000C :  InsFrag
       0x40000D :  InsFrag
       0x40000E :  InsFrag
       0x40000F :  InsFrag
       0x400010 :  InsFrag
*)
type sbyte = InsB0 of ins       (* 1st byte of an instruction *)
           | InsFrag            (* 2nd - 7th bytes of an instruction *)
           | Byte of char       (* non-instruction byte *)

(* memory maps addresses to symbolic bytes *)
type mem = sbyte array

(* Flags for condition codes *)
type flags = { mutable fo : bool
             ; mutable fs : bool
             ; mutable fz : bool
             }

(* Register files *)
type regs = int64 array

(* Complete machine state *)
type mach = { flags : flags
            ; regs : regs
            ; mem : mem
            }

(* simulator helper functions ----------------------------------------------- *)

(* The index of a register in the regs array *)
let rind : reg -> int = function
  | Rip -> 16
  | Rax -> 0  | Rbx -> 1  | Rcx -> 2  | Rdx -> 3
  | Rsi -> 4  | Rdi -> 5  | Rbp -> 6  | Rsp -> 7
  | R08 -> 8  | R09 -> 9  | R10 -> 10 | R11 -> 11
  | R12 -> 12 | R13 -> 13 | R14 -> 14 | R15 -> 15

(* Helper functions for reading/writing sbytes *)

(* Convert an int64 to its sbyte representation *)
let sbytes_of_int64 (i:int64) : sbyte list =
  let open Char in 
  let open Int64 in
  List.map (fun n -> Byte (shift_right i n |> logand 0xffL |> to_int |> chr))
           [0; 8; 16; 24; 32; 40; 48; 56]

(* Convert an sbyte representation to an int64 *)
let int64_of_sbytes (bs:sbyte list) : int64 =
  let open Char in
  let open Int64 in
  let f b i = match b with
    | Byte c -> logor (shift_left i 8) (c |> code |> of_int)
    | _ -> 0L
  in
  List.fold_right f bs 0L

(* Convert a string to its sbyte representation *)
let sbytes_of_string (s:string) : sbyte list =
  let rec loop acc = function
    | i when i < 0 -> acc
    | i -> loop (Byte s.[i]::acc) (pred i)
  in
  loop [Byte '\x00'] @@ String.length s - 1

(* Serialize an instruction to sbytes *)
let sbytes_of_ins (op, args:ins) : sbyte list =
  let check = function
    | Imm (Lbl _) | Ind1 (Lbl _) | Ind3 (Lbl _, _) -> 
      invalid_arg "sbytes_of_ins: tried to serialize a label!"
    | o -> ()
  in
  List.iter check args;
  [InsB0 (op, args); InsFrag; InsFrag; InsFrag; InsFrag; InsFrag; InsFrag; InsFrag]

(* Serialize a data element to sbytes *)
let sbytes_of_data : data -> sbyte list = function
  | Quad (Lit i) -> sbytes_of_int64 i
  | Asciz s -> sbytes_of_string s
  | Quad (Lbl _) -> invalid_arg "sbytes_of_data: tried to serialize a label!"


(* It might be useful to toggle printing of intermediate states of your 
   simulator. *)
let debug_simulator = ref false

(* Interpret a condition code with respect to the given flags. *)
let interp_cnd {fo; fs; fz} : cnd -> bool = fun x -> 
    match x with 
    |Eq -> fz
    |Neq -> not fz
    |Gt -> not ((fs && not fo) || (not fs && fo) || fz)
    |Ge ->not ((fs && not fo) || (not fs && fo)) 
    |Lt -> (fs && not fo) || (not fs && fo)
    |Le ->(fs <> fo) || fz





(* Maps an X86lite address into Some OCaml array index,
   or None if the address is not within the legal address space. *)
    let map_addr (addr:quad) : int option = 
      if ((Int64.compare addr mem_bot >= 0) && (Int64.compare addr mem_top < 0))
        then 
          Some (Int64.to_int(Int64.sub addr mem_bot))
      else
        None
    
    (* Simulates one step of the machine:
        - fetch the instruction at %rip
        - compute the source and/or destination information from the operands
        - simulate the instruction semantics
        - update the registers and/or memory appropriately
        - set the condition flags
    *)
    let fetch_memory_data (q:int64) (m:mach): int64 = 
        let array_number_int = match (map_addr q) with 
        |Some x -> x 
        |None -> raise X86lite_segfault in 
        let output_data = int64_of_sbytes [m.mem.(array_number_int+0); m.mem.(array_number_int+1);
         m.mem.(array_number_int+2); m.mem.(array_number_int+3); 
         m.mem.(array_number_int+4); m.mem.(array_number_int+5); 
         m.mem.(array_number_int+6); m.mem.(array_number_int+7)] in output_data
         
    let find_indirect_address (x: operand list) (m:mach) (index:int): int64 =
        match (List.nth x index) with 
        | Ind1 a -> (match a with |Lit b ->b |Lbl c -> failwith "unresolved label")
        | Ind2 y -> m.regs.(rind y)
        | Ind3 (a,b) -> (match a with 
                            |Lit c -> Int64.add m.regs.(rind b) c
                            |Lbl d -> failwith "unresolved label" )
        | _ -> failwith "invalid operand type"                    
    let store_data_in_memory_2 (q:int64) (data:int64) (m:mach): unit =
        let array_number_int = match (map_addr q) with 
          |Some x -> x 
          |None -> raise X86lite_segfault in 
          
          let input_data = sbytes_of_int64 data in 
          (m.mem.(array_number_int+0) <- List.nth input_data 0;
          m.mem.(array_number_int+1) <- List.nth input_data 1;
          m.mem.(array_number_int+2) <- List.nth input_data 2;
          m.mem.(array_number_int+3) <- List.nth input_data 3;
          m.mem.(array_number_int+4) <- List.nth input_data 4;
          m.mem.(array_number_int+5) <- List.nth input_data 5;
          m.mem.(array_number_int+6) <- List.nth input_data 6;
          m.mem.(array_number_int+7) <- List.nth input_data 7)
        
    let store_data_in_memory (x:operand list) (m:mach) (index:int) (data:int64): unit =
      match (List.nth x index) with 
        |Reg a -> m.regs.(rind a) <- data
        |Ind1 b -> let addr = find_indirect_address x m index in 
                              store_data_in_memory_2 addr data m 
        |Ind2 c -> let addr = find_indirect_address x m index in 
                              store_data_in_memory_2 addr data m
        |Ind3 (d,e) -> let addr = find_indirect_address x m index in 
                              store_data_in_memory_2 addr data m
        |Imm f -> failwith "invalid memory location"
    
    let con_flags (result:int64) (m:mach):unit = 
      (m.flags.fs <- (Int64.shift_right_logical result 63) = Int64.one;
      m.flags.fz <- result = Int64.zero);
      print_endline ("Cnd");
      print_endline (string_of_bool m.flags.fz)
    
    let set_con_flags (result:Int64_overflow.t) (m:mach): unit =
      (m.flags.fo <- result.Int64_overflow.overflow;
      con_flags result.Int64_overflow.value m)
    
    let move_single_bit (m:mach) (x:operand list) (index:int) (data:int64): unit = 
      ( match (List.nth x index) with
      
        |Ind1 _ |Ind2 _ |Ind3 _ -> let address = find_indirect_address x m index in 
          let array_number_int = begin match (map_addr address) with 
          Some a -> a |None -> raise X86lite_segfault end in 
          let input_bit = sbytes_of_int64 data in 
            m.mem.(array_number_int+0) <- List.nth input_bit 0
    
        |Reg b -> 
        m.regs.(rind b) <- Int64.logor(Int64.shift_left(Int64.shift_right_logical m.regs.(rind b) 8) 8) data
        
        |_ -> failwith "Invalid operand value" )
    
    let intepret_operand (x:operand list) (m:mach) (index:int):int64 = 
      (match (List.nth x index) with 
        |Imm a -> (match a with |Lit k ->k |Lbl h -> failwith "unresolved label") 
        |Reg b -> m.regs.(rind b)
        |Ind1 c -> let g = find_indirect_address x m index in fetch_memory_data g m
        |Ind2 d -> let g = find_indirect_address x m index in fetch_memory_data g m
        |Ind3 (e,f) -> let g = find_indirect_address x m index in fetch_memory_data g m )
        
    let opcode_Arithemetic_instructions (code:opcode) (x:operand list) (m:mach):unit = 
      (match code with 
      |Negq -> let dest = intepret_operand x m 0 in 
                let result = Int64_overflow.neg dest in 
                (store_data_in_memory x m 0 result.Int64_overflow.value;
                set_con_flags result m; 
                if dest = Int64.min_int then m.flags.fo <- true )
    
      |Addq -> let dest = intepret_operand x m 1 in
                let source = intepret_operand x m 0 in 
                let result = Int64_overflow.add dest source in 
                store_data_in_memory x m 1 result.Int64_overflow.value;
                set_con_flags result m ;
                print_endline("addq")
    
      |Subq -> let dest = intepret_operand x m 1 in
                let source = intepret_operand x m 0 in 
                let result = Int64_overflow.sub dest source in 
    
                print_endline ("subq");
                print_endline (Int64.to_string (source));
                print_endline (Int64.to_string (dest));
                print_endline (Int64.to_string (result.Int64_overflow.value));
    
                (store_data_in_memory x m 1 result.Int64_overflow.value;
                set_con_flags result m ; 
                if source = Int64.min_int then m.flags.fo <- true )
    
      |Imulq -> let dest = intepret_operand x m 1 in
                let source = intepret_operand x m 0 in 
                let result = Int64_overflow.mul dest source in 
                (store_data_in_memory x m 1 result.Int64_overflow.value;
                set_con_flags result m );
                print_endline("imulq")
    
      |Decq ->  let source = intepret_operand x m 0 in 
                let  result = Int64_overflow.pred source in 
                (store_data_in_memory x m 0 result.Int64_overflow.value;
                set_con_flags result m ;
                if source = Int64.min_int then m.flags.fo <- true);
                print_endline("Decq") 
                
    
    
      |Incq -> let source = intepret_operand x m 0 in 
                let  result = Int64_overflow.succ source in 
                store_data_in_memory x m 0 result.Int64_overflow.value;
                set_con_flags result m ;
    
      |_ -> ())
    
    let opcode_Logic_instructions (code:opcode) (x:operand list) (m:mach):unit = 
    (  match code with 
    
      |Notq -> let dest = intepret_operand x m 0 in 
                let result = Int64.lognot dest in 
                store_data_in_memory x m 0 result 
    
      |Andq -> let dest = intepret_operand x m 1 in 
                let source = intepret_operand x m 0 in 
                let result = Int64.logand dest source in 
                (store_data_in_memory x m 1 result;
                con_flags result m; 
                m.flags.fo <- false)
        
      |Orq -> let dest = intepret_operand x m 1 in 
                let source = intepret_operand x m 0 in 
                let result = Int64.logor dest source in 
                (store_data_in_memory x m 1 result; 
                con_flags result m; 
                m.flags.fo <- false)
    
      |Xorq -> let dest = intepret_operand x m 1 in 
                let source = intepret_operand x m 0 in 
                let result = Int64.logxor dest source in 
                store_data_in_memory x m 1 result; 
                con_flags result m; 
                m.flags.fo <- false ;
    
      |_ -> ())          
    
    let opcode_Bit_Manipulation_instructions (code:opcode) (x:operand list) (m:mach):unit = 
      (match code with 
    
     |Sarq -> let amt = Int64.to_int (intepret_operand x m 0) in 
                let dest = intepret_operand x m 1 in 
                let result = Int64.shift_right dest amt in 
                store_data_in_memory x m 1 result;
                if amt = 0 then () else con_flags result m; 
                if amt = 1 then m.flags.fo <- false else ()
    
    |Shlq ->  let amt = Int64.to_int (intepret_operand x m 0) in 
                let dest = intepret_operand x m 1 in 
                let result = Int64.shift_left dest amt in 
                store_data_in_memory x m 1 result;
                if amt = 0 then () else con_flags result m ;
                if amt = 1 && Int64.shift_right_logical dest 63 <> 
                  (Int64.logand(Int64.shift_right_logical dest 62) 1L)
                then m.flags.fo <- true 
                else ()
    
              
    
     |Shrq -> let amt = Int64.to_int (intepret_operand x m 0) in 
              let dest = intepret_operand x m 1 in 
              let result = Int64.shift_right_logical dest amt in 
                store_data_in_memory x m 1 result;
                if amt = 0 then () else con_flags result m ;
                if amt = 1 then m.flags.fo <- Int64.shift_right_logical dest 63 = Int64.one 
                else ();
    
      
      |Set con_code ->  let y = {fo = m.flags.fo; fs = m.flags.fs; fz = m.flags.fz} in 
                          if interp_cnd y con_code 
                            then move_single_bit m x 0 Int64.one
                        else move_single_bit m x 0 Int64.zero;
    
      |_ -> ())                  
    
    let push (x: operand list) (m:mach): unit = 
               (m.regs.(rind Rsp) <- Int64.sub m.regs.(rind Rsp) 8L;
                let source = intepret_operand x m 0 in 
                let new_x = [ Ind2 Rsp] in store_data_in_memory new_x m 0 source;)
    
    let pop (x: operand list) (m:mach): unit = 
                let new_x = [Ind2 Rsp] in
                let result = intepret_operand new_x m 0 in 
                store_data_in_memory x m 0 result;
                m.regs.(rind Rsp) <- Int64.add m.regs.(rind Rsp) 8L
    
      
    let opcode_Data_Movement_instructions (code:opcode) (x:operand list) (m:mach):unit = 
      (match code with  
      
      |Leaq -> let source = intepret_operand x m 0 in 
                store_data_in_memory x m 1 source
      |Movq -> let source = intepret_operand x m 0 in 
                store_data_in_memory x m 1 source;
                print_endline("Movq");
      |Pushq -> push x m
      |Popq -> pop x m;
      |_ -> ())
    
    let opcode_flow_instructions (code:opcode) (x:operand list) (m: mach):unit =
      (match code with 
    
      |J cc -> print_endline("J false");
    
        if interp_cnd {fo = m.flags.fo; fs = m.flags.fs; fz = m.flags.fz} cc
        then (m.regs.(rind Rip) <- intepret_operand x m 0;       
        print_endline("J true"))
        else (m.regs.(rind Rip) <- 
        Int64.add m.regs.(rind Rip) 8L;       
        print_endline("J false"))
    
      
      |Cmpq -> print_endline("J false");
        let source_1 = intepret_operand x m 0 in 
                let source_2 = intepret_operand x m 1 in 
                let result = Int64_overflow.sub source_2 source_1 in 
    
                print_endline ("cmpq");
          print_endline (Int64.to_string (source_1));
          print_endline (Int64.to_string (source_2));
          print_endline (Int64.to_string (result.Int64_overflow.value));
    
                set_con_flags result m ;
                if source_1 = Int64.min_int 
                  then m.flags.fo <- true 
                
      |Jmp -> print_endline("J false");
    
        let source = intepret_operand x m 0 in 
                  m.regs.(rind Rip) <- source
      
      |Callq -> m.regs.(rind Rip) <- Int64.add m.regs.(rind Rip) 8L;
                push [Reg Rip] m;
                print_endline("callq");
          print_endline(Int64.to_string m.regs.(rind Rip));
                m.regs.(rind Rip) <- intepret_operand x m 0;
                print_endline(Int64.to_string m.regs.(rind Rip))
      |Retq -> pop [ Reg Rip] m;
      print_endline("retq");
      print_endline(Int64.to_string m.regs.(rind Rip));
    
      |_ -> ())        
    
    let interpret_instruction (instruction:ins) (m:mach):unit  = 
    (match instruction with 
          |(code,x) ->
              ( match code with 
              |Negq |Addq |Subq |Imulq |Incq |Decq -> opcode_Arithemetic_instructions code x m;
              m.regs.(rind Rip) <- Int64.add m.regs.(rind Rip) 8L
              |Notq |Andq |Orq |Xorq -> opcode_Logic_instructions code x m;
              m.regs.(rind Rip) <- Int64.add m.regs.(rind Rip) 8L
              |Sarq |Shlq |Shrq |Set _ -> opcode_Bit_Manipulation_instructions code x m;
              m.regs.(rind Rip) <- Int64.add m.regs.(rind Rip) 8L
              |Leaq |Movq |Pushq |Popq -> opcode_Data_Movement_instructions code x m;
              m.regs.(rind Rip) <- Int64.add m.regs.(rind Rip) 8L
              |Cmpq |Jmp |Callq |Retq |J _  -> opcode_flow_instructions code x m ))
    
    let instruction_update (byte:sbyte) (m:mach): unit =
      (match byte with 
      |InsB0 ins -> interpret_instruction ins m 
      |InsFrag -> m.regs.(rind Rip) <- Int64.add m.regs.(rind Rip) Int64.one 
      |Byte a -> m.regs.(rind Rip) <- Int64.add m.regs.(rind Rip) Int64.one;)
    
    
    let step (m:mach) : unit = 
       (let first_innstruction = m.regs.(rind Rip) in 
       let address_int = match (map_addr first_innstruction) with 
        |Some n -> n 
        |None -> failwith " Invalid Address" in 
    instruction_update m.mem.(address_int) m;)
          
            
            
            
(* Runs the machine until the rip register reaches a designated
   memory address. *)
let run (m:mach) : int64 = 
  (while m.regs.(rind Rip) <> exit_addr do step m done;
  m.regs.(rind Rax))

(* assembling and linking --------------------------------------------------- *)

(* A representation of the executable *)
type exec = { entry    : quad             (* address of the entry point *)
            ; text_pos : quad              (* starting address of the code *)
            ; data_pos : quad             (* starting address of the data *)
            ; text_seg : sbyte list        (* contents of the text segment *)
            ; data_seg : sbyte list        (* contents of the data segment *)
            }

(* Assemble should raise this when a label is used but not defined *)
exception Undefined_sym of lbl

(* Assemble should raise this when a label is defined more than once *)
exception Redefined_sym of lbl

(* Convert an X86 program into an object file:
   - separate the text and data segments
   - compute the size of each segment
      Note: the size of an Asciz string section is (1 + the string length)

   - resolve the labels to concrete addresses and 'patch' the instructions to 
     replace Lbl values with the corresponding Imm values.

   - the text segment starts at the lowest address
   - the data segment starts after the text segment

  HINT: List.fold_left and List.fold_right are your friends.
  *)
type symbol_table = (lbl * quad)

let rec identify_label (x : symbol_table list) (segment : int) (l : lbl) : int64 =
  match x with
  | [] -> if segment = 0 then (-1L) else raise (Undefined_sym l) 
  | (y, z) :: tl -> if y = l then z else identify_label tl segment l    

let size_of_data (initial_size:int64) (data_accum: int64) (d:data):int64 = match d with 
    |Asciz x -> Int64.add (Int64.add data_accum 1L) (Int64.of_int (String.length x))
    |Quad (Lit y) -> Int64.add (data_accum) 8L 
    |_ -> initial_size 

let fetch_size_of_text_data (segment:int) (initial_size:int64) (e:elem):int64 = 
  match (segment, e.asm) with 
  |(0, Text ins_l) -> Int64.add initial_size (Int64.of_int ((List.length ins_l) * 8))
  |(1, Data d_l) -> Int64.add initial_size (List.fold_left (size_of_data initial_size ) 0L d_l)
  |(_,_) -> initial_size

let resolve_label (segment:int) (x,lowest_addr) (e:elem) : ((symbol_table list) * int64) = 
  match (segment,e.asm) with 
  |(0, Text ins_l) -> let updated_address = Int64.add lowest_addr (Int64.of_int ((List.length ins_l) * 8)) in 
                      let label_address = identify_label x 0 e.lbl in 
                      if label_address = (-1L) then ((x @ [(e.lbl),lowest_addr]),updated_address)
                      else raise (Redefined_sym e.lbl) 

  |(1, Data d_l) ->  let updated_address = Int64.add lowest_addr (List.fold_left (size_of_data lowest_addr ) 0L d_l) in 
                      let label_address = identify_label x 0 e.lbl in 
                      if label_address = (-1L) then ((x @ [(e.lbl),lowest_addr]),updated_address)
                      else raise (Redefined_sym e.lbl) 

  |(_,_) -> (x,lowest_addr)

let rec operands_replacement (x1:operand list) (x2: symbol_table list) : operand list = 
  match x1 with 
  |[] -> []
  |Ind1 (Lbl l) :: tl -> [Ind1 (Lit (identify_label x2 1 l))] @ operands_replacement tl x2 
  |Imm (Lbl l) :: tl ->  [Imm (Lit (identify_label x2 1 l))] @ operands_replacement tl x2
  |Ind3 ((Lbl l), reg):: tl -> [Ind3 ((Lit (identify_label x2 1 l)), reg)] @ operands_replacement tl x2
  |h::tl -> [h] @ operands_replacement tl x2 

let rec operand_list_to_sbytes (x:symbol_table list) (byte_l:sbyte list) (instruction:ins): sbyte list = 
  match  instruction with 
  | (code,x1) -> byte_l @ (sbytes_of_ins(code,(operands_replacement x1 x)))

let data_list_to_sbytes (x: symbol_table list) (byte_l: sbyte list) (d:data): sbyte list = 
  match d with 
  |Quad (Lit y) -> byte_l @ (sbytes_of_data d)
  |Quad (Lbl l) -> byte_l @ (sbytes_of_data (Quad (Lit (identify_label x 1 l))))
  |Asciz z -> byte_l @ (sbytes_of_data d) 

let final_sybte_conversion (segment :int) (x:symbol_table list) (sbyte_l:sbyte list) (e:elem) :sbyte list = 
  let final_replace = operand_list_to_sbytes x in 
  let final_data = data_list_to_sbytes x in match (segment,(e.asm)) with 
  |(0,Text ins_l) -> sbyte_l @ (List.fold_left final_replace [] ins_l)
  |(1, Data d_l) -> sbyte_l @ (List.fold_left final_data [] d_l) 
  |(_,_) -> sbyte_l 
  


let assemble (p:prog) : exec =
let size_of_text = List.fold_left (fetch_size_of_text_data 0) 0L p in 
let (label_t, address_t) = List.fold_left (resolve_label 0) ([],0x400000L) p in 
let (label_d, address_d) = List.fold_left (resolve_label 1) (label_t,address_t) p in 
let start_point = identify_label label_t  1 "main"  in 
let sbyte_text_start = List.fold_left (final_sybte_conversion 0 label_d) [] p in 
let sbyte_data_start = List.fold_left (final_sybte_conversion 1 label_d) [] p in 
{entry = start_point
; text_pos = 0x400000L
; data_pos = Int64.add 0x400000L size_of_text
; text_seg = sbyte_text_start
;data_seg = sbyte_data_start
;}



(* Convert an object file into an executable machine state. 
    - allocate the mem array
    - set up the memory state by writing the symbolic bytes to the 
      appropriate locations 
    - create the inital register state
      - initialize rip to the entry point address
      - initializes rsp to the last word in memory 
      - the other registers are initialized to 0
    - the condition code flags start as 'false'

  Hint: The Array.make, Array.blit, and Array.of_list library functions 
  may be of use.
*)
let load {entry=entry; text_pos=text_pos; data_pos=data_pos; text_seg=text_seg; data_seg=data_seg} : mach = 

let text_seg_of_memory = Array.of_list text_seg in 
let data_seg_of_memory = Array.of_list data_seg in 
let initial_memory = Array.make 0xFFF8 InsFrag in 
let text_and_data = Array.append text_seg_of_memory data_seg_of_memory in 
Array.blit text_and_data 0 initial_memory 0 (Array.length text_and_data); 
let sbyte_of_exit_address = Array.of_list(sbytes_of_int64 exit_addr) in 
let final_memory = Array.append initial_memory sbyte_of_exit_address in 
let initial_flags = {fo =false; fs=false; fz=false} in 
let initial_registers = Array.make 17 0L in 
(initial_registers.(rind Rip) <- entry;
initial_registers.(rind Rsp) <- Int64.sub mem_top 8L;
{flags=initial_flags; regs=initial_registers; mem=final_memory})
