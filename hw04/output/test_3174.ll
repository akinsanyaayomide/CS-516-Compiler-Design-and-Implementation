; generated from: hw4programs/run37.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc399 = alloca i64
  %_argv400 = alloca { i64, [0 x i8*] }*
  %_401 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc399
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv400
  %_raw_array410 = call i64* @oat_alloc_array(i64 2)
  %_array411 = bitcast i64* %_raw_array410 to { i64, [0 x i64] }*
  %_414 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array411, i32 0, i32 1, i32 1
  store i64 4, i64* %_414
  %_412 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array411, i32 0, i32 1, i32 0
  store i64 3, i64* %_412
  %_raw_array404 = call i64* @oat_alloc_array(i64 2)
  %_array405 = bitcast i64* %_raw_array404 to { i64, [0 x i64] }*
  %_408 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array405, i32 0, i32 1, i32 1
  store i64 2, i64* %_408
  %_406 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array405, i32 0, i32 1, i32 0
  store i64 1, i64* %_406
  %_raw_array402 = call i64* @oat_alloc_array(i64 2)
  %_array403 = bitcast i64* %_raw_array402 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_418 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array403, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array411, { i64, [0 x i64] }** %_418
  %_416 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array403, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array405, { i64, [0 x i64] }** %_416
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array403, { i64, [0 x { i64, [0 x i64] }*] }** %_401
  %_id_a420 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_401
  %_index_pointer421 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a420, i32 0, i32 1, i32 0
  %_index_value422 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer421
  %_index_pointer423 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value422, i32 0, i32 1, i32 1
  %_index_value424 = load i64, i64* %_index_pointer423
  ret i64 %_index_value424
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
