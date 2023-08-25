; generated from: hw4programs/run32.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 11

define i64 @f() {
  %_405 = alloca i64
  store i64 12, i64* %_405
  %_id_i406 = load i64, i64* %_405
  ret i64 %_id_i406
}

define i64 @g() {
  %_403 = alloca i64
  store i64 10, i64* %_403
  %_id_i404 = load i64, i64* %_403
  ret i64 %_id_i404
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc396 = alloca i64
  %_argv397 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc396
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv397
  %_id_i401 = load i64, i64* @i
  %_399 = call i64 @g()
  %_398 = call i64 @f()
  %_400 = add i64 %_398, %_399
  %_402 = add i64 %_400, %_id_i401
  ret i64 %_402
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
