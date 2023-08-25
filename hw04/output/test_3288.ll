; generated from: hw4programs/run21.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc217 = alloca i64
  %_argv218 = alloca { i64, [0 x i8*] }*
  %_219 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc217
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv218
  %_raw_array220 = call i64* @oat_alloc_array(i64 2)
  %_array221 = bitcast i64* %_raw_array220 to { i64, [0 x i64] }*
  %_224 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array221, i32 0, i32 1, i32 1
  store i64 0, i64* %_224
  %_222 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array221, i32 0, i32 1, i32 0
  store i64 99, i64* %_222
  store { i64, [0 x i64] }* %_array221, { i64, [0 x i64] }** %_219
  %_id_i226 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_219
  %_index_pointer227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_i226, i32 0, i32 1, i32 0
  %_index_value228 = load i64, i64* %_index_pointer227
  ret i64 %_index_value228
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
