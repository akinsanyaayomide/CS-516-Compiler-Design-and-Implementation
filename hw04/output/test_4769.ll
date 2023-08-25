; generated from: hw4programs/run10.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %arr) {
  %_arr1386 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1386
  %_id_arr1387 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1386
  ret { i64, [0 x i64] }* %_id_arr1387
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1337 = alloca i64
  %_argv1338 = alloca { i64, [0 x i8*] }*
  %_1339 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1378 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1337
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1338
  %_raw_array1350 = call i64* @oat_alloc_array(i64 3)
  %_array1351 = bitcast i64* %_raw_array1350 to { i64, [0 x i64] }*
  %_1356 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1351, i32 0, i32 1, i32 2
  store i64 6, i64* %_1356
  %_1354 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1351, i32 0, i32 1, i32 1
  store i64 5, i64* %_1354
  %_1352 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1351, i32 0, i32 1, i32 0
  store i64 4, i64* %_1352
  %_raw_array1342 = call i64* @oat_alloc_array(i64 3)
  %_array1343 = bitcast i64* %_raw_array1342 to { i64, [0 x i64] }*
  %_1348 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1343, i32 0, i32 1, i32 2
  store i64 3, i64* %_1348
  %_1346 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1343, i32 0, i32 1, i32 1
  store i64 2, i64* %_1346
  %_1344 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1343, i32 0, i32 1, i32 0
  store i64 1, i64* %_1344
  %_raw_array1340 = call i64* @oat_alloc_array(i64 2)
  %_array1341 = bitcast i64* %_raw_array1340 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1376 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1341, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1367, { i64, [0 x i64] }** %_1376
  %_1374 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1341, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1359, { i64, [0 x i64] }** %_1374
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1341, { i64, [0 x { i64, [0 x i64] }*] }** %_1339
  %_id_garr1379 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1339
  %_index_pointer1381 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_garr1379, i32 0, i32 1, i32 1
  %_index_value1380 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1381
  %_1382 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_index_value1380)
  store { i64, [0 x i64] }* %_1382, { i64, [0 x i64] }** %_1378
  %_id_arr1383 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1378
  %_index_pointer1385 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1383, i32 0, i32 1, i32 1
  %_index_value1384 = load i64, i64* %_index_pointer1385
  ret i64 %_index_value1384
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
