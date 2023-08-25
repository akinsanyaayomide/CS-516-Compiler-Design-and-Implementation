; generated from: hw4programs/run9.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1010 = alloca i64
  %_argv1011 = alloca { i64, [0 x i8*] }*
  %_1012 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1010
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1011
  %_raw_array1021 = call i64* @oat_alloc_array(i64 2)
  %_array1022 = bitcast i64* %_raw_array1021 to { i64, [0 x i64] }*
  %_1025 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1022, i32 0, i32 1, i32 1
  store i64 4, i64* %_1025
  %_1023 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1022, i32 0, i32 1, i32 0
  store i64 3, i64* %_1023
  %_raw_array1015 = call i64* @oat_alloc_array(i64 2)
  %_array1016 = bitcast i64* %_raw_array1015 to { i64, [0 x i64] }*
  %_1019 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1016, i32 0, i32 1, i32 1
  store i64 2, i64* %_1019
  %_1017 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1016, i32 0, i32 1, i32 0
  store i64 1, i64* %_1017
  %_raw_array1013 = call i64* @oat_alloc_array(i64 2)
  %_array1014 = bitcast i64* %_raw_array1013 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1029 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1014, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1022, { i64, [0 x i64] }** %_1029
  %_1027 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1014, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1016, { i64, [0 x i64] }** %_1027
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1014, { i64, [0 x { i64, [0 x i64] }*] }** %_1012
  %_id_arr1031 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1012
  %_index_pointer1032 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr1031, i32 0, i32 1, i32 1
  %_index_value1033 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1032
  %_index_pointer1034 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1033, i32 0, i32 1, i32 1
  %_index_value1035 = load i64, i64* %_index_pointer1034
  ret i64 %_index_value1035
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
