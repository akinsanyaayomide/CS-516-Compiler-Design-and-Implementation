; generated from: hw4programs/run33.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc407 = alloca i64
  %_argv408 = alloca { i64, [0 x i8*] }*
  %_409 = alloca { i64, [0 x i1] }*
  %_416 = alloca i64
  store i64 %argc, i64* %_argc407
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv408
  %_raw_array410 = call i64* @oat_alloc_array(i64 2)
  %_array411 = bitcast i64* %_raw_array410 to { i64, [0 x i1] }*
  %_414 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array411, i32 0, i32 1, i32 1
  store i1 0, i1* %_414
  %_412 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array411, i32 0, i32 1, i32 0
  store i1 1, i1* %_412
  store { i64, [0 x i1] }* %_array411, { i64, [0 x i1] }** %_409
  store i64 0, i64* %_416
  br label %_start420
_start420:
  %_id_b417 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_409
  %_index_pointer418 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_b417, i32 0, i32 1, i32 0
  %_index_value419 = load i1, i1* %_index_pointer418
  br i1 %_index_value419, label %_then421, label %_else422
_then421:
  store i64 1, i64* %_416
  br label %_post423
_else422:
  br label %_post423
_post423:
  %_id_i424 = load i64, i64* %_416
  ret i64 %_id_i424
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
