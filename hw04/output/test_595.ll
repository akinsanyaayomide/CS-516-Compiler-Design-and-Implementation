; generated from: hw4programs/lib6.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2446 = alloca i64
  %_argv2447 = alloca { i64, [0 x i8*] }*
  %_2448 = alloca { i64, [0 x i64] }*
  %_2461 = alloca i8*
  %_2464 = alloca { i64, [0 x i64] }*
  %_2467 = alloca i64
  %_2468 = alloca i64
  store i64 %argc, i64* %_argc2446
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2447
  %_raw_array2449 = call i64* @oat_alloc_array(i64 5)
  %_array2450 = bitcast i64* %_raw_array2449 to { i64, [0 x i64] }*
  %_2459 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2450, i32 0, i32 1, i32 4
  store i64 115, i64* %_2459
  %_2457 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2450, i32 0, i32 1, i32 3
  store i64 114, i64* %_2457
  %_2455 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2450, i32 0, i32 1, i32 2
  store i64 113, i64* %_2455
  %_2453 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2450, i32 0, i32 1, i32 1
  store i64 112, i64* %_2453
  %_2451 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2450, i32 0, i32 1, i32 0
  store i64 111, i64* %_2451
  store { i64, [0 x i64] }* %_array2450, { i64, [0 x i64] }** %_2448
  %_id_arr12462 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2448
  %_2463 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_arr12462)
  store i8* %_2463, i8** %_2461
  %_id_str2465 = load i8*, i8** %_2461
  %_2466 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_str2465)
  store { i64, [0 x i64] }* %_2466, { i64, [0 x i64] }** %_2464
  store i64 0, i64* %_2467
  store i64 0, i64* %_2468
  br label %_start2479
_start2479:
  %_id_i2469 = load i64, i64* %_2468
  %_2470 = icmp slt i64 %_id_i2469, 5
  br i1 %_2470, label %_body2480, label %_else2481
_body2480:
  %_id_arr22472 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2464
  %_id_i2473 = load i64, i64* %_2468
  %_index_pointer2474 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr22472, i32 0, i32 1, i64 %_id_i2473
  %_index_value2475 = load i64, i64* %_index_pointer2474
  %_id_s2471 = load i64, i64* %_2467
  %_2476 = add i64 %_id_s2471, %_index_value2475
  store i64 %_2476, i64* %_2467
  %_id_i2477 = load i64, i64* %_2468
  %_2478 = add i64 %_id_i2477, 1
  store i64 %_2478, i64* %_2468
  br label %_start2479
_else2481:
  %_id_s2482 = load i64, i64* %_2467
  call void @print_int(i64 %_id_s2482)
  %_id_s2484 = load i64, i64* %_2467
  ret i64 %_id_s2484
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
