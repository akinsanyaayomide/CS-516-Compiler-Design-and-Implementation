; generated from: hw4programs/run32.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 11

define i64 @f() {
  %_415 = alloca i64
  store i64 12, i64* %_415
  %_id_i416 = load i64, i64* %_415
  ret i64 %_id_i416
}

define i64 @g() {
  %_413 = alloca i64
  store i64 10, i64* %_413
  %_id_i414 = load i64, i64* %_413
  ret i64 %_id_i414
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc406 = alloca i64
  %_argv407 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc406
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv407
  %_id_i411 = load i64, i64* @i
  %_409 = call i64 @g()
  %_408 = call i64 @f()
  %_410 = add i64 %_408, %_409
  %_412 = add i64 %_410, %_id_i411
  ret i64 %_412
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
