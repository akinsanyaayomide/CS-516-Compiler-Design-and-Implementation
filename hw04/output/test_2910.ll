; generated from: hw4programs/path2.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc206 = alloca i64
  %_argv207 = alloca { i64, [0 x i8*] }*
  %_208 = alloca i64
  %_209 = alloca i64
  store i64 %argc, i64* %_argc206
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv207
  store i64 17, i64* %_208
  store i64 18, i64* %_209
  %_id_y211 = load i64, i64* %_209
  %_id_x210 = load i64, i64* %_208
  %_212 = add i64 %_id_x210, %_id_y211
  ret i64 %_212
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
