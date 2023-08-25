; generated from: hw4programs/run21.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc354 = alloca i64
  %_argv355 = alloca { i64, [0 x i8*] }*
  %_i362 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc354
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv355
  %_raw_array356 = call i64* @oat_alloc_array(i64 2)
  %_array357 = bitcast i64* %_raw_array356 to { i64, [0 x i64] }*
  %_360 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array357, i32 0, i32 1, i32 1
  store i64 0, i64* %_360
  %_358 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array357, i32 0, i32 1, i32 0
  store i64 99, i64* %_358
  store { i64, [0 x i64] }* %_array357, { i64, [0 x i64] }** %_i362
  %_id_i363 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_i362
  %_index_pointer365 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_i363, i32 0, i32 1, i32 0
  %_index_value364 = load i64, i64* %_index_pointer365
  ret i64 %_index_value364
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
