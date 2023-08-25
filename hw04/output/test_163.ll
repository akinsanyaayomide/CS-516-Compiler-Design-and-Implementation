; generated from: hw4programs/run22.oat
target triple = "x86_64-apple-macosx10.13.0"
@_raw_string1607 = global [4 x i8] c"def\00"
@_raw_string1605 = global [4 x i8] c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1599 = alloca i64
  %_argv1600 = alloca { i64, [0 x i8*] }*
  %_1601 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc1599
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1600
  %_result_id1606 = bitcast [4 x i8]* @_raw_string1607 to i8*
  %_result_id1604 = bitcast [4 x i8]* @_raw_string1605 to i8*
  %_raw_array1602 = call i64* @oat_alloc_array(i64 2)
  %_array1603 = bitcast i64* %_raw_array1602 to { i64, [0 x i8*] }*
  %_1610 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1603, i32 0, i32 1, i32 1
  store i8* %_result_id1606, i8** %_1610
  %_1608 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1603, i32 0, i32 1, i32 0
  store i8* %_result_id1604, i8** %_1608
  store { i64, [0 x i8*] }* %_array1603, { i64, [0 x i8*] }** %_1601
  %_id_strs1612 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_1601
  %_index_pointer1613 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_id_strs1612, i32 0, i32 1, i32 0
  %_index_value1614 = load i8*, i8** %_index_pointer1613
  call void @print_string(i8* %_index_value1614)
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
