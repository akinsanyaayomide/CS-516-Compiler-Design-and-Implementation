; generated from: hw4programs/run10.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %arr) {
  %_arr1110 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1110
  %_id_arr1111 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1110
  ret { i64, [0 x i64] }* %_id_arr1111
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1077 = alloca i64
  %_argv1078 = alloca { i64, [0 x i8*] }*
  %_1079 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1102 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1077
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1078
  %_raw_array1090 = call i64* @oat_alloc_array(i64 3)
  %_array1091 = bitcast i64* %_raw_array1090 to { i64, [0 x i64] }*
  %_1096 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1091, i32 0, i32 1, i32 2
  store i64 6, i64* %_1096
  %_1094 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1091, i32 0, i32 1, i32 1
  store i64 5, i64* %_1094
  %_1092 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1091, i32 0, i32 1, i32 0
  store i64 4, i64* %_1092
  %_raw_array1082 = call i64* @oat_alloc_array(i64 3)
  %_array1083 = bitcast i64* %_raw_array1082 to { i64, [0 x i64] }*
  %_1088 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1083, i32 0, i32 1, i32 2
  store i64 3, i64* %_1088
  %_1086 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1083, i32 0, i32 1, i32 1
  store i64 2, i64* %_1086
  %_1084 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1083, i32 0, i32 1, i32 0
  store i64 1, i64* %_1084
  %_raw_array1080 = call i64* @oat_alloc_array(i64 2)
  %_array1081 = bitcast i64* %_raw_array1080 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1100 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1081, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1091, { i64, [0 x i64] }** %_1100
  %_1098 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1081, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1083, { i64, [0 x i64] }** %_1098
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1081, { i64, [0 x { i64, [0 x i64] }*] }** %_1079
  %_id_garr1103 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1079
  %_index_pointer1104 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_garr1103, i32 0, i32 1, i32 1
  %_index_value1105 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1104
  %_1106 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_index_value1105)
  store { i64, [0 x i64] }* %_1106, { i64, [0 x i64] }** %_1102
  %_id_arr1107 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1102
  %_index_pointer1108 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1107, i32 0, i32 1, i32 1
  %_index_value1109 = load i64, i64* %_index_pointer1108
  ret i64 %_index_value1109
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
