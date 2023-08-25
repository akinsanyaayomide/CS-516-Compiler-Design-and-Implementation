; generated from: hw4programs/run29.oat
target triple = "x86_64-apple-macosx10.13.0"
@b = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc393 = alloca i64
  %_argv394 = alloca { i64, [0 x i8*] }*
  %_395 = alloca i64
  store i64 %argc, i64* %_argc393
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv394
  store i64 0, i64* %_395
  br label %_start397
_start397:
  %_id_b396 = load i1, i1* @b
  br i1 %_id_b396, label %_then398, label %_else399
_then398:
  store i64 1, i64* %_395
  br label %_post400
_else399:
  br label %_post400
_post400:
  %_id_i401 = load i64, i64* %_395
  ret i64 %_id_i401
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
