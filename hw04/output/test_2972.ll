; generated from: hw4programs/easyrun5.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc37 = alloca i64
  %_argv38 = alloca { i64, [0 x i8*] }*
  %_39 = alloca i64
  %_41 = alloca i64
  store i64 %argc, i64* %_argc37
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv38
  %_40 = lshr i64 100, 3
  store i64 %_40, i64* %_39
  %_42 = shl i64 100, 3
  store i64 %_42, i64* %_41
  %_id_y44 = load i64, i64* %_41
  %_id_x43 = load i64, i64* %_39
  %_45 = sub i64 %_id_x43, %_id_y44
  %_46 = icmp sle i64 %_45, 0
  br i1 %_46, label %_if54, label %_else55
_if54:
  %_id_y49 = load i64, i64* %_41
  %_id_x47 = load i64, i64* %_39
  %_unop48 = sub i64 0, %_id_x47
  %_50 = sub i64 %_unop48, %_id_y49
  ret i64 %_50
_else55:
  %_id_y52 = load i64, i64* %_41
  %_id_x51 = load i64, i64* %_39
  %_53 = sub i64 %_id_x51, %_id_y52
  ret i64 %_53
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
