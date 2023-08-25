; generated from: hw4programs/run38.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f1() {
  %_435 = call i64 @f2()
  ret i64 %_435
}

define i64 @f2() {
  %_434 = call i64 @f3()
  ret i64 %_434
}

define i64 @f3() {
  %_433 = call i64 @f4()
  ret i64 %_433
}

define i64 @f4() {
  %_432 = call i64 @f5()
  ret i64 %_432
}

define i64 @f5() {
  %_431 = call i64 @f6()
  ret i64 %_431
}

define i64 @f6() {
  %_430 = call i64 @f7()
  ret i64 %_430
}

define i64 @f7() {
  %_429 = call i64 @f8()
  ret i64 %_429
}

define i64 @f8() {
  %_428 = call i64 @f9()
  ret i64 %_428
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc425 = alloca i64
  %_argv426 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc425
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv426
  %_427 = call i64 @f1()
  ret i64 %_427
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
