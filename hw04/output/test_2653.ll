; generated from: hw4programs/lib7.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2481 = alloca i64
  %_argv2482 = alloca { i64, [0 x i8*] }*
  %_2483 = alloca { i64, [0 x i64] }*
  %_2496 = alloca i8*
  %_2499 = alloca { i64, [0 x i64] }*
  %_2502 = alloca i64
  %_2503 = alloca i64
  store i64 %argc, i64* %_argc2481
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2482
  %_raw_array2484 = call i64* @oat_alloc_array(i64 5)
  %_array2485 = bitcast i64* %_raw_array2484 to { i64, [0 x i64] }*
  %_2494 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2485, i32 0, i32 1, i32 4
  store i64 115, i64* %_2494
  %_2492 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2485, i32 0, i32 1, i32 3
  store i64 114, i64* %_2492
  %_2490 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2485, i32 0, i32 1, i32 2
  store i64 113, i64* %_2490
  %_2488 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2485, i32 0, i32 1, i32 1
  store i64 112, i64* %_2488
  %_2486 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2485, i32 0, i32 1, i32 0
  store i64 111, i64* %_2486
  store { i64, [0 x i64] }* %_array2485, { i64, [0 x i64] }** %_2483
  %_id_arr12497 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2483
  %_2498 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_arr12497)
  store i8* %_2498, i8** %_2496
  %_id_str2500 = load i8*, i8** %_2496
  %_2501 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_str2500)
  store { i64, [0 x i64] }* %_2501, { i64, [0 x i64] }** %_2499
  store i64 0, i64* %_2502
  store i64 0, i64* %_2503
  br label %_cond2515
_cond2515:
  %_id_i2504 = load i64, i64* %_2503
  %_2505 = icmp slt i64 %_id_i2504, 5
  br i1 %_2505, label %_if2514, label %_merge2516
_if2514:
  %_id_arr22507 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2499
  %_id_i2508 = load i64, i64* %_2503
  %_index_pointer2509 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr22507, i32 0, i32 1, i64 %_id_i2508
  %_index_value2510 = load i64, i64* %_index_pointer2509
  %_id_s2506 = load i64, i64* %_2502
  %_2511 = add i64 %_id_s2506, %_index_value2510
  store i64 %_2511, i64* %_2502
  %_id_i2512 = load i64, i64* %_2503
  %_2513 = add i64 %_id_i2512, 1
  store i64 %_2513, i64* %_2503
  br label %_cond2515
_merge2516:
  %_id_s2517 = load i64, i64* %_2502
  ret i64 %_id_s2517
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
