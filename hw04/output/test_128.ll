; generated from: hw4programs/run21.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc344 = alloca i64
  %_argv345 = alloca { i64, [0 x i8*] }*
  %_346 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc344
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv345
  %_raw_array347 = call i64* @oat_alloc_array(i64 2)
  %_array348 = bitcast i64* %_raw_array347 to { i64, [0 x i64] }*
  %_351 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array348, i32 0, i32 1, i32 1
  store i64 0, i64* %_351
  %_349 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array348, i32 0, i32 1, i32 0
  store i64 99, i64* %_349
  store { i64, [0 x i64] }* %_array348, { i64, [0 x i64] }** %_346
  %_id_i353 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_346
  %_index_pointer354 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_i353, i32 0, i32 1, i32 0
  %_index_value355 = load i64, i64* %_index_pointer354
  ret i64 %_index_value355
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
