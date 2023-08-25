; generated from: hw4programs/run10.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %arr) {
  %_arr1238 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1238
  %_id_arr1239 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1238
  ret { i64, [0 x i64] }* %_id_arr1239
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1197 = alloca i64
  %_argv1198 = alloca { i64, [0 x i8*] }*
  %_1199 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1230 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1197
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1198
  %_raw_array1213 = call i64* @oat_alloc_array(i64 3)
  %_array1214 = bitcast i64* %_raw_array1213 to { i64, [0 x i64] }*
  %_1223 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1214, i32 0, i32 1, i32 2
  store i64 6, i64* %_1221
  %_1220 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1214, i32 0, i32 1, i32 1
  store i64 5, i64* %_1218
  %_1217 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1214, i32 0, i32 1, i32 0
  store i64 4, i64* %_1215
  %_raw_array1202 = call i64* @oat_alloc_array(i64 3)
  %_array1203 = bitcast i64* %_raw_array1202 to { i64, [0 x i64] }*
  %_1212 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1203, i32 0, i32 1, i32 2
  store i64 3, i64* %_1210
  %_1209 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1203, i32 0, i32 1, i32 1
  store i64 2, i64* %_1207
  %_1206 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1203, i32 0, i32 1, i32 0
  store i64 1, i64* %_1204
  %_raw_array1200 = call i64* @oat_alloc_array(i64 2)
  %_array1201 = bitcast i64* %_raw_array1200 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1229 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1201, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1214, { i64, [0 x i64] }** %_1227
  %_1226 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1201, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1203, { i64, [0 x i64] }** %_1224
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1201, { i64, [0 x { i64, [0 x i64] }*] }** %_1199
  %_id_garr1231 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1199
  %_index_pointer1233 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_garr1231, i32 0, i32 1, i32 1
  %_index_value1232 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1233
  %_1234 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_index_value1232)
  store { i64, [0 x i64] }* %_1234, { i64, [0 x i64] }** %_1230
  %_id_arr1235 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1230
  %_index_pointer1237 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1235, i32 0, i32 1, i32 1
  %_index_value1236 = load i64, i64* %_index_pointer1237
  ret i64 %_index_value1236
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
