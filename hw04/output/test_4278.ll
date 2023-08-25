; generated from: hw4programs/fibo.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @fibR(i64 %n) {
  %_n4582 = alloca i64
  store i64 %n, i64* %_n4582
  br label %_begin_if4585
_begin_if4585:
  %_id_n4583 = load i64, i64* %_n4582
  %_bop4584 = icmp eq i64 %_id_n4583, 0
  br i1 %_bop4584, label %_then_branch4586, label %_else_branch4587
_then_branch4586:
  ret i64 0
_else_branch4587:
  br label %_end_if4588
_end_if4588:
  br label %_begin_if4591
_begin_if4591:
  %_id_n4589 = load i64, i64* %_n4582
  %_bop4590 = icmp eq i64 %_id_n4589, 1
  br i1 %_bop4590, label %_then_branch4592, label %_else_branch4593
_then_branch4592:
  ret i64 1
_else_branch4593:
  br label %_end_if4594
_end_if4594:
  %_id_n4595 = load i64, i64* %_n4582
  %_bop4596 = sub i64 %_id_n4595, 1
  %_4597 = call i64 @fibR(i64 %_bop4596)
  %_id_n4598 = load i64, i64* %_n4582
  %_bop4599 = sub i64 %_id_n4598, 2
  %_4600 = call i64 @fibR(i64 %_bop4599)
  %_bop4601 = add i64 %_4597, %_4600
  ret i64 %_bop4601
}

define i64 @fibI(i64 %n) {
  %_n4548 = alloca i64
  %_4549 = alloca i64
  %_4550 = alloca i64
  %_4568 = alloca i64
  store i64 %n, i64* %_n4548
  store i64 0, i64* %_4549
  store i64 1, i64* %_4550
  br label %_begin_if4554
_begin_if4554:
  %_id_n4551 = load i64, i64* %_n4548
  %_bop4552 = icmp eq i64 %_id_n4551, 0
  br i1 %_bop4552, label %_then_branch4555, label %_else_branch4556
_then_branch4555:
  %_id_a4553 = load i64, i64* %_4549
  ret i64 %_id_a4553
_else_branch4556:
  br label %_end_if4557
_end_if4557:
  br label %_begin_if4561
_begin_if4561:
  %_id_n4558 = load i64, i64* %_n4548
  %_bop4559 = icmp eq i64 %_id_n4558, 1
  br i1 %_bop4559, label %_then_branch4562, label %_else_branch4563
_then_branch4562:
  %_id_b4560 = load i64, i64* %_4550
  ret i64 %_id_b4560
_else_branch4563:
  br label %_end_if4564
_end_if4564:
  br label %_cond4577
_cond4577:
  %_id_n4565 = load i64, i64* %_n4548
  %_bop4566 = sub i64 %_id_n4565, 2
  %_bop4567 = icmp sgt i64 %_bop4566, 0
  br i1 %_bop4567, label %_if4576, label %_merge4578
_if4576:
  %_id_b4569 = load i64, i64* %_4550
  store i64 %_id_b4569, i64* %_4568
  %_id_b4570 = load i64, i64* %_4550
  %_id_a4571 = load i64, i64* %_4549
  %_bop4572 = add i64 %_id_b4570, %_id_a4571
  store i64 %_bop4572, i64* %_4550
  %_id_old4573 = load i64, i64* %_4568
  store i64 %_id_old4573, i64* %_4549
  %_id_n4574 = load i64, i64* %_n4548
  %_bop4575 = sub i64 %_id_n4574, 1
  store i64 %_bop4575, i64* %_n4548
  br label %_cond4577
_merge4578:
  %_id_a4579 = load i64, i64* %_4549
  %_id_b4580 = load i64, i64* %_4550
  %_bop4581 = add i64 %_id_a4579, %_id_b4580
  ret i64 %_bop4581
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4535 = alloca i64
  %_argv4536 = alloca { i64, [0 x i8*] }*
  %_4537 = alloca i64
  store i64 %argc, i64* %_argc4535
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4536
  store i64 1, i64* %_4537
  br label %_begin_if4543
_begin_if4543:
  %_4538 = call i64 @fibR(i64 12)
  %_bop4539 = icmp eq i64 %_4538, 144
  %_4540 = call i64 @fibI(i64 12)
  %_bop4541 = icmp eq i64 %_4540, 144
  %_bop4542 = and i1 %_bop4539, %_bop4541
  br i1 %_bop4542, label %_then_branch4544, label %_else_branch4545
_then_branch4544:
  store i64 0, i64* %_4537
  br label %_end_if4546
_else_branch4545:
  br label %_end_if4546
_end_if4546:
  %_id_val4547 = load i64, i64* %_4537
  ret i64 %_id_val4547
}


declare i64* @oat_alloc_array(i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
