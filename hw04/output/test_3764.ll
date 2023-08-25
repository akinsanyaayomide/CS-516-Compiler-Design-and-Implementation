; generated from: hw4programs/easyrun6.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc58 = alloca i64
  %_argv59 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc58
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv59
  br label %_begin_if68
_begin_if68:
  %_unop60 = icmp eq i1 1, 0
  %_unop61 = sub i64 0, 4
  %_bop62 = add i64 %_unop61, 5
  %_bop63 = icmp sgt i64 %_bop62, 0
  %_bop64 = mul i64 6, 4
  %_bop65 = icmp slt i64 %_bop64, 25
  %_bop66 = and i1 %_bop63, %_bop65
  %_bop67 = or i1 %_unop60, %_bop66
  br i1 %_bop67, label %_then_branch69, label %_else_branch70
_then_branch69:
  ret i64 9
_else_branch70:
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
