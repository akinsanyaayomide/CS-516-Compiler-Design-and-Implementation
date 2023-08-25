; generated from: hw4programs/lib7.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2485 = alloca i64
  %_argv2486 = alloca { i64, [0 x i8*] }*
  %_2487 = alloca { i64, [0 x i64] }*
  %_2500 = alloca i8*
  %_2503 = alloca { i64, [0 x i64] }*
  %_2506 = alloca i64
  %_2507 = alloca i64
  store i64 %argc, i64* %_argc2485
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2486
  %_raw_array2488 = call i64* @oat_alloc_array(i64 5)
  %_array2489 = bitcast i64* %_raw_array2488 to { i64, [0 x i64] }*
  %_2498 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2489, i32 0, i32 1, i32 4
  store i64 115, i64* %_2498
  %_2496 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2489, i32 0, i32 1, i32 3
  store i64 114, i64* %_2496
  %_2494 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2489, i32 0, i32 1, i32 2
  store i64 113, i64* %_2494
  %_2492 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2489, i32 0, i32 1, i32 1
  store i64 112, i64* %_2492
  %_2490 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2489, i32 0, i32 1, i32 0
  store i64 111, i64* %_2490
  store { i64, [0 x i64] }* %_array2489, { i64, [0 x i64] }** %_2487
  %_id_arr12501 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2487
  %_2502 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_arr12501)
  store i8* %_2502, i8** %_2500
  %_id_str2504 = load i8*, i8** %_2500
  %_2505 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_str2504)
  store { i64, [0 x i64] }* %_2505, { i64, [0 x i64] }** %_2503
  store i64 0, i64* %_2506
  store i64 0, i64* %_2507
  br label %_start2518
_start2518:
  %_id_i2508 = load i64, i64* %_2507
  %_2509 = icmp slt i64 %_id_i2508, 5
  br i1 %_2509, label %_body2519, label %_else2520
_body2519:
  %_id_arr22511 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2503
  %_id_i2512 = load i64, i64* %_2507
  %_index_pointer2513 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr22511, i32 0, i32 1, i64 %_id_i2512
  %_index_value2514 = load i64, i64* %_index_pointer2513
  %_id_s2510 = load i64, i64* %_2506
  %_2515 = add i64 %_id_s2510, %_index_value2514
  store i64 %_2515, i64* %_2506
  %_id_i2516 = load i64, i64* %_2507
  %_2517 = add i64 %_id_i2516, 1
  store i64 %_2517, i64* %_2507
  br label %_start2518
_else2520:
  %_id_s2521 = load i64, i64* %_2506
  ret i64 %_id_s2521
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
