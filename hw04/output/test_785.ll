; generated from: hw4programs/run9.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1055 = alloca i64
  %_argv1056 = alloca { i64, [0 x i8*] }*
  %_1057 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1055
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1056
  %_raw_array1066 = call i64* @oat_alloc_array(i64 2)
  %_array1067 = bitcast i64* %_raw_array1066 to { i64, [0 x i64] }*
  %_1070 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1067, i32 0, i32 1, i32 1
  store i64 4, i64* %_1070
  %_1068 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1067, i32 0, i32 1, i32 0
  store i64 3, i64* %_1068
  %_raw_array1060 = call i64* @oat_alloc_array(i64 2)
  %_array1061 = bitcast i64* %_raw_array1060 to { i64, [0 x i64] }*
  %_1064 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1061, i32 0, i32 1, i32 1
  store i64 2, i64* %_1064
  %_1062 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1061, i32 0, i32 1, i32 0
  store i64 1, i64* %_1062
  %_raw_array1058 = call i64* @oat_alloc_array(i64 2)
  %_array1059 = bitcast i64* %_raw_array1058 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1074 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1059, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1067, { i64, [0 x i64] }** %_1074
  %_1072 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1059, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1061, { i64, [0 x i64] }** %_1072
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1059, { i64, [0 x { i64, [0 x i64] }*] }** %_1057
  %_id_arr1076 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1057
  %_index_pointer1077 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr1076, i32 0, i32 1, i32 1
  %_index_value1078 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1077
  %_index_pointer1079 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1078, i32 0, i32 1, i32 1
  %_index_value1080 = load i64, i64* %_index_pointer1079
  ret i64 %_index_value1080
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
