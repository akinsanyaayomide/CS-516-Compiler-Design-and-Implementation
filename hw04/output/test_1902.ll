; generated from: hw4programs/easyrun7.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc72 = alloca i64
  %_argv73 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc72
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv73
  br label %_start78
_start78:
  %_76 = or i64 2, 0
  %_unop74 = xor i64 5, -1
  %_75 = and i64 %_unop74, 6
  %_77 = icmp sge i64 %_75, %_76
  br i1 %_77, label %_then79, label %_else80
_then79:
  ret i64 23
_else80:
  ret i64 46
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
