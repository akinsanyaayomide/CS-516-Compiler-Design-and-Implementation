; generated from: hw4programs/globals2.oat
target triple = "x86_64-apple-macosx10.13.0"
@y = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc150 = alloca i64
  %_args151 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc150
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args151
  br label %_start153
_start153:
  %_id_y152 = load i1, i1* @y
  br i1 %_id_y152, label %_then154, label %_else155
_then154:
  ret i64 17
_else155:
  br label %_post156
_post156:
  ret i64 15
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
