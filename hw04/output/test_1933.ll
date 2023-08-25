; generated from: hw4programs/lib8.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string1835 = global [13 x i8] c"Hello world!\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1832 = alloca i64
  %_argv1833 = alloca { i64, [0 x i8*] }*
  %_1834 = alloca i8*
  store i64 %argc, i64* %_argc1832
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1833
  %_string11836 = getelementptr [13 x i8], [13 x i8]* @_string1835, i32 0, i32 0
  store i8* %_string11836, i8** %_1834
  %_id_str1837 = load i8*, i8** %_1834
  call void @print_string(i8* %_id_str1837)
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
