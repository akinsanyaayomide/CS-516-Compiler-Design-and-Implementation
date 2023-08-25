; generated from: hw4programs/run38.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f1() {
  %_456 = call i64 @f2()
  ret i64 %_456
}

define i64 @f2() {
  %_455 = call i64 @f3()
  ret i64 %_455
}

define i64 @f3() {
  %_454 = call i64 @f4()
  ret i64 %_454
}

define i64 @f4() {
  %_453 = call i64 @f5()
  ret i64 %_453
}

define i64 @f5() {
  %_452 = call i64 @f6()
  ret i64 %_452
}

define i64 @f6() {
  %_451 = call i64 @f7()
  ret i64 %_451
}

define i64 @f7() {
  %_450 = call i64 @f8()
  ret i64 %_450
}

define i64 @f8() {
  %_449 = call i64 @f9()
  ret i64 %_449
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc446 = alloca i64
  %_argv447 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc446
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv447
  %_448 = call i64 @f1()
  ret i64 %_448
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
