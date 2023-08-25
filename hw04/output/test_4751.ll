; generated from: hw4programs/run39.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f1(i64 %i) {
  %_i734 = alloca i64
  store i64 %i, i64* %_i734
  %_id_i735 = load i64, i64* %_i734
  %_736 = call i64 @f2(i64 %_id_i735)
  ret i64 %_736
}

define i64 @f2(i64 %i) {
  %_i731 = alloca i64
  store i64 %i, i64* %_i731
  %_id_i732 = load i64, i64* %_i731
  %_733 = call i64 @f3(i64 %_id_i732)
  ret i64 %_733
}

define i64 @f3(i64 %i) {
  %_i728 = alloca i64
  store i64 %i, i64* %_i728
  %_id_i729 = load i64, i64* %_i728
  %_730 = call i64 @f4(i64 %_id_i729)
  ret i64 %_730
}

define i64 @f4(i64 %i) {
  %_i725 = alloca i64
  store i64 %i, i64* %_i725
  %_id_i726 = load i64, i64* %_i725
  %_727 = call i64 @f5(i64 %_id_i726)
  ret i64 %_727
}

define i64 @f5(i64 %i) {
  %_i722 = alloca i64
  store i64 %i, i64* %_i722
  %_id_i723 = load i64, i64* %_i722
  %_724 = call i64 @f6(i64 %_id_i723)
  ret i64 %_724
}

define i64 @f6(i64 %i) {
  %_i719 = alloca i64
  store i64 %i, i64* %_i719
  %_id_i720 = load i64, i64* %_i719
  %_721 = call i64 @f7(i64 %_id_i720)
  ret i64 %_721
}

define i64 @f7(i64 %i) {
  %_i716 = alloca i64
  store i64 %i, i64* %_i716
  %_id_i717 = load i64, i64* %_i716
  %_718 = call i64 @f8(i64 %_id_i717)
  ret i64 %_718
}

define i64 @f8(i64 %i) {
  %_i713 = alloca i64
  store i64 %i, i64* %_i713
  %_id_i714 = load i64, i64* %_i713
  %_715 = call i64 @f9(i64 %_id_i714)
  ret i64 %_715
}

define i64 @f9(i64 %i) {
  %_i711 = alloca i64
  store i64 %i, i64* %_i711
  %_id_i712 = load i64, i64* %_i711
  ret i64 %_id_i712
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc707 = alloca i64
  %_argv708 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc707
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv708
  %_id_argc709 = load i64, i64* %_argc707
  %_710 = call i64 @f1(i64 %_id_argc709)
  ret i64 %_710
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
