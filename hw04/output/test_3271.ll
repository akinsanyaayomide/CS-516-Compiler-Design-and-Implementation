; generated from: hw4programs/lib8.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string2154 = global [13 x i8] c"Hello world!\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2151 = alloca i64
  %_argv2152 = alloca { i64, [0 x i8*] }*
  %_2153 = alloca i8*
  store i64 %argc, i64* %_argc2151
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2152
  %_string12155 = getelementptr [13 x i8], [13 x i8]* @_string2154, i32 0, i32 0
  store i8* %_string12155, i8** %_2153
  %_id_str2156 = load i8*, i8** %_2153
  call void @print_string(i8* %_id_str2156)
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
