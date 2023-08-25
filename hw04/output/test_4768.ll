; generated from: hw4programs/run9.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1299 = alloca i64
  %_argv1300 = alloca { i64, [0 x i8*] }*
  %_1301 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1299
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1300
  %_raw_array1310 = call i64* @oat_alloc_array(i64 2)
  %_array1311 = bitcast i64* %_raw_array1310 to { i64, [0 x i64] }*
  %_1314 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1311, i32 0, i32 1, i32 1
  store i64 4, i64* %_1314
  %_1312 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1311, i32 0, i32 1, i32 0
  store i64 3, i64* %_1312
  %_raw_array1304 = call i64* @oat_alloc_array(i64 2)
  %_array1305 = bitcast i64* %_raw_array1304 to { i64, [0 x i64] }*
  %_1308 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1305, i32 0, i32 1, i32 1
  store i64 2, i64* %_1308
  %_1306 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1305, i32 0, i32 1, i32 0
  store i64 1, i64* %_1306
  %_raw_array1302 = call i64* @oat_alloc_array(i64 2)
  %_array1303 = bitcast i64* %_raw_array1302 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1330 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1303, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1323, { i64, [0 x i64] }** %_1330
  %_1328 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1303, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1317, { i64, [0 x i64] }** %_1328
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1303, { i64, [0 x { i64, [0 x i64] }*] }** %_1301
  %_id_arr1332 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1301
  %_index_pointer1334 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr1332, i32 0, i32 1, i32 1
  %_index_value1333 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1334
  %_index_pointer1336 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1333, i32 0, i32 1, i32 1
  %_index_value1335 = load i64, i64* %_index_pointer1336
  ret i64 %_index_value1335
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
