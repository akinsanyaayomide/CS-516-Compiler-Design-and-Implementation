; generated from: hw4programs/lib6.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2442 = alloca i64
  %_argv2443 = alloca { i64, [0 x i8*] }*
  %_arr12456 = alloca { i64, [0 x i64] }*
  %_str2459 = alloca i8*
  %_arr22462 = alloca { i64, [0 x i64] }*
  %_s2463 = alloca i64
  %_i2464 = alloca i64
  store i64 %argc, i64* %_argc2442
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2443
  %_raw_array2444 = call i64* @oat_alloc_array(i64 5)
  %_array2445 = bitcast i64* %_raw_array2444 to { i64, [0 x i64] }*
  %_2454 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2445, i32 0, i32 1, i32 4
  store i64 115, i64* %_2454
  %_2452 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2445, i32 0, i32 1, i32 3
  store i64 114, i64* %_2452
  %_2450 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2445, i32 0, i32 1, i32 2
  store i64 113, i64* %_2450
  %_2448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2445, i32 0, i32 1, i32 1
  store i64 112, i64* %_2448
  %_2446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2445, i32 0, i32 1, i32 0
  store i64 111, i64* %_2446
  store { i64, [0 x i64] }* %_array2445, { i64, [0 x i64] }** %_arr12456
  %_id_arr12457 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr12456
  %_2458 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_arr12457)
  store i8* %_2458, i8** %_str2459
  %_id_str2460 = load i8*, i8** %_str2459
  %_2461 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_str2460)
  store { i64, [0 x i64] }* %_2461, { i64, [0 x i64] }** %_arr22462
  store i64 0, i64* %_s2463
  store i64 0, i64* %_i2464
  br label %_cond2476
_cond2476:
  %_id_i2465 = load i64, i64* %_i2464
  %_bop2466 = icmp slt i64 %_id_i2465, 5
  br i1 %_bop2466, label %_if2477, label %_merge2475
_if2477:
  %_id_s2467 = load i64, i64* %_s2463
  %_id_arr22468 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr22462
  %_id_i2469 = load i64, i64* %_i2464
  %_index_pointer2471 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr22468, i32 0, i32 1, i64 %_id_i2469
  %_index_value2470 = load i64, i64* %_index_pointer2471
  %_bop2472 = add i64 %_id_s2467, %_index_value2470
  store i64 %_bop2472, i64* %_s2463
  %_id_i2473 = load i64, i64* %_i2464
  %_bop2474 = add i64 %_id_i2473, 1
  store i64 %_bop2474, i64* %_i2464
  br label %_cond2476
_merge2475:
  %_id_s2478 = load i64, i64* %_s2463
  call void @print_int(i64 %_id_s2478)
  %_id_s2480 = load i64, i64* %_s2463
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
