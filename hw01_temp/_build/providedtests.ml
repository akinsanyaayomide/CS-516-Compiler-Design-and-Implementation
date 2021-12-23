open Assert
open Hellocaml

(* These tests are provided by you -- they will be graded manually *)

(* You should also add additional test cases here to help you   *)
(* debug your program.                                          *)

let provided_tests : suite = [
  Test ("Student-Provided Tests For Problem 1-3", [
    ("case1", assert_eqf (fun () -> prob3_ans) prob3_ans );
    ("case2", assert_eqf (fun () -> prob3_case2 17) 25);
    ("case3", assert_eqf (fun () -> prob3_case3) 64);
  ]);
  Test ("Student-Provided Tests For Problem 5", [
    ("case1", assert_eqf (fun () -> execute [] [] (compile e1)) [6L] );
    ("case2", assert_eqf (fun () -> execute ctxt1 [] (compile e2)) [4L] );
    ("case1", assert_eqf (fun () -> execute [] [] (compile e1)) [6L] );
  ]);
  Test ("Problem2-1", [
    ("third_of_three1", assert_eqf (fun () -> third_of_three quartz) false);
    ("third_of_three2", assert_eqf (fun () -> third_of_three ([1;2;3],[true;false;true],["x";"y";"z"])) ["x";"y";"z"]);
    ("third_of_three3", assert_eqf (fun () -> third_of_three ([],["k"],[(1,2);(3,4)])) [(1,2);(3,4)]);
  ]);
  
  Test ("Problem4-4hardest", [
    ("optimize1", assert_eqf (fun () -> optimize (Add(Add(Const 3L, Const 4L),Const 5L))) (Const 12L));
    ("optimize2", assert_eqf (fun () -> optimize (Mult(Const 0L, Const 0L))) (Const 0L));
    ("optimize3", assert_eqf (fun () -> optimize (Mult(Add(Const 3L, Mult(Const 0L, Var "x")), Const 0L))) (Const 0L));
  ]);
  Test ("Problem4-1", [
    ("vars_of1", assert_eqf (fun () -> vars_of e4) ["x"]);
    ("vars_of2", assert_eqf (fun () -> vars_of e5) ["x";"y"]);
    ("vars_of3", assert_eqf (fun () -> vars_of e6) ["a"; "b";"c"]);

  ]);
  Test ("Problem4-2", [
    ("lookup1", assert_eqf (fun () -> lookup "x" ctxt3) 0L);
    ("lookup2", assert_eqf (fun () -> lookup "z" ctxt3) 1L);
    ("lookup3", assert_eqf (fun () -> lookup "y" ctxt3) 10L);
    ("lookup4", (fun () -> try ignore (lookup "z" ctxt1); failwith "bad lookup" with Not_found -> ()));
    ("lookup5", assert_eqf (fun () -> lookup "j" [("p", 77L);("j", 62L)]) 62L);

  ]);
  Test ("Problem3-4", [
    ("rev_t1", assert_eqf (fun () -> rev_t [("Hello","Hello");("yes","yes")]) [("yes","yes");("Hello","Hello")]);
    ("rev_t2", assert_eqf (fun () -> rev_t [0;5;6]) [6;5;0]);
    ("rev_t3", assert_eqf (fun () -> rev_t [3L;5L]) [5L;3L]);
    ("rev_t4", assert_eqf (fun () -> rev_t [(true,true);(false,false)]) [(false,false);(true,true)]);
    ("rev_t4", assert_eqf (fun () -> rev_t [false;true]) [true;false]);
  ]);
    ] 
