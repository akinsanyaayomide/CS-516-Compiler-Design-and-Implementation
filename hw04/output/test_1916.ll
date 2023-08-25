; generated from: hw4programs/run29.oat
target triple = "x86_64-apple-macosx10.13.0"
@b = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc281 = alloca i64
  %_argv282 = alloca { i64, [0 x i8*] }*
  %_283 = alloca i64
  store i64 %argc, i64* %_argc281
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv282
  store i64 0, i64* %_283
  br label %_start285
_start285:
  %_id_b284 = load i1, i1* @b
  br i1 %_id_b284, label %_then286, label %_else287
_then286:
  store i64 1, i64* %_283
  br label %_post288
_else287:
  br label %_post288
_post288:
  %_id_i289 = load i64, i64* %_283
  ret i64 %_id_i289
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
