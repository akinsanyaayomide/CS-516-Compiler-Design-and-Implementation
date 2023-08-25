; generated from: hw4programs/easyrun5.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc37 = alloca i64
  %_argv38 = alloca { i64, [0 x i8*] }*
  %_x40 = alloca i64
  %_y42 = alloca i64
  store i64 %argc, i64* %_argc37
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv38
  %_bop39 = lshr i64 100, 3
  store i64 %_bop39, i64* %_x40
  %_bop41 = shl i64 100, 3
  store i64 %_bop41, i64* %_y42
  br label %_begin_if54
_begin_if54:
  %_id_x43 = load i64, i64* %_x40
  %_id_y44 = load i64, i64* %_y42
  %_bop45 = sub i64 %_id_x43, %_id_y44
  %_bop46 = icmp sle i64 %_bop45, 0
  br i1 %_bop46, label %_then_branch55, label %_else_branch56
_then_branch55:
  %_id_x47 = load i64, i64* %_x40
  %_unop48 = sub i64 0, %_id_x47
  %_id_y49 = load i64, i64* %_y42
  %_bop50 = sub i64 %_unop48, %_id_y49
  ret i64 %_bop50
_else_branch56:
  %_id_x51 = load i64, i64* %_x40
  %_id_y52 = load i64, i64* %_y42
  %_bop53 = sub i64 %_id_x51, %_id_y52
  ret i64 %_bop53
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
