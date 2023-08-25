; generated from: hw4programs/path2.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc172 = alloca i64
  %_argv173 = alloca { i64, [0 x i8*] }*
  %_174 = alloca i64
  %_175 = alloca i64
  store i64 %argc, i64* %_argc172
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv173
  store i64 17, i64* %_174
  store i64 18, i64* %_175
  %_id_y177 = load i64, i64* %_175
  %_id_x176 = load i64, i64* %_174
  %_178 = add i64 %_id_x176, %_id_y177
  ret i64 %_178
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
