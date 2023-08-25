; generated from: hw4programs/run6.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1041 = alloca i64
  %_argv1042 = alloca { i64, [0 x i8*] }*
  %_1043 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1041
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1042
  %_raw_array1054 = call i64* @oat_alloc_array(i64 2)
  %_array1055 = bitcast i64* %_raw_array1054 to { i64, [0 x i64] }*
  %_1061 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1055, i32 0, i32 1, i32 1
  store i64 4, i64* %_1059
  %_1058 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1055, i32 0, i32 1, i32 0
  store i64 3, i64* %_1056
  %_raw_array1046 = call i64* @oat_alloc_array(i64 2)
  %_array1047 = bitcast i64* %_raw_array1046 to { i64, [0 x i64] }*
  %_1053 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1047, i32 0, i32 1, i32 1
  store i64 2, i64* %_1051
  %_1050 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1047, i32 0, i32 1, i32 0
  store i64 1, i64* %_1048
  %_raw_array1044 = call i64* @oat_alloc_array(i64 2)
  %_array1045 = bitcast i64* %_raw_array1044 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1067 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1045, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1055, { i64, [0 x i64] }** %_1065
  %_1064 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1045, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1047, { i64, [0 x i64] }** %_1062
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1045, { i64, [0 x { i64, [0 x i64] }*] }** %_1043
  %_id_arr1068 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1043
  %_index_pointer1070 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr1068, i32 0, i32 1, i32 0
  %_index_value1069 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1070
  %_index_pointer1072 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1069, i32 0, i32 1, i32 0
  %_index_value1071 = load i64, i64* %_index_pointer1072
  ret i64 %_index_value1071
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
