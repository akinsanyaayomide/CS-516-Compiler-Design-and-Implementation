; generated from: hw4programs/lib6.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2442 = alloca i64
  %_argv2443 = alloca { i64, [0 x i8*] }*
  %_2444 = alloca { i64, [0 x i64] }*
  %_2457 = alloca i8*
  %_2460 = alloca { i64, [0 x i64] }*
  %_2463 = alloca i64
  %_2464 = alloca i64
  store i64 %argc, i64* %_argc2442
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2443
  %_raw_array2445 = call i64* @oat_alloc_array(i64 5)
  %_array2446 = bitcast i64* %_raw_array2445 to { i64, [0 x i64] }*
  %_2455 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2446, i32 0, i32 1, i32 4
  store i64 115, i64* %_2455
  %_2453 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2446, i32 0, i32 1, i32 3
  store i64 114, i64* %_2453
  %_2451 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2446, i32 0, i32 1, i32 2
  store i64 113, i64* %_2451
  %_2449 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2446, i32 0, i32 1, i32 1
  store i64 112, i64* %_2449
  %_2447 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2446, i32 0, i32 1, i32 0
  store i64 111, i64* %_2447
  store { i64, [0 x i64] }* %_array2446, { i64, [0 x i64] }** %_2444
  %_id_arr12458 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2444
  %_2459 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_arr12458)
  store i8* %_2459, i8** %_2457
  %_id_str2461 = load i8*, i8** %_2457
  %_2462 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_str2461)
  store { i64, [0 x i64] }* %_2462, { i64, [0 x i64] }** %_2460
  store i64 0, i64* %_2463
  store i64 0, i64* %_2464
  br label %_cond2476
_cond2476:
  %_id_i2465 = load i64, i64* %_2464
  %_bop2466 = icmp slt i64 %_id_i2465, 5
  br i1 %_bop2466, label %_if2475, label %_merge2477
_if2475:
  %_id_s2467 = load i64, i64* %_2463
  %_id_arr22468 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2460
  %_id_i2469 = load i64, i64* %_2464
  %_index_pointer2470 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr22468, i32 0, i32 1, i64 %_id_i2469
  %_index_value2471 = load i64, i64* %_index_pointer2470
  %_bop2472 = add i64 %_id_s2467, %_index_value2471
  store i64 %_bop2472, i64* %_2463
  %_id_i2473 = load i64, i64* %_2464
  %_bop2474 = add i64 %_id_i2473, 1
  store i64 %_bop2474, i64* %_2464
  br label %_cond2476
_merge2477:
  %_id_s2478 = load i64, i64* %_2463
  call void @print_int(i64 %_id_s2478)
  %_id_s2480 = load i64, i64* %_2463
  ret i64 %_id_s2480
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
