; generated from: hw4programs/run20.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f() {
  ret i64 19
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1626 = alloca i64
  %_argv1627 = alloca { i64, [0 x i8*] }*
  %_a1636 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1626
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1627
  %_raw_array1628 = call i64* @oat_alloc_array(i64 3)
  %_array1629 = bitcast i64* %_raw_array1628 to { i64, [0 x i64] }*
  %_1634 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1629, i32 0, i32 1, i32 2
  store i64 19, i64* %_1634
  %_1632 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1629, i32 0, i32 1, i32 1
  store i64 100, i64* %_1632
  %_1630 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1629, i32 0, i32 1, i32 0
  store i64 1, i64* %_1630
  store { i64, [0 x i64] }* %_array1629, { i64, [0 x i64] }** %_a1636
  %_id_a1637 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1636
  %_index_pointer1639 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a1637, i32 0, i32 1, i32 2
  %_index_value1638 = load i64, i64* %_index_pointer1639
  ret i64 %_index_value1638
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
