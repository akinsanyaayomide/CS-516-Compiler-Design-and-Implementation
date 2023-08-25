; generated from: hw4programs/fact.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @fact(i64 %x) {
  %_x908 = alloca i64
  %_909 = alloca i64
  store i64 %x, i64* %_x908
  store i64 1, i64* %_909
  br label %_cond918
_cond918:
  %_id_x910 = load i64, i64* %_x908
  %_bop911 = icmp sgt i64 %_id_x910, 0
  br i1 %_bop911, label %_if917, label %_merge919
_if917:
  %_id_acc912 = load i64, i64* %_909
  %_id_x913 = load i64, i64* %_x908
  %_bop914 = mul i64 %_id_acc912, %_id_x913
  store i64 %_bop914, i64* %_909
  %_id_x915 = load i64, i64* %_x908
  %_bop916 = sub i64 %_id_x915, 1
  store i64 %_bop916, i64* %_x908
  br label %_cond918
_merge919:
  %_id_acc920 = load i64, i64* %_909
  ret i64 %_id_acc920
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc903 = alloca i64
  %_argv904 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc903
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv904
  %_905 = call i64 @fact(i64 5)
  %_906 = call i8* @string_of_int(i64 %_905)
  call void @print_string(i8* %_906)
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
