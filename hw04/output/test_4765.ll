; generated from: hw4programs/run6.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1088 = alloca i64
  %_argv1089 = alloca { i64, [0 x i8*] }*
  %_1090 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1088
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1089
  %_raw_array1099 = call i64* @oat_alloc_array(i64 2)
  %_array1100 = bitcast i64* %_raw_array1099 to { i64, [0 x i64] }*
  %_1103 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1100, i32 0, i32 1, i32 1
  store i64 4, i64* %_1103
  %_1101 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1100, i32 0, i32 1, i32 0
  store i64 3, i64* %_1101
  %_raw_array1093 = call i64* @oat_alloc_array(i64 2)
  %_array1094 = bitcast i64* %_raw_array1093 to { i64, [0 x i64] }*
  %_1097 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1094, i32 0, i32 1, i32 1
  store i64 2, i64* %_1097
  %_1095 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1094, i32 0, i32 1, i32 0
  store i64 1, i64* %_1095
  %_raw_array1091 = call i64* @oat_alloc_array(i64 2)
  %_array1092 = bitcast i64* %_raw_array1091 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1119 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1092, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1112, { i64, [0 x i64] }** %_1119
  %_1117 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1092, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1106, { i64, [0 x i64] }** %_1117
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1092, { i64, [0 x { i64, [0 x i64] }*] }** %_1090
  %_id_arr1121 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1090
  %_index_pointer1123 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr1121, i32 0, i32 1, i32 0
  %_index_value1122 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1123
  %_index_pointer1125 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1122, i32 0, i32 1, i32 0
  %_index_value1124 = load i64, i64* %_index_pointer1125
  ret i64 %_index_value1124
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
