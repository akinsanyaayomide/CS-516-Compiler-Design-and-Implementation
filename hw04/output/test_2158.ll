; generated from: hw4programs/easyrun8.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc82 = alloca i64
  %_argv83 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc82
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv83
  br label %_start93
_start93:
  %_84 = icmp ne i64 6, 5
  br i1 %_84, label %_then94, label %_else95
_then94:
  %_unop85 = sub i64 0, 6
  %_86 = lshr i64 5, %_unop85
  %_87 = shl i64 %_86, 9
  %_88 = ashr i64 %_87, 10
  %_unop89 = xor i64 %_88, -1
  %_90 = mul i64 %_unop89, 2
  %_91 = sub i64 %_90, 100
  %_92 = add i64 %_91, 6
  ret i64 %_92
_else95:
  ret i64 2
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
