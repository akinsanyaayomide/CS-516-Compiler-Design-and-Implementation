; generated from: hw4programs/lib7.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2481 = alloca i64
  %_argv2482 = alloca { i64, [0 x i8*] }*
  %_arr12495 = alloca { i64, [0 x i64] }*
  %_str2498 = alloca i8*
  %_arr22501 = alloca { i64, [0 x i64] }*
  %_s2502 = alloca i64
  %_i2503 = alloca i64
  store i64 %argc, i64* %_argc2481
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2482
  %_raw_array2483 = call i64* @oat_alloc_array(i64 5)
  %_array2484 = bitcast i64* %_raw_array2483 to { i64, [0 x i64] }*
  %_2493 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2484, i32 0, i32 1, i32 4
  store i64 115, i64* %_2493
  %_2491 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2484, i32 0, i32 1, i32 3
  store i64 114, i64* %_2491
  %_2489 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2484, i32 0, i32 1, i32 2
  store i64 113, i64* %_2489
  %_2487 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2484, i32 0, i32 1, i32 1
  store i64 112, i64* %_2487
  %_2485 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2484, i32 0, i32 1, i32 0
  store i64 111, i64* %_2485
  store { i64, [0 x i64] }* %_array2484, { i64, [0 x i64] }** %_arr12495
  %_id_arr12496 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr12495
  %_2497 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_arr12496)
  store i8* %_2497, i8** %_str2498
  %_id_str2499 = load i8*, i8** %_str2498
  %_2500 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_str2499)
  store { i64, [0 x i64] }* %_2500, { i64, [0 x i64] }** %_arr22501
  store i64 0, i64* %_s2502
  store i64 0, i64* %_i2503
  br label %_cond2515
_cond2515:
  %_id_i2504 = load i64, i64* %_i2503
  %_bop2505 = icmp slt i64 %_id_i2504, 5
  br i1 %_bop2505, label %_if2516, label %_merge2514
_if2516:
  %_id_s2506 = load i64, i64* %_s2502
  %_id_arr22507 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr22501
  %_id_i2508 = load i64, i64* %_i2503
  %_index_pointer2510 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr22507, i32 0, i32 1, i64 %_id_i2508
  %_index_value2509 = load i64, i64* %_index_pointer2510
  %_bop2511 = add i64 %_id_s2506, %_index_value2509
  store i64 %_bop2511, i64* %_s2502
  %_id_i2512 = load i64, i64* %_i2503
  %_bop2513 = add i64 %_id_i2512, 1
  store i64 %_bop2513, i64* %_i2503
  br label %_cond2515
_merge2514:
  %_id_s2517 = load i64, i64* %_s2502
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
