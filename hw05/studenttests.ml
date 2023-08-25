open Assert
open Driver
open Gradedtests

(* These tests are provided by you -- they will be graded manually *)

(* You should also add additional test cases here to help you   *)
(* debug your program.                                          *)

let unit_tests = [
  "subtype_arrayint_arrayint", 
  (fun () ->
  let open Ast in 
       if Typechecker.subtype_ref Tctxt.empty ((RArray TInt)) ((RArray TInt)) then ()
       else failwith "should not fail")                                                                                     
; ("no_subtype_arrayint_arraystring",
   (fun () ->
   let open Ast in 
       if Typechecker.subtype_ref Tctxt.empty ((RArray TInt)) ((RArray (TRef(RString)))) then
         failwith "should not succeed" else ())
  )
]

let provided_tests : suite = [
  Test("type rules unit tests", unit_tests);
  Test("area of a rectangle", Gradedtests.executed_oat_file [
     ("hwprograms_student/area.oat", "", "20")
   ])  
] 
