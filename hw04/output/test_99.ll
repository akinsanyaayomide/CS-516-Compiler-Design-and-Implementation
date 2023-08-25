; generated from: hw4programs/gnomesort.oat
target triple = "x86_64-apple-macosx10.13.0"
define void @gnomeSort({ i64, [0 x i64] }* %a, i64 %len) {
  %_a4572 = alloca { i64, [0 x i64] }*
  %_len4573 = alloca i64
  %_4574 = alloca i64
  %_4575 = alloca i64
  %_4592 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a4572
  store i64 %len, i64* %_len4573
  store i64 1, i64* %_4574
  store i64 2, i64* %_4575
  br label %_start4625
_start4625:
  %_id_len4577 = load i64, i64* %_len4573
  %_id_i4576 = load i64, i64* %_4574
  %_4578 = icmp slt i64 %_id_i4576, %_id_len4577
  br i1 %_4578, label %_body4626, label %_else4627
_body4626:
  br label %_start4621
_start4621:
  %_id_a4584 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4572
  %_id_i4585 = load i64, i64* %_4574
  %_index_pointer4586 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a4584, i32 0, i32 1, i64 %_id_i4585
  %_index_value4587 = load i64, i64* %_index_pointer4586
  %_id_a4579 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4572
  %_id_i4580 = load i64, i64* %_4574
  %_4581 = sub i64 %_id_i4580, 1
  %_index_pointer4582 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a4579, i32 0, i32 1, i64 %_4581
  %_index_value4583 = load i64, i64* %_index_pointer4582
  %_4588 = icmp sle i64 %_index_value4583, %_index_value4587
  br i1 %_4588, label %_then4622, label %_else4623
_then4622:
  %_id_j4589 = load i64, i64* %_4575
  store i64 %_id_j4589, i64* %_4574
  %_id_j4590 = load i64, i64* %_4575
  %_4591 = add i64 %_id_j4590, 1
  store i64 %_4591, i64* %_4575
  br label %_post4624
_else4623:
  %_id_a4593 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4572
  %_id_i4594 = load i64, i64* %_4574
  %_4595 = sub i64 %_id_i4594, 1
  %_index_pointer4596 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a4593, i32 0, i32 1, i64 %_4595
  %_index_value4597 = load i64, i64* %_index_pointer4596
  store i64 %_index_value4597, i64* %_4592
  %_id_a4598 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4572
  %_id_i4599 = load i64, i64* %_4574
  %_index_pointer4600 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a4598, i32 0, i32 1, i64 %_id_i4599
  %_index_value4601 = load i64, i64* %_index_pointer4600
  %_id_a4602 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4572
  %_id_i4603 = load i64, i64* %_4574
  %_4604 = sub i64 %_id_i4603, 1
  %_4605 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a4602, i32 0, i32 1, i64 %_4604
  store i64 %_index_value4601, i64* %_4605
  %_id_tmp4606 = load i64, i64* %_4592
  %_id_a4607 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4572
  %_id_i4608 = load i64, i64* %_4574
  %_4609 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a4607, i32 0, i32 1, i64 %_id_i4608
  store i64 %_id_tmp4606, i64* %_4609
  %_id_i4610 = load i64, i64* %_4574
  %_4611 = sub i64 %_id_i4610, 1
  store i64 %_4611, i64* %_4574
  br label %_start4617
_start4617:
  %_id_i4612 = load i64, i64* %_4574
  %_4613 = icmp eq i64 %_id_i4612, 0
  br i1 %_4613, label %_then4618, label %_else4619
_then4618:
  %_id_j4614 = load i64, i64* %_4575
  store i64 %_id_j4614, i64* %_4574
  %_id_j4615 = load i64, i64* %_4575
  %_4616 = add i64 %_id_j4615, 1
  store i64 %_4616, i64* %_4575
  br label %_post4620
_else4619:
  br label %_post4620
_post4620:
  br label %_post4624
_post4624:
  br label %_start4625
_else4627:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4534 = alloca i64
  %_argv4535 = alloca { i64, [0 x i8*] }*
  %_4536 = alloca { i64, [0 x i64] }*
  %_4555 = alloca i64
  %_4559 = alloca i64
  store i64 %argc, i64* %_argc4534
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4535
  %_raw_array4537 = call i64* @oat_alloc_array(i64 8)
  %_array4538 = bitcast i64* %_raw_array4537 to { i64, [0 x i64] }*
  %_4553 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4538, i32 0, i32 1, i32 7
  store i64 0, i64* %_4553
  %_4551 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4538, i32 0, i32 1, i32 6
  store i64 2, i64* %_4551
  %_4549 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4538, i32 0, i32 1, i32 5
  store i64 99, i64* %_4549
  %_4547 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4538, i32 0, i32 1, i32 4
  store i64 30, i64* %_4547
  %_4545 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4538, i32 0, i32 1, i32 3
  store i64 65, i64* %_4545
  %_4543 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4538, i32 0, i32 1, i32 2
  store i64 1, i64* %_4543
  %_4541 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4538, i32 0, i32 1, i32 1
  store i64 200, i64* %_4541
  %_4539 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4538, i32 0, i32 1, i32 0
  store i64 5, i64* %_4539
  store { i64, [0 x i64] }* %_array4538, { i64, [0 x i64] }** %_4536
  store i64 8, i64* %_4555
  %_id_arr4556 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4536
  %_id_len4557 = load i64, i64* %_4555
  call void @gnomeSort({ i64, [0 x i64] }* %_id_arr4556, i64 %_id_len4557)
  store i64 0, i64* %_4559
  br label %_start4569
_start4569:
  %_id_i4560 = load i64, i64* %_4559
  %_4561 = icmp slt i64 %_id_i4560, 8
  br i1 %_4561, label %_body4570, label %_else4571
_body4570:
  %_id_arr4562 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4536
  %_id_i4563 = load i64, i64* %_4559
  %_index_pointer4564 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4562, i32 0, i32 1, i64 %_id_i4563
  %_index_value4565 = load i64, i64* %_index_pointer4564
  call void @print_int(i64 %_index_value4565)
  %_id_i4567 = load i64, i64* %_4559
  %_4568 = add i64 %_id_i4567, 1
  store i64 %_4568, i64* %_4559
  br label %_start4569
_else4571:
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
