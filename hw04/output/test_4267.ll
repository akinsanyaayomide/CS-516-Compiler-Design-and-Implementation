; generated from: hw4programs/fac.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f(i64 %i) {
  %_i3010 = alloca i64
  %_3011 = alloca i64
  store i64 %i, i64* %_i3010
  store i64 0, i64* %_3011
  br label %_begin_if3019
_begin_if3019:
  %_id_i3012 = load i64, i64* %_i3010
  %_bop3013 = icmp eq i64 %_id_i3012, 0
  br i1 %_bop3013, label %_then_branch3020, label %_else_branch3021
_then_branch3020:
  store i64 1, i64* %_3011
  br label %_end_if3022
_else_branch3021:
  %_id_i3014 = load i64, i64* %_i3010
  %_id_i3015 = load i64, i64* %_i3010
  %_bop3016 = sub i64 %_id_i3015, 1
  %_3017 = call i64 @f(i64 %_bop3016)
  %_bop3018 = mul i64 %_id_i3014, %_3017
  store i64 %_bop3018, i64* %_3011
  br label %_end_if3022
_end_if3022:
  %_id_r3023 = load i64, i64* %_3011
  ret i64 %_id_r3023
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3007 = alloca i64
  %_argv3008 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc3007
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3008
  %_3009 = call i64 @f(i64 5)
  ret i64 %_3009
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
