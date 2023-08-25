; generated from: hw4programs/run9.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1051 = alloca i64
  %_argv1052 = alloca { i64, [0 x i8*] }*
  %_1053 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1051
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1052
  %_raw_array1062 = call i64* @oat_alloc_array(i64 2)
  %_array1063 = bitcast i64* %_raw_array1062 to { i64, [0 x i64] }*
  %_1066 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1063, i32 0, i32 1, i32 1
  store i64 4, i64* %_1066
  %_1064 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1063, i32 0, i32 1, i32 0
  store i64 3, i64* %_1064
  %_raw_array1056 = call i64* @oat_alloc_array(i64 2)
  %_array1057 = bitcast i64* %_raw_array1056 to { i64, [0 x i64] }*
  %_1060 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1057, i32 0, i32 1, i32 1
  store i64 2, i64* %_1060
  %_1058 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1057, i32 0, i32 1, i32 0
  store i64 1, i64* %_1058
  %_raw_array1054 = call i64* @oat_alloc_array(i64 2)
  %_array1055 = bitcast i64* %_raw_array1054 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1070 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1055, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1063, { i64, [0 x i64] }** %_1070
  %_1068 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1055, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1057, { i64, [0 x i64] }** %_1068
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1055, { i64, [0 x { i64, [0 x i64] }*] }** %_1053
  %_id_arr1072 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1053
  %_index_pointer1073 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr1072, i32 0, i32 1, i32 1
  %_index_value1074 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1073
  %_index_pointer1075 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1074, i32 0, i32 1, i32 1
  %_index_value1076 = load i64, i64* %_index_pointer1075
  ret i64 %_index_value1076
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
