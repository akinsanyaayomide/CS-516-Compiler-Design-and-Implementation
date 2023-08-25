; generated from: hw4programs/run21.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc370 = alloca i64
  %_argv371 = alloca { i64, [0 x i8*] }*
  %_372 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc370
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv371
  %_raw_array373 = call i64* @oat_alloc_array(i64 2)
  %_array374 = bitcast i64* %_raw_array373 to { i64, [0 x i64] }*
  %_377 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array374, i32 0, i32 1, i32 1
  store i64 0, i64* %_377
  %_375 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array374, i32 0, i32 1, i32 0
  store i64 99, i64* %_375
  store { i64, [0 x i64] }* %_array374, { i64, [0 x i64] }** %_372
  %_id_i379 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_372
  %_index_pointer381 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_i379, i32 0, i32 1, i32 0
  %_index_value380 = load i64, i64* %_index_pointer381
  ret i64 %_index_value380
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
