; generated from: hw4programs/lib15.oat
target triple = "x86_64-apple-macosx10.13.0"
define i8* @sub(i8* %str, i64 %start, i64 %len) {
  %_str2611 = alloca i8*
  %_start2612 = alloca i64
  %_len2613 = alloca i64
  %_arr2616 = alloca { i64, [0 x i64] }*
  %_r2620 = alloca { i64, [0 x i64] }*
  %_i2621 = alloca i64
  store i8* %str, i8** %_str2611
  store i64 %start, i64* %_start2612
  store i64 %len, i64* %_len2613
  %_id_str2614 = load i8*, i8** %_str2611
  %_2615 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_str2614)
  store { i64, [0 x i64] }* %_2615, { i64, [0 x i64] }** %_arr2616
  %_id_len2617 = load i64, i64* %_len2613
  %_raw_array2618 = call i64* @oat_alloc_array(i64 %_id_len2617)
  %_array2619 = bitcast i64* %_raw_array2618 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2619, { i64, [0 x i64] }** %_r2620
  store i64 0, i64* %_i2621
  br label %_cond2637
_cond2637:
  %_id_i2622 = load i64, i64* %_i2621
  %_id_len2623 = load i64, i64* %_len2613
  %_bop2624 = icmp slt i64 %_id_i2622, %_id_len2623
  br i1 %_bop2624, label %_if2638, label %_merge2636
_if2638:
  %_id_arr2625 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2616
  %_id_i2626 = load i64, i64* %_i2621
  %_id_start2627 = load i64, i64* %_start2612
  %_bop2628 = add i64 %_id_i2626, %_id_start2627
  %_index_pointer2630 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr2625, i32 0, i32 1, i64 %_bop2628
  %_index_value2629 = load i64, i64* %_index_pointer2630
  %_id_r2631 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r2620
  %_id_i2632 = load i64, i64* %_i2621
  %_2633 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_r2631, i32 0, i32 1, i64 %_id_i2632
  store i64 %_index_value2629, i64* %_2633
  %_id_i2634 = load i64, i64* %_i2621
  %_bop2635 = add i64 %_id_i2634, 1
  store i64 %_bop2635, i64* %_i2621
  br label %_cond2637
_merge2636:
  %_id_r2639 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r2620
  %_2640 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_r2639)
  ret i8* %_2640
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2604 = alloca i64
  %_argv2605 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc2604
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2605
  %_id_argv2606 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2605
  %_index_pointer2608 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_id_argv2606, i32 0, i32 1, i32 1
  %_index_value2607 = load i8*, i8** %_index_pointer2608
  %_2609 = call i8* @sub(i8* %_index_value2607, i64 3, i64 5)
  call void @print_string(i8* %_2609)
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
