; generated from: hw4programs/run40.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 8

define i64 @f() {
  %_470 = alloca i64
  store i64 0, i64* %_470
  %_471 = call i64 @g()
  store i64 %_471, i64* %_470
  %_id_j472 = load i64, i64* %_470
  ret i64 %_id_j472
}

define i64 @g() {
  %_id_i469 = load i64, i64* @i
  ret i64 %_id_i469
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc466 = alloca i64
  %_argv467 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc466
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv467
  %_468 = call i64 @f()
  ret i64 %_468
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
