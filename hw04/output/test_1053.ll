; generated from: hw4programs/easyrun6.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc58 = alloca i64
  %_argv59 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc58
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv59
  br label %_start68
_start68:
  %_64 = mul i64 6, 4
  %_65 = icmp slt i64 %_64, 25
  %_61 = mul i64 4, -1
  %_62 = add i64 %_61, 5
  %_63 = icmp sgt i64 %_62, 0
  %_66 = and i1 %_63, %_65
  %_60 = and i1 1, 0
  %_67 = or i1 %_60, %_66
  br i1 %_67, label %_then69, label %_else70
_then69:
  ret i64 9
_else70:
  ret i64 4
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
