; generated from: hw4programs/run37.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc586 = alloca i64
  %_argv587 = alloca { i64, [0 x i8*] }*
  %_588 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc586
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv587
  %_raw_array597 = call i64* @oat_alloc_array(i64 2)
  %_array598 = bitcast i64* %_raw_array597 to { i64, [0 x i64] }*
  %_601 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array598, i32 0, i32 1, i32 1
  store i64 4, i64* %_601
  %_599 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array598, i32 0, i32 1, i32 0
  store i64 3, i64* %_599
  %_raw_array591 = call i64* @oat_alloc_array(i64 2)
  %_array592 = bitcast i64* %_raw_array591 to { i64, [0 x i64] }*
  %_595 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array592, i32 0, i32 1, i32 1
  store i64 2, i64* %_595
  %_593 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array592, i32 0, i32 1, i32 0
  store i64 1, i64* %_593
  %_raw_array589 = call i64* @oat_alloc_array(i64 2)
  %_array590 = bitcast i64* %_raw_array589 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_605 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array590, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array598, { i64, [0 x i64] }** %_605
  %_603 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array590, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array592, { i64, [0 x i64] }** %_603
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array590, { i64, [0 x { i64, [0 x i64] }*] }** %_588
  %_id_a607 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_588
  %_index_pointer608 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a607, i32 0, i32 1, i32 0
  %_index_value609 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer608
  %_index_pointer610 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value609, i32 0, i32 1, i32 1
  %_index_value611 = load i64, i64* %_index_pointer610
  ret i64 %_index_value611
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
