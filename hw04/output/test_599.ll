; generated from: hw4programs/lib11.oat
target triple = "x86_64-apple-macosx10.13.0"
@_str_arr2549 = global [11 x i8] c"1234967890\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2546 = alloca i64
  %_argv2547 = alloca { i64, [0 x i8*] }*
  %_2548 = alloca { i64, [0 x i64] }*
  %_2552 = alloca i64
  %_2553 = alloca i64
  %_2565 = alloca i64
  store i64 %argc, i64* %_argc2546
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2547
  %_str2550 = getelementptr [11 x i8], [11 x i8]* @_str_arr2549, i32 0, i32 0
  %_2551 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2550)
  store { i64, [0 x i64] }* %_2551, { i64, [0 x i64] }** %_2548
  store i64 0, i64* %_2552
  store i64 0, i64* %_2553
  br label %_start2562
_start2562:
  %_id_i2554 = load i64, i64* %_2553
  %_2555 = icmp slt i64 %_id_i2554, 10
  br i1 %_2555, label %_body2563, label %_else2564
_body2563:
  %_id_i2556 = load i64, i64* %_2553
  %_id_arr2557 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2548
  %_id_i2558 = load i64, i64* %_2553
  %_2559 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr2557, i32 0, i32 1, i64 %_id_i2558
  store i64 %_id_i2556, i64* %_2559
  %_id_i2560 = load i64, i64* %_2553
  %_2561 = add i64 %_id_i2560, 1
  store i64 %_2561, i64* %_2553
  br label %_start2562
_else2564:
  store i64 0, i64* %_2565
  br label %_start2576
_start2576:
  %_id_i2566 = load i64, i64* %_2565
  %_2567 = icmp slt i64 %_id_i2566, 10
  br i1 %_2567, label %_body2577, label %_else2578
_body2577:
  %_id_arr2569 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2548
  %_id_i2570 = load i64, i64* %_2565
  %_index_pointer2571 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr2569, i32 0, i32 1, i64 %_id_i2570
  %_index_value2572 = load i64, i64* %_index_pointer2571
  %_id_sum2568 = load i64, i64* %_2552
  %_2573 = add i64 %_id_sum2568, %_index_value2572
  store i64 %_2573, i64* %_2552
  %_id_i2574 = load i64, i64* %_2565
  %_2575 = add i64 %_id_i2574, 1
  store i64 %_2575, i64* %_2565
  br label %_start2576
_else2578:
  %_id_sum2579 = load i64, i64* %_2552
  ret i64 %_id_sum2579
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
