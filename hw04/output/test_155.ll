; generated from: hw4programs/run10.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %arr) {
  %_arr1069 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1069
  %_id_arr1070 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1069
  ret { i64, [0 x i64] }* %_id_arr1070
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1036 = alloca i64
  %_argv1037 = alloca { i64, [0 x i8*] }*
  %_1038 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1061 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1036
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1037
  %_raw_array1049 = call i64* @oat_alloc_array(i64 3)
  %_array1050 = bitcast i64* %_raw_array1049 to { i64, [0 x i64] }*
  %_1055 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1050, i32 0, i32 1, i32 2
  store i64 6, i64* %_1055
  %_1053 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1050, i32 0, i32 1, i32 1
  store i64 5, i64* %_1053
  %_1051 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1050, i32 0, i32 1, i32 0
  store i64 4, i64* %_1051
  %_raw_array1041 = call i64* @oat_alloc_array(i64 3)
  %_array1042 = bitcast i64* %_raw_array1041 to { i64, [0 x i64] }*
  %_1047 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1042, i32 0, i32 1, i32 2
  store i64 3, i64* %_1047
  %_1045 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1042, i32 0, i32 1, i32 1
  store i64 2, i64* %_1045
  %_1043 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1042, i32 0, i32 1, i32 0
  store i64 1, i64* %_1043
  %_raw_array1039 = call i64* @oat_alloc_array(i64 2)
  %_array1040 = bitcast i64* %_raw_array1039 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1059 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1040, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1050, { i64, [0 x i64] }** %_1059
  %_1057 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1040, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1042, { i64, [0 x i64] }** %_1057
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1040, { i64, [0 x { i64, [0 x i64] }*] }** %_1038
  %_id_garr1062 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1038
  %_index_pointer1063 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_garr1062, i32 0, i32 1, i32 1
  %_index_value1064 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1063
  %_1065 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_index_value1064)
  store { i64, [0 x i64] }* %_1065, { i64, [0 x i64] }** %_1061
  %_id_arr1066 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1061
  %_index_pointer1067 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1066, i32 0, i32 1, i32 1
  %_index_value1068 = load i64, i64* %_index_pointer1067
  ret i64 %_index_value1068
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
