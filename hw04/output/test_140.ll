; generated from: hw4programs/run38.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f1() {
  %_591 = call i64 @f2()
  ret i64 %_591
}

define i64 @f2() {
  %_590 = call i64 @f3()
  ret i64 %_590
}

define i64 @f3() {
  %_589 = call i64 @f4()
  ret i64 %_589
}

define i64 @f4() {
  %_588 = call i64 @f5()
  ret i64 %_588
}

define i64 @f5() {
  %_587 = call i64 @f6()
  ret i64 %_587
}

define i64 @f6() {
  %_586 = call i64 @f7()
  ret i64 %_586
}

define i64 @f7() {
  %_585 = call i64 @f8()
  ret i64 %_585
}

define i64 @f8() {
  %_584 = call i64 @f9()
  ret i64 %_584
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc581 = alloca i64
  %_argv582 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc581
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv582
  %_583 = call i64 @f1()
  ret i64 %_583
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
