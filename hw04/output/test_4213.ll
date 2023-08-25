; generated from: hw4programs/run31.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 9

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc415 = alloca i64
  %_argv416 = alloca { i64, [0 x i8*] }*
  %_417 = alloca i64
  store i64 %argc, i64* %_argc415
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv416
  %_id_i418 = load i64, i64* @i
  store i64 %_id_i418, i64* %_417
  %_id_j419 = load i64, i64* %_417
  ret i64 %_id_j419
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
