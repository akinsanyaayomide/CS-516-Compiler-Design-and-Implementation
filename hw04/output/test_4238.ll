; generated from: hw4programs/run9.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1165 = alloca i64
  %_argv1166 = alloca { i64, [0 x i8*] }*
  %_1167 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1165
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1166
  %_raw_array1178 = call i64* @oat_alloc_array(i64 2)
  %_array1179 = bitcast i64* %_raw_array1178 to { i64, [0 x i64] }*
  %_1185 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1179, i32 0, i32 1, i32 1
  store i64 4, i64* %_1183
  %_1182 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1179, i32 0, i32 1, i32 0
  store i64 3, i64* %_1180
  %_raw_array1170 = call i64* @oat_alloc_array(i64 2)
  %_array1171 = bitcast i64* %_raw_array1170 to { i64, [0 x i64] }*
  %_1177 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1171, i32 0, i32 1, i32 1
  store i64 2, i64* %_1175
  %_1174 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1171, i32 0, i32 1, i32 0
  store i64 1, i64* %_1172
  %_raw_array1168 = call i64* @oat_alloc_array(i64 2)
  %_array1169 = bitcast i64* %_raw_array1168 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1191 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1169, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1179, { i64, [0 x i64] }** %_1189
  %_1188 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1169, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1171, { i64, [0 x i64] }** %_1186
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1169, { i64, [0 x { i64, [0 x i64] }*] }** %_1167
  %_id_arr1192 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1167
  %_index_pointer1194 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr1192, i32 0, i32 1, i32 1
  %_index_value1193 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1194
  %_index_pointer1196 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1193, i32 0, i32 1, i32 1
  %_index_value1195 = load i64, i64* %_index_pointer1196
  ret i64 %_index_value1195
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
