; generated from: hw4programs/bsort.oat
target triple = "x86_64-apple-macosx10.13.0"
@_raw_string2650 = global [2 x i8] c" \00"

define void @bubble_sort({ i64, [0 x i64] }* %numbers, i64 %array_size) {
  %_numbers2658 = alloca { i64, [0 x i64] }*
  %_array_size2659 = alloca i64
  %_2660 = alloca i64
  %_2661 = alloca i64
  %_2666 = alloca i64
  store { i64, [0 x i64] }* %numbers, { i64, [0 x i64] }** %_numbers2658
  store i64 %array_size, i64* %_array_size2659
  store i64 0, i64* %_2660
  %_id_array_size2662 = load i64, i64* %_array_size2659
  %_2663 = sub i64 %_id_array_size2662, 1
  store i64 %_2663, i64* %_2661
  br label %_start2708
_start2708:
  %_id_i2664 = load i64, i64* %_2661
  %_2665 = icmp sgt i64 %_id_i2664, 0
  br i1 %_2665, label %_body2709, label %_else2710
_body2709:
  store i64 1, i64* %_2666
  br label %_start2703
_start2703:
  %_id_i2668 = load i64, i64* %_2661
  %_id_j2667 = load i64, i64* %_2666
  %_2669 = icmp sle i64 %_id_j2667, %_id_i2668
  br i1 %_2669, label %_body2704, label %_else2705
_body2704:
  br label %_start2697
_start2697:
  %_id_numbers2675 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2658
  %_id_i2676 = load i64, i64* %_2661
  %_index_pointer2677 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_numbers2675, i32 0, i32 1, i64 %_id_i2676
  %_index_value2678 = load i64, i64* %_index_pointer2677
  %_id_numbers2670 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2658
  %_id_j2671 = load i64, i64* %_2666
  %_2672 = sub i64 %_id_j2671, 1
  %_index_pointer2673 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_numbers2670, i32 0, i32 1, i64 %_2672
  %_index_value2674 = load i64, i64* %_index_pointer2673
  %_2679 = icmp sgt i64 %_index_value2674, %_index_value2678
  br i1 %_2679, label %_then2698, label %_else2699
_then2698:
  %_id_numbers2680 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2658
  %_id_j2681 = load i64, i64* %_2666
  %_2682 = sub i64 %_id_j2681, 1
  %_index_pointer2683 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_numbers2680, i32 0, i32 1, i64 %_2682
  %_index_value2684 = load i64, i64* %_index_pointer2683
  store i64 %_index_value2684, i64* %_2660
  %_id_numbers2685 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2658
  %_id_i2686 = load i64, i64* %_2661
  %_index_pointer2687 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_numbers2685, i32 0, i32 1, i64 %_id_i2686
  %_index_value2688 = load i64, i64* %_index_pointer2687
  %_id_numbers2689 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2658
  %_id_j2690 = load i64, i64* %_2666
  %_2691 = sub i64 %_id_j2690, 1
  %_2692 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_numbers2689, i32 0, i32 1, i64 %_2691
  store i64 %_index_value2688, i64* %_2692
  %_id_temp2693 = load i64, i64* %_2660
  %_id_numbers2694 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2658
  %_id_i2695 = load i64, i64* %_2661
  %_2696 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_numbers2694, i32 0, i32 1, i64 %_id_i2695
  store i64 %_id_temp2693, i64* %_2696
  br label %_post2700
_else2699:
  br label %_post2700
_post2700:
  %_id_j2701 = load i64, i64* %_2666
  %_2702 = add i64 %_id_j2701, 1
  store i64 %_2702, i64* %_2666
  br label %_start2703
_else2705:
  %_id_i2706 = load i64, i64* %_2661
  %_2707 = sub i64 %_id_i2706, 1
  store i64 %_2707, i64* %_2661
  br label %_start2708
_else2710:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2625 = alloca i64
  %_argv2626 = alloca { i64, [0 x i8*] }*
  %_2627 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2625
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2626
  %_raw_array2628 = call i64* @oat_alloc_array(i64 8)
  %_array2629 = bitcast i64* %_raw_array2628 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2629, { i64, [0 x i64] }** %_2627
  %_id_a2630 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2627
  %_2631 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2630, i32 0, i32 1, i32 0
  store i64 121, i64* %_2631
  %_id_a2632 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2627
  %_2633 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2632, i32 0, i32 1, i32 1
  store i64 125, i64* %_2633
  %_id_a2634 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2627
  %_2635 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2634, i32 0, i32 1, i32 2
  store i64 120, i64* %_2635
  %_id_a2636 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2627
  %_2637 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2636, i32 0, i32 1, i32 3
  store i64 111, i64* %_2637
  %_id_a2638 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2627
  %_2639 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2638, i32 0, i32 1, i32 4
  store i64 116, i64* %_2639
  %_id_a2640 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2627
  %_2641 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2640, i32 0, i32 1, i32 5
  store i64 110, i64* %_2641
  %_id_a2642 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2627
  %_2643 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2642, i32 0, i32 1, i32 6
  store i64 117, i64* %_2643
  %_id_a2644 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2627
  %_2645 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2644, i32 0, i32 1, i32 7
  store i64 119, i64* %_2645
  %_id_a2646 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2627
  %_2647 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a2646)
  call void @print_string(i8* %_2647)
  %_result_id2649 = bitcast [2 x i8]* @_raw_string2650 to i8*
  call void @print_string(i8* %_result_id2649)
  %_id_a2652 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2627
  call void @bubble_sort({ i64, [0 x i64] }* %_id_a2652, i64 8)
  %_id_a2654 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2627
  %_2655 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a2654)
  call void @print_string(i8* %_2655)
  %_2657 = mul i64 1, -1
  ret i64 %_2657
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
