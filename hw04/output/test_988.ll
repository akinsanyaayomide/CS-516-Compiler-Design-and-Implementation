; generated from: hw4programs/fact.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @fact(i64 %x) {
  %_x800 = alloca i64
  %_801 = alloca i64
  store i64 %x, i64* %_x800
  store i64 1, i64* %_801
  br label %_start809
_start809:
  %_id_x802 = load i64, i64* %_x800
  %_803 = icmp sgt i64 %_id_x802, 0
  br i1 %_803, label %_body810, label %_else811
_body810:
  %_id_x805 = load i64, i64* %_x800
  %_id_acc804 = load i64, i64* %_801
  %_806 = mul i64 %_id_acc804, %_id_x805
  store i64 %_806, i64* %_801
  %_id_x807 = load i64, i64* %_x800
  %_808 = sub i64 %_id_x807, 1
  store i64 %_808, i64* %_x800
  br label %_start809
_else811:
  %_id_acc812 = load i64, i64* %_801
  ret i64 %_id_acc812
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc795 = alloca i64
  %_argv796 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc795
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv796
  %_797 = call i64 @fact(i64 5)
  %_798 = call i8* @string_of_int(i64 %_797)
  call void @print_string(i8* %_798)
  ret i64 0
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
