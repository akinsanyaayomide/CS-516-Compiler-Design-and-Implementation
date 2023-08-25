; generated from: hw4programs/run48.oat
target triple = "x86_64-apple-macosx10.13.0"
@a = global i64 1

define i64 @f() {
  %_id_a2382 = load i64, i64* @a
  %_2383 = add i64 %_id_a2382, 1
  store i64 %_2383, i64* @a
  %_id_a2384 = load i64, i64* @a
  ret i64 %_id_a2384
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2361 = alloca i64
  %_argv2362 = alloca { i64, [0 x i8*] }*
  %_2363 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2361
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2362
  %_2364 = call i64 @f()
  %_raw_array2365 = call i64* @oat_alloc_array(i64 %_2364)
  %_array2366 = bitcast i64* %_raw_array2365 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2366, { i64, [0 x i64] }** %_2363
  %_2367 = call i64 @f()
  %_id_b2368 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2363
  %_2369 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2368, i32 0, i32 1, i32 0
  store i64 %_2367, i64* %_2369
  %_2370 = call i64 @f()
  %_id_b2371 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2363
  %_2372 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2371, i32 0, i32 1, i32 1
  store i64 %_2370, i64* %_2372
  %_id_b2378 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2363
  %_index_pointer2379 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2378, i32 0, i32 1, i32 1
  %_index_value2380 = load i64, i64* %_index_pointer2379
  %_id_b2374 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2363
  %_index_pointer2375 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2374, i32 0, i32 1, i32 0
  %_index_value2376 = load i64, i64* %_index_pointer2375
  %_id_a2373 = load i64, i64* @a
  %_2377 = add i64 %_id_a2373, %_index_value2376
  %_2381 = add i64 %_2377, %_index_value2380
  ret i64 %_2381
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
