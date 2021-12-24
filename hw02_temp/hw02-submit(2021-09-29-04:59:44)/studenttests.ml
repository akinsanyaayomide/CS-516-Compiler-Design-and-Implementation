open Assert
open X86
open Simulator

(* These tests are provided by you -- they will be graded manually *)

(* You should also add additional test cases here to help you   *)
(* debug your program.                                          *)


let provided_tests : suite = [
  Test ("Student-Provided Big Test for Part III: Score recorded as PartIIITestCase", [
  ]);

  let gcd_program a b : prog =
    [ text "main"
        [ Movq,  [~$a; ~%Rax]
        ; Movq,  [~$b; ~%Rbx]
        ; Callq, [~$$"gcd"]
        ; Retq, []
        ]
    ; text "gcd"
        [ Cmpq,  [~$0; ~%Rbx]
        ; J Le,  [~$$"return"]
        ; Pushq, [~%Rbx]
        ; Callq, [~$$"mod"]
        ; Movq,  [~%Rax; ~%Rbx]
        ; Popq,  [~%Rax]
        ; Callq, [~$$"gcd"]
        ; Retq,  []
        ]
    ; text "mod"
        [ Cmpq, [~%Rbx; ~%Rax]
        ; J Lt, [~$$"return"]
        ; Subq, [~%Rbx; ~%Rax]
        ; Jmp,  [~$$"mod"]
        ]
    ; text "return"
        [ Retq, [] ]
    ]

] 
