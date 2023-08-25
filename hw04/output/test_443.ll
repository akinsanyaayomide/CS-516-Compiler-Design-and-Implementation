; generated from: hw4programs/run32.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 11

define i64 @f() {
  %_419 = alloca i64
  store i64 12, i64* %_419
  %_id_i420 = load i64, i64* %_419
  ret i64 %_id_i420
}

define i64 @g() {
  %_417 = alloca i64
  store i64 10, i64* %_417
  %_id_i418 = load i64, i64* %_417
  ret i64 %_id_i418
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc410 = alloca i64
  %_argv411 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc410
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv411
  %_id_i415 = load i64, i64* @i
  %_413 = call i64 @g()
  %_412 = call i64 @f()
  %_414 = add i64 %_412, %_413
  %_416 = add i64 %_414, %_id_i415
  ret i64 %_416
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
