; generated from: hw4programs/globals2.oat
target triple = "x86_64-apple-macosx10.13.0"
@y = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc203 = alloca i64
  %_args204 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc203
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args204
  br label %_begin_if206
_begin_if206:
  %_id_y205 = load i1, i1* @y
  br i1 %_id_y205, label %_then_branch207, label %_else_branch208
_then_branch207:
  ret i64 17
_else_branch208:
  br label %_end_if209
_end_if209:
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
