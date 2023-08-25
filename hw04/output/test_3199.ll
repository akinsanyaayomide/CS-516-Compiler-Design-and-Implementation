; generated from: hw4programs/run23.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string1361 = global [4 x i8] c"123\00"
@_string1359 = global [4 x i8] c"789\00"
@_string1351 = global [4 x i8] c"def\00"
@_string1349 = global [4 x i8] c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1342 = alloca i64
  %_argv1343 = alloca { i64, [0 x i8*] }*
  %_1344 = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  store i64 %argc, i64* %_argc1342
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1343
  %_string11362 = getelementptr [4 x i8], [4 x i8]* @_string1361, i32 0, i32 0
  %_string11360 = getelementptr [4 x i8], [4 x i8]* @_string1359, i32 0, i32 0
  %_raw_array1357 = call i64* @oat_alloc_array(i64 2)
  %_array1358 = bitcast i64* %_raw_array1357 to { i64, [0 x i8*] }*
  %_1365 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1358, i32 0, i32 1, i32 1
  store i8* %_string11362, i8** %_1365
  %_1363 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1358, i32 0, i32 1, i32 0
  store i8* %_string11360, i8** %_1363
  %_string11352 = getelementptr [4 x i8], [4 x i8]* @_string1351, i32 0, i32 0
  %_string11350 = getelementptr [4 x i8], [4 x i8]* @_string1349, i32 0, i32 0
  %_raw_array1347 = call i64* @oat_alloc_array(i64 2)
  %_array1348 = bitcast i64* %_raw_array1347 to { i64, [0 x i8*] }*
  %_1355 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1348, i32 0, i32 1, i32 1
  store i8* %_string11352, i8** %_1355
  %_1353 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1348, i32 0, i32 1, i32 0
  store i8* %_string11350, i8** %_1353
  %_raw_array1345 = call i64* @oat_alloc_array(i64 2)
  %_array1346 = bitcast i64* %_raw_array1345 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_1369 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1346, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array1358, { i64, [0 x i8*] }** %_1369
  %_1367 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1346, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array1348, { i64, [0 x i8*] }** %_1367
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array1346, { i64, [0 x { i64, [0 x i8*] }*] }** %_1344
  %_id_strs1371 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_1344
  %_index_pointer1372 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_id_strs1371, i32 0, i32 1, i32 1
  %_index_value1373 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_index_pointer1372
  %_index_pointer1374 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_index_value1373, i32 0, i32 1, i32 1
  %_index_value1375 = load i8*, i8** %_index_pointer1374
  call void @print_string(i8* %_index_value1375)
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
