; generated from: hw4programs/run9.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1011 = alloca i64
  %_argv1012 = alloca { i64, [0 x i8*] }*
  %_1013 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1011
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1012
  %_raw_array1022 = call i64* @oat_alloc_array(i64 2)
  %_array1023 = bitcast i64* %_raw_array1022 to { i64, [0 x i64] }*
  %_1026 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1023, i32 0, i32 1, i32 1
  store i64 4, i64* %_1026
  %_1024 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1023, i32 0, i32 1, i32 0
  store i64 3, i64* %_1024
  %_raw_array1016 = call i64* @oat_alloc_array(i64 2)
  %_array1017 = bitcast i64* %_raw_array1016 to { i64, [0 x i64] }*
  %_1020 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1017, i32 0, i32 1, i32 1
  store i64 2, i64* %_1020
  %_1018 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1017, i32 0, i32 1, i32 0
  store i64 1, i64* %_1018
  %_raw_array1014 = call i64* @oat_alloc_array(i64 2)
  %_array1015 = bitcast i64* %_raw_array1014 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1030 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1015, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1023, { i64, [0 x i64] }** %_1030
  %_1028 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1015, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1017, { i64, [0 x i64] }** %_1028
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1015, { i64, [0 x { i64, [0 x i64] }*] }** %_1013
  %_id_arr1032 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1013
  %_index_pointer1033 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr1032, i32 0, i32 1, i32 1
  %_index_value1034 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1033
  %_index_pointer1035 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1034, i32 0, i32 1, i32 1
  %_index_value1036 = load i64, i64* %_index_pointer1035
  ret i64 %_index_value1036
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
