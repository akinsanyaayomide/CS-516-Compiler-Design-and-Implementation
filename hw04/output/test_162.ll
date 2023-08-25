; generated from: hw4programs/run20.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f() {
  ret i64 19
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1585 = alloca i64
  %_argv1586 = alloca { i64, [0 x i8*] }*
  %_1587 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1585
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1586
  %_raw_array1588 = call i64* @oat_alloc_array(i64 3)
  %_array1589 = bitcast i64* %_raw_array1588 to { i64, [0 x i64] }*
  %_1594 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1589, i32 0, i32 1, i32 2
  store i64 19, i64* %_1594
  %_1592 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1589, i32 0, i32 1, i32 1
  store i64 100, i64* %_1592
  %_1590 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1589, i32 0, i32 1, i32 0
  store i64 1, i64* %_1590
  store { i64, [0 x i64] }* %_array1589, { i64, [0 x i64] }** %_1587
  %_id_a1596 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1587
  %_index_pointer1597 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a1596, i32 0, i32 1, i32 2
  %_index_value1598 = load i64, i64* %_index_pointer1597
  ret i64 %_index_value1598
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
