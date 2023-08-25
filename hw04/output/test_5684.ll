; generated from: hw4programs/run38.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f1() {
  %_618 = call i64 @f2()
  ret i64 %_618
}

define i64 @f2() {
  %_617 = call i64 @f3()
  ret i64 %_617
}

define i64 @f3() {
  %_616 = call i64 @f4()
  ret i64 %_616
}

define i64 @f4() {
  %_615 = call i64 @f5()
  ret i64 %_615
}

define i64 @f5() {
  %_614 = call i64 @f6()
  ret i64 %_614
}

define i64 @f6() {
  %_613 = call i64 @f7()
  ret i64 %_613
}

define i64 @f7() {
  %_612 = call i64 @f8()
  ret i64 %_612
}

define i64 @f8() {
  %_611 = call i64 @f9()
  ret i64 %_611
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc608 = alloca i64
  %_argv609 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc608
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv609
  %_610 = call i64 @f1()
  ret i64 %_610
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
