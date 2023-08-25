; generated from: hw4programs/run22.oat
target triple = "x86_64-apple-macosx10.13.0"
@_raw_string1652 = global [4 x i8] c"def\00"
@_raw_string1650 = global [4 x i8] c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1644 = alloca i64
  %_argv1645 = alloca { i64, [0 x i8*] }*
  %_1646 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc1644
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1645
  %_result_id1651 = bitcast [4 x i8]* @_raw_string1652 to i8*
  %_result_id1649 = bitcast [4 x i8]* @_raw_string1650 to i8*
  %_raw_array1647 = call i64* @oat_alloc_array(i64 2)
  %_array1648 = bitcast i64* %_raw_array1647 to { i64, [0 x i8*] }*
  %_1655 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1648, i32 0, i32 1, i32 1
  store i8* %_result_id1651, i8** %_1655
  %_1653 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1648, i32 0, i32 1, i32 0
  store i8* %_result_id1649, i8** %_1653
  store { i64, [0 x i8*] }* %_array1648, { i64, [0 x i8*] }** %_1646
  %_id_strs1657 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_1646
  %_index_pointer1658 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_id_strs1657, i32 0, i32 1, i32 0
  %_index_value1659 = load i8*, i8** %_index_pointer1658
  call void @print_string(i8* %_index_value1659)
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
