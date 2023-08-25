; generated from: hw4programs/easyrun8.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc79 = alloca i64
  %_argv80 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc79
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv80
  %_81 = icmp ne i64 6, 5
  br i1 %_81, label %_if90, label %_else91
_if90:
  %_unop82 = sub i64 0, 6
  %_83 = lshr i64 5, %_unop82
  %_84 = shl i64 %_83, 9
  %_85 = ashr i64 %_84, 10
  %_unop86 = xor i64 %_85, -1
  %_87 = mul i64 %_unop86, 2
  %_88 = sub i64 %_87, 100
  %_89 = add i64 %_88, 6
  ret i64 %_89
_else91:
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
