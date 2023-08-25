; generated from: hw4programs/run31.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 9

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc405 = alloca i64
  %_argv406 = alloca { i64, [0 x i8*] }*
  %_407 = alloca i64
  store i64 %argc, i64* %_argc405
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv406
  %_id_i408 = load i64, i64* @i
  store i64 %_id_i408, i64* %_407
  %_id_j409 = load i64, i64* %_407
  ret i64 %_id_j409
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
