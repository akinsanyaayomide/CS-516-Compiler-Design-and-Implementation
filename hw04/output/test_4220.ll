; generated from: hw4programs/run38.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f1() {
  %_672 = call i64 @f2()
  ret i64 %_672
}

define i64 @f2() {
  %_671 = call i64 @f3()
  ret i64 %_671
}

define i64 @f3() {
  %_670 = call i64 @f4()
  ret i64 %_670
}

define i64 @f4() {
  %_669 = call i64 @f5()
  ret i64 %_669
}

define i64 @f5() {
  %_668 = call i64 @f6()
  ret i64 %_668
}

define i64 @f6() {
  %_667 = call i64 @f7()
  ret i64 %_667
}

define i64 @f7() {
  %_666 = call i64 @f8()
  ret i64 %_666
}

define i64 @f8() {
  %_665 = call i64 @f9()
  ret i64 %_665
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc662 = alloca i64
  %_argv663 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc662
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv663
  %_664 = call i64 @f1()
  ret i64 %_664
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
