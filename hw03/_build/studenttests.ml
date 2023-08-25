open Assert
open Gradedtests
   
(* These tests are provided by you -- they will be graded manually *)

(* You should also add additional test cases here to help you   *)
(* debug your program.                                          *)



let loughlin_clause_test =
  [ "llprograms/gcd_modulo-1.ll", 20L ]

let loughlin_clause_test_2 =
  [ "llprograms/gcd_modulo.ll", 20L ]
let adam_papenhausen_test =
  [ "llprograms/manhattan.ll", 22L ]

let nicholas_didio_test =
    [ "llprograms/power.ll", 81L ]
  




let provided_tests : suite = [
    GradedTest ("HW3 Test Cases", 5,
                executed nicholas_didio_test
               );
    GradedTest ("HW3 Test Cases", 5,
                executed adam_papenhausen_test
               );
    GradedTest ("HW3 Test Cases", 5,
                executed loughlin_clause_test_2
               );  GradedTest ("HW3 Test Cases", 5,
                               executed loughlin_clause_test
                              )
  ]
