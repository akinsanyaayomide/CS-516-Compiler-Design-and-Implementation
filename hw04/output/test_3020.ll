; generated from: hw4programs/run10.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %arr) {
  %_arr1070 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1070
  %_id_arr1071 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1070
  ret { i64, [0 x i64] }* %_id_arr1071
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1037 = alloca i64
  %_argv1038 = alloca { i64, [0 x i8*] }*
  %_1039 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1062 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1037
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1038
  %_raw_array1050 = call i64* @oat_alloc_array(i64 3)
  %_array1051 = bitcast i64* %_raw_array1050 to { i64, [0 x i64] }*
  %_1056 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1051, i32 0, i32 1, i32 2
  store i64 6, i64* %_1056
  %_1054 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1051, i32 0, i32 1, i32 1
  store i64 5, i64* %_1054
  %_1052 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1051, i32 0, i32 1, i32 0
  store i64 4, i64* %_1052
  %_raw_array1042 = call i64* @oat_alloc_array(i64 3)
  %_array1043 = bitcast i64* %_raw_array1042 to { i64, [0 x i64] }*
  %_1048 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1043, i32 0, i32 1, i32 2
  store i64 3, i64* %_1048
  %_1046 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1043, i32 0, i32 1, i32 1
  store i64 2, i64* %_1046
  %_1044 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1043, i32 0, i32 1, i32 0
  store i64 1, i64* %_1044
  %_raw_array1040 = call i64* @oat_alloc_array(i64 2)
  %_array1041 = bitcast i64* %_raw_array1040 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1060 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1041, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1051, { i64, [0 x i64] }** %_1060
  %_1058 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1041, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1043, { i64, [0 x i64] }** %_1058
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1041, { i64, [0 x { i64, [0 x i64] }*] }** %_1039
  %_id_garr1063 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1039
  %_index_pointer1064 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_garr1063, i32 0, i32 1, i32 1
  %_index_value1065 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1064
  %_1066 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_index_value1065)
  store { i64, [0 x i64] }* %_1066, { i64, [0 x i64] }** %_1062
  %_id_arr1067 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1062
  %_index_pointer1068 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1067, i32 0, i32 1, i32 1
  %_index_value1069 = load i64, i64* %_index_pointer1068
  ret i64 %_index_value1069
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
