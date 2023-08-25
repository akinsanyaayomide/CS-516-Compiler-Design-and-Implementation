; generated from: hw4programs/run32.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 11

define i64 @f() {
  %_429 = alloca i64
  store i64 12, i64* %_429
  %_id_i430 = load i64, i64* %_429
  ret i64 %_id_i430
}

define i64 @g() {
  %_427 = alloca i64
  store i64 10, i64* %_427
  %_id_i428 = load i64, i64* %_427
  ret i64 %_id_i428
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc420 = alloca i64
  %_argv421 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc420
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv421
  %_422 = call i64 @f()
  %_423 = call i64 @g()
  %_bop424 = add i64 %_422, %_423
  %_id_i425 = load i64, i64* @i
  %_bop426 = add i64 %_bop424, %_id_i425
  ret i64 %_bop426
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
