; generated from: hw4programs/run24.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1651 = alloca i64
  %_argv1652 = alloca { i64, [0 x i8*] }*
  %_1653 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1651
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1652
  %_raw_array1654 = call i64* @oat_alloc_array(i64 0)
  %_array1655 = bitcast i64* %_raw_array1654 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1655, { i64, [0 x i64] }** %_1653
  ret i64 0
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
