; generated from: hw4programs/easyrun4.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc23 = alloca i64
  %_argv24 = alloca { i64, [0 x i8*] }*
  %_25 = alloca i64
  %_26 = alloca i64
  store i64 %argc, i64* %_argc23
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv24
  store i64 0, i64* %_25
  store i64 0, i64* %_26
  br label %_cond34
_cond34:
  %_id_i27 = load i64, i64* %_26
  %_bop28 = icmp slt i64 %_id_i27, 3
  br i1 %_bop28, label %_if33, label %_merge35
_if33:
  %_id_x29 = load i64, i64* %_25
  %_bop30 = add i64 %_id_x29, 2
  store i64 %_bop30, i64* %_25
  %_id_i31 = load i64, i64* %_26
  %_bop32 = add i64 %_id_i31, 1
  store i64 %_bop32, i64* %_26
  br label %_cond34
_merge35:
  %_id_x36 = load i64, i64* %_25
  ret i64 %_id_x36
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
