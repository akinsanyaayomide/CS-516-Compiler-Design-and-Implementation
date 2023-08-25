; generated from: hw4programs/run35.oat
target triple = "x86_64-apple-macosx10.13.0"
@a = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc534 = alloca i64
  %_argv535 = alloca { i64, [0 x i8*] }*
  %_589 = alloca i64
  %_590 = alloca i64
  %_593 = alloca i64
  store i64 %argc, i64* %_argc534
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv535
  %_raw_array566 = call i64* @oat_alloc_array(i64 4)
  %_array567 = bitcast i64* %_raw_array566 to { i64, [0 x i64] }*
  %_579 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array567, i32 0, i32 1, i32 3
  store i64 11, i64* %_577
  %_576 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array567, i32 0, i32 1, i32 2
  store i64 10, i64* %_574
  %_573 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array567, i32 0, i32 1, i32 1
  store i64 9, i64* %_571
  %_570 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array567, i32 0, i32 1, i32 0
  store i64 8, i64* %_568
  %_raw_array552 = call i64* @oat_alloc_array(i64 4)
  %_array553 = bitcast i64* %_raw_array552 to { i64, [0 x i64] }*
  %_565 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array553, i32 0, i32 1, i32 3
  store i64 7, i64* %_563
  %_562 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array553, i32 0, i32 1, i32 2
  store i64 6, i64* %_560
  %_559 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array553, i32 0, i32 1, i32 1
  store i64 5, i64* %_557
  %_556 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array553, i32 0, i32 1, i32 0
  store i64 4, i64* %_554
  %_raw_array538 = call i64* @oat_alloc_array(i64 4)
  %_array539 = bitcast i64* %_raw_array538 to { i64, [0 x i64] }*
  %_551 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array539, i32 0, i32 1, i32 3
  store i64 3, i64* %_549
  %_548 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array539, i32 0, i32 1, i32 2
  store i64 2, i64* %_546
  %_545 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array539, i32 0, i32 1, i32 1
  store i64 1, i64* %_543
  %_542 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array539, i32 0, i32 1, i32 0
  store i64 0, i64* %_540
  %_raw_array536 = call i64* @oat_alloc_array(i64 3)
  %_array537 = bitcast i64* %_raw_array536 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_588 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array537, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array567, { i64, [0 x i64] }** %_586
  %_585 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array537, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array553, { i64, [0 x i64] }** %_583
  %_582 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array537, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array539, { i64, [0 x i64] }** %_580
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array537, { i64, [0 x { i64, [0 x i64] }*] }** @a
  store i64 0, i64* %_589
  store i64 0, i64* %_590
  br label %_cond613
_cond613:
  %_id_i591 = load i64, i64* %_590
  %_bop592 = icmp slt i64 %_id_i591, 3
  br i1 %_bop592, label %_if612, label %_merge614
_if612:
  store i64 0, i64* %_593
  br label %_cond608
_cond608:
  %_id_j594 = load i64, i64* %_593
  %_bop595 = icmp slt i64 %_id_j594, 4
  br i1 %_bop595, label %_if607, label %_merge609
_if607:
  %_id_s596 = load i64, i64* %_589
  %_id_a597 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @a
  %_id_i598 = load i64, i64* %_590
  %_index_pointer600 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a597, i32 0, i32 1, i64 %_id_i598
  %_index_value599 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer600
  %_id_j601 = load i64, i64* %_593
  %_index_pointer603 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value599, i32 0, i32 1, i64 %_id_j601
  %_index_value602 = load i64, i64* %_index_pointer603
  %_bop604 = add i64 %_id_s596, %_index_value602
  store i64 %_bop604, i64* %_589
  %_id_j605 = load i64, i64* %_593
  %_bop606 = add i64 %_id_j605, 1
  store i64 %_bop606, i64* %_593
  br label %_cond608
_merge609:
  %_id_i610 = load i64, i64* %_590
  %_bop611 = add i64 %_id_i610, 1
  store i64 %_bop611, i64* %_590
  br label %_cond613
_merge614:
  %_id_s615 = load i64, i64* %_589
  ret i64 %_id_s615
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
