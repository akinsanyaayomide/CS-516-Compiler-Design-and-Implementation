; generated from: hw4programs/lib11.oat
target triple = "x86_64-apple-macosx10.13.0"
@_raw_string2363 = global [11 x i8] c"1234967890\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2359 = alloca i64
  %_argv2360 = alloca { i64, [0 x i8*] }*
  %_2361 = alloca { i64, [0 x i64] }*
  %_2365 = alloca i64
  %_2366 = alloca i64
  %_2378 = alloca i64
  store i64 %argc, i64* %_argc2359
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2360
  %_result_id2362 = bitcast [11 x i8]* @_raw_string2363 to i8*
  %_2364 = call { i64, [0 x i64] }* @array_of_string(i8* %_result_id2362)
  store { i64, [0 x i64] }* %_2364, { i64, [0 x i64] }** %_2361
  store i64 0, i64* %_2365
  store i64 0, i64* %_2366
  br label %_start2375
_start2375:
  %_id_i2367 = load i64, i64* %_2366
  %_2368 = icmp slt i64 %_id_i2367, 10
  br i1 %_2368, label %_body2376, label %_else2377
_body2376:
  %_id_i2369 = load i64, i64* %_2366
  %_id_arr2370 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2361
  %_id_i2371 = load i64, i64* %_2366
  %_2372 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr2370, i32 0, i32 1, i64 %_id_i2371
  store i64 %_id_i2369, i64* %_2372
  %_id_i2373 = load i64, i64* %_2366
  %_2374 = add i64 %_id_i2373, 1
  store i64 %_2374, i64* %_2366
  br label %_start2375
_else2377:
  store i64 0, i64* %_2378
  br label %_start2389
_start2389:
  %_id_i2379 = load i64, i64* %_2378
  %_2380 = icmp slt i64 %_id_i2379, 10
  br i1 %_2380, label %_body2390, label %_else2391
_body2390:
  %_id_arr2382 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2361
  %_id_i2383 = load i64, i64* %_2378
  %_index_pointer2384 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr2382, i32 0, i32 1, i64 %_id_i2383
  %_index_value2385 = load i64, i64* %_index_pointer2384
  %_id_sum2381 = load i64, i64* %_2365
  %_2386 = add i64 %_id_sum2381, %_index_value2385
  store i64 %_2386, i64* %_2365
  %_id_i2387 = load i64, i64* %_2378
  %_2388 = add i64 %_id_i2387, 1
  store i64 %_2388, i64* %_2378
  br label %_start2389
_else2391:
  %_id_sum2392 = load i64, i64* %_2365
  ret i64 %_id_sum2392
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
