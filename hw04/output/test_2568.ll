; generated from: hw4programs/gnomesort.oat
target triple = "x86_64-apple-macosx10.13.0"
define void @gnomeSort({ i64, [0 x i64] }* %a, i64 %len) {
  %_a4565 = alloca { i64, [0 x i64] }*
  %_len4566 = alloca i64
  %_4567 = alloca i64
  %_4568 = alloca i64
  %_4585 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a4565
  store i64 %len, i64* %_len4566
  store i64 1, i64* %_4567
  store i64 2, i64* %_4568
  br label %_cond4619
_cond4619:
  %_id_len4570 = load i64, i64* %_len4566
  %_id_i4569 = load i64, i64* %_4567
  %_4571 = icmp slt i64 %_id_i4569, %_id_len4570
  br i1 %_4571, label %_if4618, label %_merge4620
_if4618:
  br label %_begin_if4614
_begin_if4614:
  %_id_a4577 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4565
  %_id_i4578 = load i64, i64* %_4567
  %_index_pointer4579 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a4577, i32 0, i32 1, i64 %_id_i4578
  %_index_value4580 = load i64, i64* %_index_pointer4579
  %_id_a4572 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4565
  %_id_i4573 = load i64, i64* %_4567
  %_4574 = sub i64 %_id_i4573, 1
  %_index_pointer4575 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a4572, i32 0, i32 1, i64 %_4574
  %_index_value4576 = load i64, i64* %_index_pointer4575
  %_4581 = icmp sle i64 %_index_value4576, %_index_value4580
  br i1 %_4581, label %_then_branch4615, label %_else_branch4616
_then_branch4615:
  %_id_j4582 = load i64, i64* %_4568
  store i64 %_id_j4582, i64* %_4567
  %_id_j4583 = load i64, i64* %_4568
  %_4584 = add i64 %_id_j4583, 1
  store i64 %_4584, i64* %_4568
  br label %_end_if4617
_else_branch4616:
  %_id_a4586 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4565
  %_id_i4587 = load i64, i64* %_4567
  %_4588 = sub i64 %_id_i4587, 1
  %_index_pointer4589 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a4586, i32 0, i32 1, i64 %_4588
  %_index_value4590 = load i64, i64* %_index_pointer4589
  store i64 %_index_value4590, i64* %_4585
  %_id_a4591 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4565
  %_id_i4592 = load i64, i64* %_4567
  %_index_pointer4593 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a4591, i32 0, i32 1, i64 %_id_i4592
  %_index_value4594 = load i64, i64* %_index_pointer4593
  %_id_a4595 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4565
  %_id_i4596 = load i64, i64* %_4567
  %_4597 = sub i64 %_id_i4596, 1
  %_4598 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a4595, i32 0, i32 1, i64 %_4597
  store i64 %_index_value4594, i64* %_4598
  %_id_tmp4599 = load i64, i64* %_4585
  %_id_a4600 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4565
  %_id_i4601 = load i64, i64* %_4567
  %_4602 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a4600, i32 0, i32 1, i64 %_id_i4601
  store i64 %_id_tmp4599, i64* %_4602
  %_id_i4603 = load i64, i64* %_4567
  %_4604 = sub i64 %_id_i4603, 1
  store i64 %_4604, i64* %_4567
  br label %_begin_if4610
_begin_if4610:
  %_id_i4605 = load i64, i64* %_4567
  %_4606 = icmp eq i64 %_id_i4605, 0
  br i1 %_4606, label %_then_branch4611, label %_else_branch4612
_then_branch4611:
  %_id_j4607 = load i64, i64* %_4568
  store i64 %_id_j4607, i64* %_4567
  %_id_j4608 = load i64, i64* %_4568
  %_4609 = add i64 %_id_j4608, 1
  store i64 %_4609, i64* %_4568
  br label %_end_if4613
_else_branch4612:
  br label %_end_if4613
_end_if4613:
  br label %_end_if4617
_end_if4617:
  br label %_cond4619
_merge4620:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4527 = alloca i64
  %_argv4528 = alloca { i64, [0 x i8*] }*
  %_4529 = alloca { i64, [0 x i64] }*
  %_4548 = alloca i64
  %_4552 = alloca i64
  store i64 %argc, i64* %_argc4527
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4528
  %_raw_array4530 = call i64* @oat_alloc_array(i64 8)
  %_array4531 = bitcast i64* %_raw_array4530 to { i64, [0 x i64] }*
  %_4546 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4531, i32 0, i32 1, i32 7
  store i64 0, i64* %_4546
  %_4544 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4531, i32 0, i32 1, i32 6
  store i64 2, i64* %_4544
  %_4542 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4531, i32 0, i32 1, i32 5
  store i64 99, i64* %_4542
  %_4540 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4531, i32 0, i32 1, i32 4
  store i64 30, i64* %_4540
  %_4538 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4531, i32 0, i32 1, i32 3
  store i64 65, i64* %_4538
  %_4536 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4531, i32 0, i32 1, i32 2
  store i64 1, i64* %_4536
  %_4534 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4531, i32 0, i32 1, i32 1
  store i64 200, i64* %_4534
  %_4532 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4531, i32 0, i32 1, i32 0
  store i64 5, i64* %_4532
  store { i64, [0 x i64] }* %_array4531, { i64, [0 x i64] }** %_4529
  store i64 8, i64* %_4548
  %_id_arr4549 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4529
  %_id_len4550 = load i64, i64* %_4548
  call void @gnomeSort({ i64, [0 x i64] }* %_id_arr4549, i64 %_id_len4550)
  store i64 0, i64* %_4552
  br label %_cond4563
_cond4563:
  %_id_i4553 = load i64, i64* %_4552
  %_4554 = icmp slt i64 %_id_i4553, 8
  br i1 %_4554, label %_if4562, label %_merge4564
_if4562:
  %_id_arr4555 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4529
  %_id_i4556 = load i64, i64* %_4552
  %_index_pointer4557 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4555, i32 0, i32 1, i64 %_id_i4556
  %_index_value4558 = load i64, i64* %_index_pointer4557
  call void @print_int(i64 %_index_value4558)
  %_id_i4560 = load i64, i64* %_4552
  %_4561 = add i64 %_id_i4560, 1
  store i64 %_4561, i64* %_4552
  br label %_cond4563
_merge4564:
  ret i64 0
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
