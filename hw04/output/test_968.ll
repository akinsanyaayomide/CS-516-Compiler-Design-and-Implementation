; generated from: hw4programs/run27.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc372 = alloca i64
  %_argv373 = alloca { i64, [0 x i8*] }*
  %_374 = alloca i64
  store i64 %argc, i64* %_argc372
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv373
  store i64 99, i64* %_374
  %_id_i375 = load i64, i64* %_374
  ret i64 %_id_i375
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