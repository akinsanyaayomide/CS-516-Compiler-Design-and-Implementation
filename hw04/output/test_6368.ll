; generated from: hw4programs/qsort.oat
target triple = "x86_64-apple-macosx10.13.0"
define void @quick_sort({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_a2783 = alloca { i64, [0 x i64] }*
  %_l2784 = alloca i64
  %_r2785 = alloca i64
  %_j2786 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2783
  store i64 %l, i64* %_l2784
  store i64 %r, i64* %_r2785
  store i64 0, i64* %_j2786
  br label %_begin_if2807
_begin_if2807:
  %_id_l2787 = load i64, i64* %_l2784
  %_id_r2788 = load i64, i64* %_r2785
  %_bop2789 = icmp slt i64 %_id_l2787, %_id_r2788
  br i1 %_bop2789, label %_then_branch2806, label %_else_branch2805
_then_branch2806:
  %_id_a2790 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2783
  %_id_l2791 = load i64, i64* %_l2784
  %_id_r2792 = load i64, i64* %_r2785
  %_2793 = call i64 @partition({ i64, [0 x i64] }* %_id_a2790, i64 %_id_l2791, i64 %_id_r2792)
  store i64 %_2793, i64* %_j2786
  %_id_a2794 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2783
  %_id_l2795 = load i64, i64* %_l2784
  %_id_j2796 = load i64, i64* %_j2786
  %_bop2797 = sub i64 %_id_j2796, 1
  call void @quick_sort({ i64, [0 x i64] }* %_id_a2794, i64 %_id_l2795, i64 %_bop2797)
  %_id_a2799 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2783
  %_id_j2800 = load i64, i64* %_j2786
  %_bop2801 = add i64 %_id_j2800, 1
  %_id_r2802 = load i64, i64* %_r2785
  call void @quick_sort({ i64, [0 x i64] }* %_id_a2799, i64 %_bop2801, i64 %_id_r2802)
  br label %_end_if2804
_else_branch2805:
  br label %_end_if2804
_end_if2804:
  ret void
}

define i64 @partition({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_a2689 = alloca { i64, [0 x i64] }*
  %_l2690 = alloca i64
  %_r2691 = alloca i64
  %_pivot2696 = alloca i64
  %_i2698 = alloca i64
  %_j2701 = alloca i64
  %_t2702 = alloca i64
  %_done2703 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2689
  store i64 %l, i64* %_l2690
  store i64 %r, i64* %_r2691
  %_id_a2692 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2689
  %_id_l2693 = load i64, i64* %_l2690
  %_index_pointer2695 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2692, i32 0, i32 1, i64 %_id_l2693
  %_index_value2694 = load i64, i64* %_index_pointer2695
  store i64 %_index_value2694, i64* %_pivot2696
  %_id_l2697 = load i64, i64* %_l2690
  store i64 %_id_l2697, i64* %_i2698
  %_id_r2699 = load i64, i64* %_r2691
  %_bop2700 = add i64 %_id_r2699, 1
  store i64 %_bop2700, i64* %_j2701
  store i64 0, i64* %_t2702
  store i64 0, i64* %_done2703
  br label %_cond2765
_cond2765:
  %_id_done2704 = load i64, i64* %_done2703
  %_bop2705 = icmp eq i64 %_id_done2704, 0
  br i1 %_bop2705, label %_if2766, label %_merge2764
_if2766:
  %_id_i2706 = load i64, i64* %_i2698
  %_bop2707 = add i64 %_id_i2706, 1
  store i64 %_bop2707, i64* %_i2698
  br label %_cond2721
_cond2721:
  %_id_a2708 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2689
  %_id_i2709 = load i64, i64* %_i2698
  %_index_pointer2711 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2708, i32 0, i32 1, i64 %_id_i2709
  %_index_value2710 = load i64, i64* %_index_pointer2711
  %_id_pivot2712 = load i64, i64* %_pivot2696
  %_bop2713 = icmp sle i64 %_index_value2710, %_id_pivot2712
  %_id_i2714 = load i64, i64* %_i2698
  %_id_r2715 = load i64, i64* %_r2691
  %_bop2716 = icmp sle i64 %_id_i2714, %_id_r2715
  %_bop2717 = and i1 %_bop2713, %_bop2716
  br i1 %_bop2717, label %_if2722, label %_merge2720
_if2722:
  %_id_i2718 = load i64, i64* %_i2698
  %_bop2719 = add i64 %_id_i2718, 1
  store i64 %_bop2719, i64* %_i2698
  br label %_cond2721
_merge2720:
  %_id_j2723 = load i64, i64* %_j2701
  %_bop2724 = sub i64 %_id_j2723, 1
  store i64 %_bop2724, i64* %_j2701
  br label %_cond2734
_cond2734:
  %_id_a2725 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2689
  %_id_j2726 = load i64, i64* %_j2701
  %_index_pointer2728 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2725, i32 0, i32 1, i64 %_id_j2726
  %_index_value2727 = load i64, i64* %_index_pointer2728
  %_id_pivot2729 = load i64, i64* %_pivot2696
  %_bop2730 = icmp sgt i64 %_index_value2727, %_id_pivot2729
  br i1 %_bop2730, label %_if2735, label %_merge2733
_if2735:
  %_id_j2731 = load i64, i64* %_j2701
  %_bop2732 = sub i64 %_id_j2731, 1
  store i64 %_bop2732, i64* %_j2701
  br label %_cond2734
_merge2733:
  br label %_begin_if2742
_begin_if2742:
  %_id_i2736 = load i64, i64* %_i2698
  %_id_j2737 = load i64, i64* %_j2701
  %_bop2738 = icmp sge i64 %_id_i2736, %_id_j2737
  br i1 %_bop2738, label %_then_branch2741, label %_else_branch2740
_then_branch2741:
  store i64 1, i64* %_done2703
  br label %_end_if2739
_else_branch2740:
  br label %_end_if2739
_end_if2739:
  br label %_begin_if2763
_begin_if2763:
  %_id_done2743 = load i64, i64* %_done2703
  %_bop2744 = icmp eq i64 %_id_done2743, 0
  br i1 %_bop2744, label %_then_branch2762, label %_else_branch2761
_then_branch2762:
  %_id_a2745 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2689
  %_id_i2746 = load i64, i64* %_i2698
  %_index_pointer2748 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2745, i32 0, i32 1, i64 %_id_i2746
  %_index_value2747 = load i64, i64* %_index_pointer2748
  store i64 %_index_value2747, i64* %_t2702
  %_id_a2749 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2689
  %_id_j2750 = load i64, i64* %_j2701
  %_index_pointer2752 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2749, i32 0, i32 1, i64 %_id_j2750
  %_index_value2751 = load i64, i64* %_index_pointer2752
  %_id_a2753 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2689
  %_id_i2754 = load i64, i64* %_i2698
  %_2755 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2753, i32 0, i32 1, i64 %_id_i2754
  store i64 %_index_value2751, i64* %_2755
  %_id_t2756 = load i64, i64* %_t2702
  %_id_a2757 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2689
  %_id_j2758 = load i64, i64* %_j2701
  %_2759 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2757, i32 0, i32 1, i64 %_id_j2758
  store i64 %_id_t2756, i64* %_2759
  br label %_end_if2760
_else_branch2761:
  br label %_end_if2760
_end_if2760:
  br label %_cond2765
_merge2764:
  %_id_a2767 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2689
  %_id_l2768 = load i64, i64* %_l2690
  %_index_pointer2770 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2767, i32 0, i32 1, i64 %_id_l2768
  %_index_value2769 = load i64, i64* %_index_pointer2770
  store i64 %_index_value2769, i64* %_t2702
  %_id_a2771 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2689
  %_id_j2772 = load i64, i64* %_j2701
  %_index_pointer2774 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2771, i32 0, i32 1, i64 %_id_j2772
  %_index_value2773 = load i64, i64* %_index_pointer2774
  %_id_a2775 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2689
  %_id_l2776 = load i64, i64* %_l2690
  %_2777 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2775, i32 0, i32 1, i64 %_id_l2776
  store i64 %_index_value2773, i64* %_2777
  %_id_t2778 = load i64, i64* %_t2702
  %_id_a2779 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2689
  %_id_j2780 = load i64, i64* %_j2701
  %_2781 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2779, i32 0, i32 1, i64 %_id_j2780
  store i64 %_id_t2778, i64* %_2781
  %_id_j2782 = load i64, i64* %_j2701
  ret i64 %_id_j2782
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2658 = alloca i64
  %_argv2659 = alloca { i64, [0 x i8*] }*
  %_a2680 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2658
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2659
  %_raw_array2660 = call i64* @oat_alloc_array(i64 9)
  %_array2661 = bitcast i64* %_raw_array2660 to { i64, [0 x i64] }*
  %_2678 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2661, i32 0, i32 1, i32 8
  store i64 109, i64* %_2678
  %_2676 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2661, i32 0, i32 1, i32 7
  store i64 111, i64* %_2676
  %_2674 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2661, i32 0, i32 1, i32 6
  store i64 104, i64* %_2674
  %_2672 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2661, i32 0, i32 1, i32 5
  store i64 115, i64* %_2672
  %_2670 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2661, i32 0, i32 1, i32 4
  store i64 123, i64* %_2670
  %_2668 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2661, i32 0, i32 1, i32 3
  store i64 102, i64* %_2668
  %_2666 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2661, i32 0, i32 1, i32 2
  store i64 121, i64* %_2666
  %_2664 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2661, i32 0, i32 1, i32 1
  store i64 112, i64* %_2664
  %_2662 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2661, i32 0, i32 1, i32 0
  store i64 107, i64* %_2662
  store { i64, [0 x i64] }* %_array2661, { i64, [0 x i64] }** %_a2680
  %_id_a2681 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2680
  %_2682 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a2681)
  call void @print_string(i8* %_2682)
  %_id_a2684 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2680
  call void @quick_sort({ i64, [0 x i64] }* %_id_a2684, i64 0, i64 8)
  %_id_a2686 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2680
  %_2687 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a2686)
  call void @print_string(i8* %_2687)
  ret i64 255
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
