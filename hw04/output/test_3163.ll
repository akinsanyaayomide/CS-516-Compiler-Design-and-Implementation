; generated from: hw4programs/run13.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f(i64 %x, i64 %y) {
  %_x214 = alloca i64
  %_y215 = alloca i64
  store i64 %x, i64* %_x214
  store i64 %y, i64* %_y215
  %_id_x216 = load i64, i64* %_x214
  ret i64 %_id_x216
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc211 = alloca i64
  %_argv212 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc211
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv212
  %_213 = call i64 @f(i64 1, i64 2)
  ret i64 %_213
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
