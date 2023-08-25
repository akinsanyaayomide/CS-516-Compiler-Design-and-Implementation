; generated from: hw4programs/run48.oat
target triple = "x86_64-apple-macosx10.13.0"
@a = global i64 1

define i64 @f() {
  %_id_a2378 = load i64, i64* @a
  %_bop2379 = add i64 %_id_a2378, 1
  store i64 %_bop2379, i64* @a
  %_id_a2380 = load i64, i64* @a
  ret i64 %_id_a2380
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2357 = alloca i64
  %_argv2358 = alloca { i64, [0 x i8*] }*
  %_b2362 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2357
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2358
  %_2359 = call i64 @f()
  %_raw_array2360 = call i64* @oat_alloc_array(i64 %_2359)
  %_array2361 = bitcast i64* %_raw_array2360 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2361, { i64, [0 x i64] }** %_b2362
  %_2363 = call i64 @f()
  %_id_b2364 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2362
  %_2365 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2364, i32 0, i32 1, i32 0
  store i64 %_2363, i64* %_2365
  %_2366 = call i64 @f()
  %_id_b2367 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2362
  %_2368 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2367, i32 0, i32 1, i32 1
  store i64 %_2366, i64* %_2368
  %_id_a2369 = load i64, i64* @a
  %_id_b2370 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2362
  %_index_pointer2372 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2370, i32 0, i32 1, i32 0
  %_index_value2371 = load i64, i64* %_index_pointer2372
  %_bop2373 = add i64 %_id_a2369, %_index_value2371
  %_id_b2374 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2362
  %_index_pointer2376 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2374, i32 0, i32 1, i32 1
  %_index_value2375 = load i64, i64* %_index_pointer2376
  %_bop2377 = add i64 %_bop2373, %_index_value2375
  ret i64 %_bop2377
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
