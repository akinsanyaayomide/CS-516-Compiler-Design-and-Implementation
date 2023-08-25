; generated from: hw4programs/run38.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f1() {
  %_706 = call i64 @f2()
  ret i64 %_706
}

define i64 @f2() {
  %_705 = call i64 @f3()
  ret i64 %_705
}

define i64 @f3() {
  %_704 = call i64 @f4()
  ret i64 %_704
}

define i64 @f4() {
  %_703 = call i64 @f5()
  ret i64 %_703
}

define i64 @f5() {
  %_702 = call i64 @f6()
  ret i64 %_702
}

define i64 @f6() {
  %_701 = call i64 @f7()
  ret i64 %_701
}

define i64 @f7() {
  %_700 = call i64 @f8()
  ret i64 %_700
}

define i64 @f8() {
  %_699 = call i64 @f9()
  ret i64 %_699
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc696 = alloca i64
  %_argv697 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc696
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv697
  %_698 = call i64 @f1()
  ret i64 %_698
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
