; generated from: hw4programs/gnomesort.oat
target triple = "x86_64-apple-macosx10.13.0"
define void @gnomeSort({ i64, [0 x i64] }* %a, i64 %len) {
  %_a4565 = alloca { i64, [0 x i64] }*
  %_len4566 = alloca i64
  %_i4567 = alloca i64
  %_j4568 = alloca i64
  %_tmp4590 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a4565
  store i64 %len, i64* %_len4566
  store i64 1, i64* %_i4567
  store i64 2, i64* %_j4568
  br label %_cond4619
_cond4619:
  %_id_i4569 = load i64, i64* %_i4567
  %_id_len4570 = load i64, i64* %_len4566
  %_bop4571 = icmp slt i64 %_id_i4569, %_id_len4570
  br i1 %_bop4571, label %_if4618, label %_merge4620
_if4618:
  br label %_begin_if4617
_begin_if4617:
  %_id_a4572 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4565
  %_id_i4573 = load i64, i64* %_i4567
  %_bop4574 = sub i64 %_id_i4573, 1
  %_index_pointer4576 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a4572, i32 0, i32 1, i64 %_bop4574
  %_index_value4575 = load i64, i64* %_index_pointer4576
  %_id_a4577 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4565
  %_id_i4578 = load i64, i64* %_i4567
  %_index_pointer4580 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a4577, i32 0, i32 1, i64 %_id_i4578
  %_index_value4579 = load i64, i64* %_index_pointer4580
  %_bop4581 = icmp sle i64 %_index_value4575, %_index_value4579
  br i1 %_bop4581, label %_then_branch4616, label %_else_branch4615
_then_branch4616:
  %_id_j4582 = load i64, i64* %_j4568
  store i64 %_id_j4582, i64* %_i4567
  %_id_j4583 = load i64, i64* %_j4568
  %_bop4584 = add i64 %_id_j4583, 1
  store i64 %_bop4584, i64* %_j4568
  br label %_end_if4614
_else_branch4615:
  %_id_a4585 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4565
  %_id_i4586 = load i64, i64* %_i4567
  %_bop4587 = sub i64 %_id_i4586, 1
  %_index_pointer4589 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a4585, i32 0, i32 1, i64 %_bop4587
  %_index_value4588 = load i64, i64* %_index_pointer4589
  store i64 %_index_value4588, i64* %_tmp4590
  %_id_a4591 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4565
  %_id_i4592 = load i64, i64* %_i4567
  %_index_pointer4594 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a4591, i32 0, i32 1, i64 %_id_i4592
  %_index_value4593 = load i64, i64* %_index_pointer4594
  %_id_a4595 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4565
  %_id_i4596 = load i64, i64* %_i4567
  %_bop4597 = sub i64 %_id_i4596, 1
  %_4598 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a4595, i32 0, i32 1, i64 %_bop4597
  store i64 %_index_value4593, i64* %_4598
  %_id_tmp4599 = load i64, i64* %_tmp4590
  %_id_a4600 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4565
  %_id_i4601 = load i64, i64* %_i4567
  %_4602 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a4600, i32 0, i32 1, i64 %_id_i4601
  store i64 %_id_tmp4599, i64* %_4602
  %_id_i4603 = load i64, i64* %_i4567
  %_bop4604 = sub i64 %_id_i4603, 1
  store i64 %_bop4604, i64* %_i4567
  br label %_begin_if4613
_begin_if4613:
  %_id_i4605 = load i64, i64* %_i4567
  %_bop4606 = icmp eq i64 %_id_i4605, 0
  br i1 %_bop4606, label %_then_branch4612, label %_else_branch4611
_then_branch4612:
  %_id_j4607 = load i64, i64* %_j4568
  store i64 %_id_j4607, i64* %_i4567
  %_id_j4608 = load i64, i64* %_j4568
  %_bop4609 = add i64 %_id_j4608, 1
  store i64 %_bop4609, i64* %_j4568
  br label %_end_if4610
_else_branch4611:
  br label %_end_if4610
_end_if4610:
  br label %_end_if4614
_end_if4614:
  br label %_cond4619
_merge4620:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4527 = alloca i64
  %_argv4528 = alloca { i64, [0 x i8*] }*
  %_arr4547 = alloca { i64, [0 x i64] }*
  %_len4548 = alloca i64
  %_i4552 = alloca i64
  store i64 %argc, i64* %_argc4527
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4528
  %_raw_array4529 = call i64* @oat_alloc_array(i64 8)
  %_array4530 = bitcast i64* %_raw_array4529 to { i64, [0 x i64] }*
  %_4545 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4530, i32 0, i32 1, i32 7
  store i64 0, i64* %_4545
  %_4543 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4530, i32 0, i32 1, i32 6
  store i64 2, i64* %_4543
  %_4541 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4530, i32 0, i32 1, i32 5
  store i64 99, i64* %_4541
  %_4539 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4530, i32 0, i32 1, i32 4
  store i64 30, i64* %_4539
  %_4537 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4530, i32 0, i32 1, i32 3
  store i64 65, i64* %_4537
  %_4535 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4530, i32 0, i32 1, i32 2
  store i64 1, i64* %_4535
  %_4533 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4530, i32 0, i32 1, i32 1
  store i64 200, i64* %_4533
  %_4531 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4530, i32 0, i32 1, i32 0
  store i64 5, i64* %_4531
  store { i64, [0 x i64] }* %_array4530, { i64, [0 x i64] }** %_arr4547
  store i64 8, i64* %_len4548
  %_id_arr4549 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4547
  %_id_len4550 = load i64, i64* %_len4548
  call void @gnomeSort({ i64, [0 x i64] }* %_id_arr4549, i64 %_id_len4550)
  store i64 0, i64* %_i4552
  br label %_cond4563
_cond4563:
  %_id_i4553 = load i64, i64* %_i4552
  %_bop4554 = icmp slt i64 %_id_i4553, 8
  br i1 %_bop4554, label %_if4562, label %_merge4564
_if4562:
  %_id_arr4555 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4547
  %_id_i4556 = load i64, i64* %_i4552
  %_index_pointer4558 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4555, i32 0, i32 1, i64 %_id_i4556
  %_index_value4557 = load i64, i64* %_index_pointer4558
  call void @print_int(i64 %_index_value4557)
  %_id_i4560 = load i64, i64* %_i4552
  %_bop4561 = add i64 %_id_i4560, 1
  store i64 %_bop4561, i64* %_i4552
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
