; generated from: hw4programs/lib11.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string2545 = global [11 x i8] c"1234967890\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2542 = alloca i64
  %_argv2543 = alloca { i64, [0 x i8*] }*
  %_2544 = alloca { i64, [0 x i64] }*
  %_2548 = alloca i64
  %_2549 = alloca i64
  %_2561 = alloca i64
  store i64 %argc, i64* %_argc2542
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2543
  %_string12546 = getelementptr [11 x i8], [11 x i8]* @_string2545, i32 0, i32 0
  %_2547 = call { i64, [0 x i64] }* @array_of_string(i8* %_string12546)
  store { i64, [0 x i64] }* %_2547, { i64, [0 x i64] }** %_2544
  store i64 0, i64* %_2548
  store i64 0, i64* %_2549
  br label %_cond2559
_cond2559:
  %_id_i2550 = load i64, i64* %_2549
  %_bop2551 = icmp slt i64 %_id_i2550, 10
  br i1 %_bop2551, label %_if2558, label %_merge2560
_if2558:
  %_id_i2552 = load i64, i64* %_2549
  %_id_arr2553 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2544
  %_id_i2554 = load i64, i64* %_2549
  %_2555 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr2553, i32 0, i32 1, i64 %_id_i2554
  store i64 %_id_i2552, i64* %_2555
  %_id_i2556 = load i64, i64* %_2549
  %_bop2557 = add i64 %_id_i2556, 1
  store i64 %_bop2557, i64* %_2549
  br label %_cond2559
_merge2560:
  store i64 0, i64* %_2561
  br label %_cond2573
_cond2573:
  %_id_i2562 = load i64, i64* %_2561
  %_bop2563 = icmp slt i64 %_id_i2562, 10
  br i1 %_bop2563, label %_if2572, label %_merge2574
_if2572:
  %_id_sum2564 = load i64, i64* %_2548
  %_id_arr2565 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2544
  %_id_i2566 = load i64, i64* %_2561
  %_index_pointer2568 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr2565, i32 0, i32 1, i64 %_id_i2566
  %_index_value2567 = load i64, i64* %_index_pointer2568
  %_bop2569 = add i64 %_id_sum2564, %_index_value2567
  store i64 %_bop2569, i64* %_2548
  %_id_i2570 = load i64, i64* %_2561
  %_bop2571 = add i64 %_id_i2570, 1
  store i64 %_bop2571, i64* %_2561
  br label %_cond2573
_merge2574:
  %_id_sum2575 = load i64, i64* %_2548
  ret i64 %_id_sum2575
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
