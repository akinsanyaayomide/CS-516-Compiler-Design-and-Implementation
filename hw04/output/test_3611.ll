; generated from: hw4programs/run22.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string1647 = global [4 x i8] c"def\00"
@_string1645 = global [4 x i8] c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1640 = alloca i64
  %_argv1641 = alloca { i64, [0 x i8*] }*
  %_1642 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc1640
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1641
  %_string11648 = getelementptr [4 x i8], [4 x i8]* @_string1647, i32 0, i32 0
  %_string11646 = getelementptr [4 x i8], [4 x i8]* @_string1645, i32 0, i32 0
  %_raw_array1643 = call i64* @oat_alloc_array(i64 2)
  %_array1644 = bitcast i64* %_raw_array1643 to { i64, [0 x i8*] }*
  %_1651 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1644, i32 0, i32 1, i32 1
  store i8* %_string11648, i8** %_1651
  %_1649 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1644, i32 0, i32 1, i32 0
  store i8* %_string11646, i8** %_1649
  store { i64, [0 x i8*] }* %_array1644, { i64, [0 x i8*] }** %_1642
  %_id_strs1653 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_1642
  %_index_pointer1654 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_id_strs1653, i32 0, i32 1, i32 0
  %_index_value1655 = load i8*, i8** %_index_pointer1654
  call void @print_string(i8* %_index_value1655)
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
