; generated from: hw4programs/run29.oat
target triple = "x86_64-apple-macosx10.13.0"
@b = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc252 = alloca i64
  %_argv253 = alloca { i64, [0 x i8*] }*
  %_254 = alloca i64
  store i64 %argc, i64* %_argc252
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv253
  store i64 0, i64* %_254
  br label %_begin_if256
_begin_if256:
  %_id_b255 = load i1, i1* @b
  br i1 %_id_b255, label %_then_branch257, label %_else_branch258
_then_branch257:
  store i64 1, i64* %_254
  br label %_end_if259
_else_branch258:
  br label %_end_if259
_end_if259:
  %_id_i260 = load i64, i64* %_254
  ret i64 %_id_i260
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
