; generated from: hw4programs/run38.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f1() {
  %_603 = call i64 @f2()
  ret i64 %_603
}

define i64 @f2() {
  %_602 = call i64 @f3()
  ret i64 %_602
}

define i64 @f3() {
  %_601 = call i64 @f4()
  ret i64 %_601
}

define i64 @f4() {
  %_600 = call i64 @f5()
  ret i64 %_600
}

define i64 @f5() {
  %_599 = call i64 @f6()
  ret i64 %_599
}

define i64 @f6() {
  %_598 = call i64 @f7()
  ret i64 %_598
}

define i64 @f7() {
  %_597 = call i64 @f8()
  ret i64 %_597
}

define i64 @f8() {
  %_596 = call i64 @f9()
  ret i64 %_596
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc593 = alloca i64
  %_argv594 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc593
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv594
  %_595 = call i64 @f1()
  ret i64 %_595
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
