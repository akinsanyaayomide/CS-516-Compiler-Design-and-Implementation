; generated from: hw4programs/run61.oat
target triple = "x86_64-apple-macosx10.13.0"
@s = global [4 x i8] c"341\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc899 = alloca i64
  %_argv900 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc899
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv900
  %_id_s901 = bitcast [4 x i8]* @s to i8*
  call void @print_string(i8* %_id_s901)
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
