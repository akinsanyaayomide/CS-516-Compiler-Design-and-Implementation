; generated from: hw4programs/run8.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1151 = alloca i64
  %_argv1152 = alloca { i64, [0 x i8*] }*
  %_1153 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1151
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1152
  %_raw_array1154 = call i64* @oat_alloc_array(i64 2)
  %_array1155 = bitcast i64* %_raw_array1154 to { i64, [0 x i64] }*
  %_1161 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1155, i32 0, i32 1, i32 1
  store i64 2, i64* %_1159
  %_1158 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1155, i32 0, i32 1, i32 0
  store i64 1, i64* %_1156
  store { i64, [0 x i64] }* %_array1155, { i64, [0 x i64] }** %_1153
  %_id_arr1162 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1153
  %_index_pointer1164 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1162, i32 0, i32 1, i32 1
  %_index_value1163 = load i64, i64* %_index_pointer1164
  ret i64 %_index_value1163
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
