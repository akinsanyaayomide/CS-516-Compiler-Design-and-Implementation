; generated from: hw4programs/run13.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f(i64 %x, i64 %y) {
  %_x367 = alloca i64
  %_y368 = alloca i64
  store i64 %x, i64* %_x367
  store i64 %y, i64* %_y368
  %_id_x369 = load i64, i64* %_x367
  ret i64 %_id_x369
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc364 = alloca i64
  %_argv365 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc364
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv365
  %_366 = call i64 @f(i64 1, i64 2)
  ret i64 %_366
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
