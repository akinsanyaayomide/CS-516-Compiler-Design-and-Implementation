; generated from: hw4programs/run25.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1382 = alloca i64
  %_argv1383 = alloca { i64, [0 x i8*] }*
  %_1384 = alloca { i64, [0 x i64] }*
  %_1393 = alloca i8*
  store i64 %argc, i64* %_argc1382
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1383
  %_raw_array1385 = call i64* @oat_alloc_array(i64 3)
  %_array1386 = bitcast i64* %_raw_array1385 to { i64, [0 x i64] }*
  %_1391 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1386, i32 0, i32 1, i32 2
  store i64 110, i64* %_1391
  %_1389 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1386, i32 0, i32 1, i32 1
  store i64 110, i64* %_1389
  %_1387 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1386, i32 0, i32 1, i32 0
  store i64 110, i64* %_1387
  store { i64, [0 x i64] }* %_array1386, { i64, [0 x i64] }** %_1384
  %_id_a1394 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1384
  %_1395 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a1394)
  store i8* %_1395, i8** %_1393
  %_id_str1396 = load i8*, i8** %_1393
  call void @print_string(i8* %_id_str1396)
  ret i64 0
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
