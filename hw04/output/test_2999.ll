; generated from: hw4programs/run32.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 11

define i64 @f() {
  %_402 = alloca i64
  store i64 12, i64* %_402
  %_id_i403 = load i64, i64* %_402
  ret i64 %_id_i403
}

define i64 @g() {
  %_400 = alloca i64
  store i64 10, i64* %_400
  %_id_i401 = load i64, i64* %_400
  ret i64 %_id_i401
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc393 = alloca i64
  %_argv394 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc393
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv394
  %_id_i398 = load i64, i64* @i
  %_396 = call i64 @g()
  %_395 = call i64 @f()
  %_397 = add i64 %_395, %_396
  %_399 = add i64 %_397, %_id_i398
  ret i64 %_399
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
