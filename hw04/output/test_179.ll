; generated from: hw4programs/lib15.oat
target triple = "x86_64-apple-macosx10.13.0"
define i8* @sub(i8* %str, i64 %start, i64 %len) {
  %_str2428 = alloca i8*
  %_start2429 = alloca i64
  %_len2430 = alloca i64
  %_2431 = alloca { i64, [0 x i64] }*
  %_2434 = alloca { i64, [0 x i64] }*
  %_2438 = alloca i64
  store i8* %str, i8** %_str2428
  store i64 %start, i64* %_start2429
  store i64 %len, i64* %_len2430
  %_id_str2432 = load i8*, i8** %_str2428
  %_2433 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_str2432)
  store { i64, [0 x i64] }* %_2433, { i64, [0 x i64] }** %_2431
  %_id_len2435 = load i64, i64* %_len2430
  %_raw_array2436 = call i64* @oat_alloc_array(i64 %_id_len2435)
  %_array2437 = bitcast i64* %_raw_array2436 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2437, { i64, [0 x i64] }** %_2434
  store i64 0, i64* %_2438
  br label %_start2453
_start2453:
  %_id_len2440 = load i64, i64* %_len2430
  %_id_i2439 = load i64, i64* %_2438
  %_2441 = icmp slt i64 %_id_i2439, %_id_len2440
  br i1 %_2441, label %_body2454, label %_else2455
_body2454:
  %_id_arr2442 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2431
  %_id_start2444 = load i64, i64* %_start2429
  %_id_i2443 = load i64, i64* %_2438
  %_2445 = add i64 %_id_i2443, %_id_start2444
  %_index_pointer2446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr2442, i32 0, i32 1, i64 %_2445
  %_index_value2447 = load i64, i64* %_index_pointer2446
  %_id_r2448 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2434
  %_id_i2449 = load i64, i64* %_2438
  %_2450 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_r2448, i32 0, i32 1, i64 %_id_i2449
  store i64 %_index_value2447, i64* %_2450
  %_id_i2451 = load i64, i64* %_2438
  %_2452 = add i64 %_id_i2451, 1
  store i64 %_2452, i64* %_2438
  br label %_start2453
_else2455:
  %_id_r2456 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2434
  %_2457 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_r2456)
  ret i8* %_2457
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2421 = alloca i64
  %_argv2422 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc2421
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2422
  %_id_argv2423 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2422
  %_index_pointer2424 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_id_argv2423, i32 0, i32 1, i32 1
  %_index_value2425 = load i8*, i8** %_index_pointer2424
  %_2426 = call i8* @sub(i8* %_index_value2425, i64 3, i64 5)
  call void @print_string(i8* %_2426)
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
