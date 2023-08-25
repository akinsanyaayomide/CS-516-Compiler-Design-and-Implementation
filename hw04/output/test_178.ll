; generated from: hw4programs/lib14.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2393 = alloca i64
  %_argv2394 = alloca { i64, [0 x i8*] }*
  %_2395 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2393
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2394
  %_raw_array2396 = call i64* @oat_alloc_array(i64 10)
  %_array2397 = bitcast i64* %_raw_array2396 to { i64, [0 x i64] }*
  %_2416 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2397, i32 0, i32 1, i32 9
  store i64 117, i64* %_2416
  %_2414 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2397, i32 0, i32 1, i32 8
  store i64 118, i64* %_2414
  %_2412 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2397, i32 0, i32 1, i32 7
  store i64 119, i64* %_2412
  %_2410 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2397, i32 0, i32 1, i32 6
  store i64 120, i64* %_2410
  %_2408 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2397, i32 0, i32 1, i32 5
  store i64 121, i64* %_2408
  %_2406 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2397, i32 0, i32 1, i32 4
  store i64 122, i64* %_2406
  %_2404 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2397, i32 0, i32 1, i32 3
  store i64 123, i64* %_2404
  %_2402 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2397, i32 0, i32 1, i32 2
  store i64 124, i64* %_2402
  %_2400 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2397, i32 0, i32 1, i32 1
  store i64 125, i64* %_2400
  %_2398 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2397, i32 0, i32 1, i32 0
  store i64 126, i64* %_2398
  store { i64, [0 x i64] }* %_array2397, { i64, [0 x i64] }** %_2395
  %_id_a2418 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2395
  %_2419 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a2418)
  call void @print_string(i8* %_2419)
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
