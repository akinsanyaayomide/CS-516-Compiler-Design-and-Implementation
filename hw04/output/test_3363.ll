; generated from: hw4programs/run29.oat
target triple = "x86_64-apple-macosx10.13.0"
@b = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc389 = alloca i64
  %_argv390 = alloca { i64, [0 x i8*] }*
  %_391 = alloca i64
  store i64 %argc, i64* %_argc389
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv390
  store i64 0, i64* %_391
  br label %_begin_if393
_begin_if393:
  %_id_b392 = load i1, i1* @b
  br i1 %_id_b392, label %_then_branch394, label %_else_branch395
_then_branch394:
  store i64 1, i64* %_391
  br label %_end_if396
_else_branch395:
  br label %_end_if396
_end_if396:
  %_id_i397 = load i64, i64* %_391
  ret i64 %_id_i397
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
