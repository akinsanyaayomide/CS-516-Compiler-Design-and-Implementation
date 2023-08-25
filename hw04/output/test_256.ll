; generated from: hw4programs/run10.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %arr) {
  %_arr1114 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1114
  %_id_arr1115 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1114
  ret { i64, [0 x i64] }* %_id_arr1115
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1081 = alloca i64
  %_argv1082 = alloca { i64, [0 x i8*] }*
  %_1083 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1106 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1081
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1082
  %_raw_array1094 = call i64* @oat_alloc_array(i64 3)
  %_array1095 = bitcast i64* %_raw_array1094 to { i64, [0 x i64] }*
  %_1100 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1095, i32 0, i32 1, i32 2
  store i64 6, i64* %_1100
  %_1098 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1095, i32 0, i32 1, i32 1
  store i64 5, i64* %_1098
  %_1096 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1095, i32 0, i32 1, i32 0
  store i64 4, i64* %_1096
  %_raw_array1086 = call i64* @oat_alloc_array(i64 3)
  %_array1087 = bitcast i64* %_raw_array1086 to { i64, [0 x i64] }*
  %_1092 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1087, i32 0, i32 1, i32 2
  store i64 3, i64* %_1092
  %_1090 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1087, i32 0, i32 1, i32 1
  store i64 2, i64* %_1090
  %_1088 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1087, i32 0, i32 1, i32 0
  store i64 1, i64* %_1088
  %_raw_array1084 = call i64* @oat_alloc_array(i64 2)
  %_array1085 = bitcast i64* %_raw_array1084 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1104 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1085, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1095, { i64, [0 x i64] }** %_1104
  %_1102 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1085, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1087, { i64, [0 x i64] }** %_1102
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1085, { i64, [0 x { i64, [0 x i64] }*] }** %_1083
  %_id_garr1107 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1083
  %_index_pointer1108 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_garr1107, i32 0, i32 1, i32 1
  %_index_value1109 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1108
  %_1110 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_index_value1109)
  store { i64, [0 x i64] }* %_1110, { i64, [0 x i64] }** %_1106
  %_id_arr1111 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1106
  %_index_pointer1112 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1111, i32 0, i32 1, i32 1
  %_index_value1113 = load i64, i64* %_index_pointer1112
  ret i64 %_index_value1113
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
