; generated from: hw4programs/lib15.oat
target triple = "x86_64-apple-macosx10.13.0"
define i8* @sub(i8* %str, i64 %start, i64 %len) {
  %_str2615 = alloca i8*
  %_start2616 = alloca i64
  %_len2617 = alloca i64
  %_2618 = alloca { i64, [0 x i64] }*
  %_2621 = alloca { i64, [0 x i64] }*
  %_2625 = alloca i64
  store i8* %str, i8** %_str2615
  store i64 %start, i64* %_start2616
  store i64 %len, i64* %_len2617
  %_id_str2619 = load i8*, i8** %_str2615
  %_2620 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_str2619)
  store { i64, [0 x i64] }* %_2620, { i64, [0 x i64] }** %_2618
  %_id_len2622 = load i64, i64* %_len2617
  %_raw_array2623 = call i64* @oat_alloc_array(i64 %_id_len2622)
  %_array2624 = bitcast i64* %_raw_array2623 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2624, { i64, [0 x i64] }** %_2621
  store i64 0, i64* %_2625
  br label %_start2640
_start2640:
  %_id_len2627 = load i64, i64* %_len2617
  %_id_i2626 = load i64, i64* %_2625
  %_2628 = icmp slt i64 %_id_i2626, %_id_len2627
  br i1 %_2628, label %_body2641, label %_else2642
_body2641:
  %_id_arr2629 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2618
  %_id_start2631 = load i64, i64* %_start2616
  %_id_i2630 = load i64, i64* %_2625
  %_2632 = add i64 %_id_i2630, %_id_start2631
  %_index_pointer2633 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr2629, i32 0, i32 1, i64 %_2632
  %_index_value2634 = load i64, i64* %_index_pointer2633
  %_id_r2635 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2621
  %_id_i2636 = load i64, i64* %_2625
  %_2637 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_r2635, i32 0, i32 1, i64 %_id_i2636
  store i64 %_index_value2634, i64* %_2637
  %_id_i2638 = load i64, i64* %_2625
  %_2639 = add i64 %_id_i2638, 1
  store i64 %_2639, i64* %_2625
  br label %_start2640
_else2642:
  %_id_r2643 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2621
  %_2644 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_r2643)
  ret i8* %_2644
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2608 = alloca i64
  %_argv2609 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc2608
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2609
  %_id_argv2610 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2609
  %_index_pointer2611 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_id_argv2610, i32 0, i32 1, i32 1
  %_index_value2612 = load i8*, i8** %_index_pointer2611
  %_2613 = call i8* @sub(i8* %_index_value2612, i64 3, i64 5)
  call void @print_string(i8* %_2613)
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
