; generated from: hw4programs/run23.oat
target triple = "x86_64-apple-macosx10.13.0"
@_str_arr1680 = global [4 x i8] c"123\00"
@_str_arr1678 = global [4 x i8] c"789\00"
@_str_arr1670 = global [4 x i8] c"def\00"
@_str_arr1668 = global [4 x i8] c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1661 = alloca i64
  %_argv1662 = alloca { i64, [0 x i8*] }*
  %_1663 = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  store i64 %argc, i64* %_argc1661
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1662
  %_str1681 = getelementptr [4 x i8], [4 x i8]* @_str_arr1680, i32 0, i32 0
  %_str1679 = getelementptr [4 x i8], [4 x i8]* @_str_arr1678, i32 0, i32 0
  %_raw_array1676 = call i64* @oat_alloc_array(i64 2)
  %_array1677 = bitcast i64* %_raw_array1676 to { i64, [0 x i8*] }*
  %_1684 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1677, i32 0, i32 1, i32 1
  store i8* %_str1681, i8** %_1684
  %_1682 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1677, i32 0, i32 1, i32 0
  store i8* %_str1679, i8** %_1682
  %_str1671 = getelementptr [4 x i8], [4 x i8]* @_str_arr1670, i32 0, i32 0
  %_str1669 = getelementptr [4 x i8], [4 x i8]* @_str_arr1668, i32 0, i32 0
  %_raw_array1666 = call i64* @oat_alloc_array(i64 2)
  %_array1667 = bitcast i64* %_raw_array1666 to { i64, [0 x i8*] }*
  %_1674 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1667, i32 0, i32 1, i32 1
  store i8* %_str1671, i8** %_1674
  %_1672 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1667, i32 0, i32 1, i32 0
  store i8* %_str1669, i8** %_1672
  %_raw_array1664 = call i64* @oat_alloc_array(i64 2)
  %_array1665 = bitcast i64* %_raw_array1664 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_1688 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1665, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array1677, { i64, [0 x i8*] }** %_1688
  %_1686 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1665, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array1667, { i64, [0 x i8*] }** %_1686
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array1665, { i64, [0 x { i64, [0 x i8*] }*] }** %_1663
  %_id_strs1690 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_1663
  %_index_pointer1691 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_id_strs1690, i32 0, i32 1, i32 1
  %_index_value1692 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_index_pointer1691
  %_index_pointer1693 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_index_value1692, i32 0, i32 1, i32 1
  %_index_value1694 = load i8*, i8** %_index_pointer1693
  call void @print_string(i8* %_index_value1694)
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
