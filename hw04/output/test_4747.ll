; generated from: hw4programs/run35.oat
target triple = "x86_64-apple-macosx10.13.0"
@a = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc549 = alloca i64
  %_argv550 = alloca { i64, [0 x i8*] }*
  %_619 = alloca i64
  %_620 = alloca i64
  %_623 = alloca i64
  store i64 %argc, i64* %_argc549
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv550
  %_raw_array573 = call i64* @oat_alloc_array(i64 4)
  %_array574 = bitcast i64* %_raw_array573 to { i64, [0 x i64] }*
  %_581 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array574, i32 0, i32 1, i32 3
  store i64 11, i64* %_581
  %_579 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array574, i32 0, i32 1, i32 2
  store i64 10, i64* %_579
  %_577 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array574, i32 0, i32 1, i32 1
  store i64 9, i64* %_577
  %_575 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array574, i32 0, i32 1, i32 0
  store i64 8, i64* %_575
  %_raw_array563 = call i64* @oat_alloc_array(i64 4)
  %_array564 = bitcast i64* %_raw_array563 to { i64, [0 x i64] }*
  %_571 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array564, i32 0, i32 1, i32 3
  store i64 7, i64* %_571
  %_569 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array564, i32 0, i32 1, i32 2
  store i64 6, i64* %_569
  %_567 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array564, i32 0, i32 1, i32 1
  store i64 5, i64* %_567
  %_565 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array564, i32 0, i32 1, i32 0
  store i64 4, i64* %_565
  %_raw_array553 = call i64* @oat_alloc_array(i64 4)
  %_array554 = bitcast i64* %_raw_array553 to { i64, [0 x i64] }*
  %_561 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array554, i32 0, i32 1, i32 3
  store i64 3, i64* %_561
  %_559 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array554, i32 0, i32 1, i32 2
  store i64 2, i64* %_559
  %_557 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array554, i32 0, i32 1, i32 1
  store i64 1, i64* %_557
  %_555 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array554, i32 0, i32 1, i32 0
  store i64 0, i64* %_555
  %_raw_array551 = call i64* @oat_alloc_array(i64 3)
  %_array552 = bitcast i64* %_raw_array551 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_617 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array552, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array604, { i64, [0 x i64] }** %_617
  %_615 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array552, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array594, { i64, [0 x i64] }** %_615
  %_613 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array552, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array584, { i64, [0 x i64] }** %_613
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array552, { i64, [0 x { i64, [0 x i64] }*] }** @a
  store i64 0, i64* %_619
  store i64 0, i64* %_620
  br label %_cond643
_cond643:
  %_id_i621 = load i64, i64* %_620
  %_bop622 = icmp slt i64 %_id_i621, 3
  br i1 %_bop622, label %_if642, label %_merge644
_if642:
  store i64 0, i64* %_623
  br label %_cond638
_cond638:
  %_id_j624 = load i64, i64* %_623
  %_bop625 = icmp slt i64 %_id_j624, 4
  br i1 %_bop625, label %_if637, label %_merge639
_if637:
  %_id_s626 = load i64, i64* %_619
  %_id_a627 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @a
  %_id_i628 = load i64, i64* %_620
  %_index_pointer630 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a627, i32 0, i32 1, i64 %_id_i628
  %_index_value629 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer630
  %_id_j631 = load i64, i64* %_623
  %_index_pointer633 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value629, i32 0, i32 1, i64 %_id_j631
  %_index_value632 = load i64, i64* %_index_pointer633
  %_bop634 = add i64 %_id_s626, %_index_value632
  store i64 %_bop634, i64* %_619
  %_id_j635 = load i64, i64* %_623
  %_bop636 = add i64 %_id_j635, 1
  store i64 %_bop636, i64* %_623
  br label %_cond638
_merge639:
  %_id_i640 = load i64, i64* %_620
  %_bop641 = add i64 %_id_i640, 1
  store i64 %_bop641, i64* %_620
  br label %_cond643
_merge644:
  %_id_s645 = load i64, i64* %_619
  ret i64 %_id_s645
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
