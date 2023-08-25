; generated from: hw4programs/run5.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1051 = alloca i64
  %_argv1052 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc1051
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1052
  %_raw_array1061 = call i64* @oat_alloc_array(i64 2)
  %_array1062 = bitcast i64* %_raw_array1061 to { i64, [0 x i64] }*
  %_1065 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1062, i32 0, i32 1, i32 1
  store i64 4, i64* %_1065
  %_1063 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1062, i32 0, i32 1, i32 0
  store i64 3, i64* %_1063
  %_raw_array1055 = call i64* @oat_alloc_array(i64 2)
  %_array1056 = bitcast i64* %_raw_array1055 to { i64, [0 x i64] }*
  %_1059 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1056, i32 0, i32 1, i32 1
  store i64 2, i64* %_1059
  %_1057 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1056, i32 0, i32 1, i32 0
  store i64 1, i64* %_1057
  %_raw_array1053 = call i64* @oat_alloc_array(i64 2)
  %_array1054 = bitcast i64* %_raw_array1053 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1081 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1054, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1074, { i64, [0 x i64] }** %_1081
  %_1079 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1054, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1068, { i64, [0 x i64] }** %_1079
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1054, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_id_arr1083 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_index_pointer1085 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr1083, i32 0, i32 1, i32 1
  %_index_value1084 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1085
  %_index_pointer1087 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1084, i32 0, i32 1, i32 1
  %_index_value1086 = load i64, i64* %_index_pointer1087
  ret i64 %_index_value1086
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
