; generated from: hw4programs/run25.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2376 = alloca i64
  %_argv2377 = alloca { i64, [0 x i8*] }*
  %_2378 = alloca { i64, [0 x i64] }*
  %_2387 = alloca i8*
  store i64 %argc, i64* %_argc2376
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2377
  %_raw_array2379 = call i64* @oat_alloc_array(i64 3)
  %_array2380 = bitcast i64* %_raw_array2379 to { i64, [0 x i64] }*
  %_2385 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2380, i32 0, i32 1, i32 2
  store i64 110, i64* %_2385
  %_2383 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2380, i32 0, i32 1, i32 1
  store i64 110, i64* %_2383
  %_2381 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2380, i32 0, i32 1, i32 0
  store i64 110, i64* %_2381
  store { i64, [0 x i64] }* %_array2380, { i64, [0 x i64] }** %_2378
  %_id_a2388 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2378
  %_2389 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a2388)
  store i8* %_2389, i8** %_2387
  %_id_str2390 = load i8*, i8** %_2387
  call void @print_string(i8* %_id_str2390)
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
