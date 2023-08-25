; generated from: hw4programs/easyrun8.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc83 = alloca i64
  %_argv84 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc83
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv84
  br label %_start95
_start95:
  %_85 = icmp ne i64 6, 5
  br i1 %_85, label %_then96, label %_else97
_then96:
  %_86 = mul i64 6, -1
  %_87 = lshr i64 5, %_86
  %_88 = shl i64 %_87, 9
  %_89 = ashr i64 %_88, 10
  %_90 = mul i64 %_89, -1
  %_91 = add i64 %_90, -1
  %_92 = mul i64 %_91, 2
  %_93 = sub i64 %_92, 100
  %_94 = add i64 %_93, 6
  ret i64 %_94
_else97:
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
