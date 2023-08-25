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
  %_garr1101 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1106 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1077
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1078
  %_raw_array1089 = call i64* @oat_alloc_array(i64 3)
  %_array1090 = bitcast i64* %_raw_array1089 to { i64, [0 x i64] }*
  %_1095 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1090, i32 0, i32 1, i32 2
  store i64 6, i64* %_1095
  %_1093 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1090, i32 0, i32 1, i32 1
  store i64 5, i64* %_1093
  %_1091 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1090, i32 0, i32 1, i32 0
  store i64 4, i64* %_1091
  %_raw_array1081 = call i64* @oat_alloc_array(i64 3)
  %_array1082 = bitcast i64* %_raw_array1081 to { i64, [0 x i64] }*
  %_1087 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1082, i32 0, i32 1, i32 2
  store i64 3, i64* %_1087
  %_1085 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1082, i32 0, i32 1, i32 1
  store i64 2, i64* %_1085
  %_1083 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1082, i32 0, i32 1, i32 0
  store i64 1, i64* %_1083
  %_raw_array1079 = call i64* @oat_alloc_array(i64 2)
  %_array1080 = bitcast i64* %_raw_array1079 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1099 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1080, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1090, { i64, [0 x i64] }** %_1099
  %_1097 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1080, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1082, { i64, [0 x i64] }** %_1097
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1080, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1101
  %_id_garr1102 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1101
  %_index_pointer1104 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_garr1102, i32 0, i32 1, i32 1
  %_index_value1103 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1104
  %_1105 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_index_value1103)
  store { i64, [0 x i64] }* %_1105, { i64, [0 x i64] }** %_arr1106
  %_id_arr1107 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1106
  %_index_pointer1109 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1107, i32 0, i32 1, i32 1
  %_index_value1108 = load i64, i64* %_index_pointer1109
  ret i64 %_index_value1108
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
