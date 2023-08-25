; generated from: hw4programs/msort.oat
target triple = "x86_64-apple-macosx10.13.0"
@_raw_string2881 = global [2 x i8] c" \00"
@_raw_string2887 = global [2 x i8] c" \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2849 = alloca i64
  %_argv2850 = alloca { i64, [0 x i8*] }*
  %_2851 = alloca i64
  %_2852 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2849
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2850
  store i64 0, i64* %_2851
  %_raw_array2853 = call i64* @oat_alloc_array(i64 10)
  %_array2854 = bitcast i64* %_raw_array2853 to { i64, [0 x i64] }*
  %_2873 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2854, i32 0, i32 1, i32 9
  store i64 117, i64* %_2873
  %_2871 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2854, i32 0, i32 1, i32 8
  store i64 118, i64* %_2871
  %_2869 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2854, i32 0, i32 1, i32 7
  store i64 119, i64* %_2869
  %_2867 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2854, i32 0, i32 1, i32 6
  store i64 120, i64* %_2867
  %_2865 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2854, i32 0, i32 1, i32 5
  store i64 121, i64* %_2865
  %_2863 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2854, i32 0, i32 1, i32 4
  store i64 122, i64* %_2863
  %_2861 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2854, i32 0, i32 1, i32 3
  store i64 123, i64* %_2861
  %_2859 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2854, i32 0, i32 1, i32 2
  store i64 124, i64* %_2859
  %_2857 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2854, i32 0, i32 1, i32 1
  store i64 125, i64* %_2857
  %_2855 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2854, i32 0, i32 1, i32 0
  store i64 126, i64* %_2855
  store { i64, [0 x i64] }* %_array2854, { i64, [0 x i64] }** %_2852
  %_id_a2875 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2852
  %_2876 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a2875)
  call void @print_string(i8* %_2876)
  %_id_a2878 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2852
  call void @oat_mergesort({ i64, [0 x i64] }* %_id_a2878, i64 0, i64 9)
  %_result_id2880 = bitcast [2 x i8]* @_raw_string2881 to i8*
  call void @print_string(i8* %_result_id2880)
  %_id_a2883 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2852
  %_2884 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a2883)
  call void @print_string(i8* %_2884)
  %_result_id2886 = bitcast [2 x i8]* @_raw_string2887 to i8*
  call void @print_string(i8* %_result_id2886)
  %_id_i2889 = load i64, i64* %_2851
  ret i64 %_id_i2889
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_a2820 = alloca { i64, [0 x i64] }*
  %_low2821 = alloca i64
  %_high2822 = alloca i64
  %_2823 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2820
  store i64 %low, i64* %_low2821
  store i64 %high, i64* %_high2822
  store i64 0, i64* %_2823
  br label %_start2845
_start2845:
  %_id_high2825 = load i64, i64* %_high2822
  %_id_low2824 = load i64, i64* %_low2821
  %_2826 = icmp slt i64 %_id_low2824, %_id_high2825
  br i1 %_2826, label %_then2846, label %_else2847
_then2846:
  %_id_high2828 = load i64, i64* %_high2822
  %_id_low2827 = load i64, i64* %_low2821
  %_2829 = add i64 %_id_low2827, %_id_high2828
  %_2830 = lshr i64 %_2829, 1
  store i64 %_2830, i64* %_2823
  %_id_a2831 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2820
  %_id_low2832 = load i64, i64* %_low2821
  %_id_mid2833 = load i64, i64* %_2823
  call void @oat_mergesort({ i64, [0 x i64] }* %_id_a2831, i64 %_id_low2832, i64 %_id_mid2833)
  %_id_a2835 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2820
  %_id_mid2836 = load i64, i64* %_2823
  %_2837 = add i64 %_id_mid2836, 1
  %_id_high2838 = load i64, i64* %_high2822
  call void @oat_mergesort({ i64, [0 x i64] }* %_id_a2835, i64 %_2837, i64 %_id_high2838)
  %_id_a2840 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2820
  %_id_low2841 = load i64, i64* %_low2821
  %_id_high2842 = load i64, i64* %_high2822
  %_id_mid2843 = load i64, i64* %_2823
  call void @merge({ i64, [0 x i64] }* %_id_a2840, i64 %_id_low2841, i64 %_id_high2842, i64 %_id_mid2843)
  br label %_post2848
_else2847:
  br label %_post2848
_post2848:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_a2711 = alloca { i64, [0 x i64] }*
  %_low2712 = alloca i64
  %_high2713 = alloca i64
  %_mid2714 = alloca i64
  %_2715 = alloca i64
  %_2716 = alloca i64
  %_2717 = alloca i64
  %_2718 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2711
  store i64 %low, i64* %_low2712
  store i64 %high, i64* %_high2713
  store i64 %mid, i64* %_mid2714
  store i64 0, i64* %_2715
  store i64 0, i64* %_2716
  store i64 0, i64* %_2717
  %_raw_array2719 = call i64* @oat_alloc_array(i64 50)
  %_array2720 = bitcast i64* %_raw_array2719 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2720, { i64, [0 x i64] }** %_2718
  %_id_low2721 = load i64, i64* %_low2712
  store i64 %_id_low2721, i64* %_2715
  %_id_mid2722 = load i64, i64* %_mid2714
  %_2723 = add i64 %_id_mid2722, 1
  store i64 %_2723, i64* %_2716
  %_id_low2724 = load i64, i64* %_low2712
  store i64 %_id_low2724, i64* %_2717
  br label %_start2767
_start2767:
  %_id_high2729 = load i64, i64* %_high2713
  %_id_j2728 = load i64, i64* %_2716
  %_2730 = icmp sle i64 %_id_j2728, %_id_high2729
  %_id_mid2726 = load i64, i64* %_mid2714
  %_id_i2725 = load i64, i64* %_2715
  %_2727 = icmp sle i64 %_id_i2725, %_id_mid2726
  %_2731 = and i1 %_2727, %_2730
  br i1 %_2731, label %_body2768, label %_else2769
_body2768:
  br label %_start2763
_start2763:
  %_id_a2736 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2711
  %_id_j2737 = load i64, i64* %_2716
  %_index_pointer2738 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2736, i32 0, i32 1, i64 %_id_j2737
  %_index_value2739 = load i64, i64* %_index_pointer2738
  %_id_a2732 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2711
  %_id_i2733 = load i64, i64* %_2715
  %_index_pointer2734 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2732, i32 0, i32 1, i64 %_id_i2733
  %_index_value2735 = load i64, i64* %_index_pointer2734
  %_2740 = icmp slt i64 %_index_value2735, %_index_value2739
  br i1 %_2740, label %_then2764, label %_else2765
_then2764:
  %_id_a2741 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2711
  %_id_i2742 = load i64, i64* %_2715
  %_index_pointer2743 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2741, i32 0, i32 1, i64 %_id_i2742
  %_index_value2744 = load i64, i64* %_index_pointer2743
  %_id_c2745 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2718
  %_id_k2746 = load i64, i64* %_2717
  %_2747 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c2745, i32 0, i32 1, i64 %_id_k2746
  store i64 %_index_value2744, i64* %_2747
  %_id_k2748 = load i64, i64* %_2717
  %_2749 = add i64 %_id_k2748, 1
  store i64 %_2749, i64* %_2717
  %_id_i2750 = load i64, i64* %_2715
  %_2751 = add i64 %_id_i2750, 1
  store i64 %_2751, i64* %_2715
  br label %_post2766
_else2765:
  %_id_a2752 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2711
  %_id_j2753 = load i64, i64* %_2716
  %_index_pointer2754 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2752, i32 0, i32 1, i64 %_id_j2753
  %_index_value2755 = load i64, i64* %_index_pointer2754
  %_id_c2756 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2718
  %_id_k2757 = load i64, i64* %_2717
  %_2758 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c2756, i32 0, i32 1, i64 %_id_k2757
  store i64 %_index_value2755, i64* %_2758
  %_id_k2759 = load i64, i64* %_2717
  %_2760 = add i64 %_id_k2759, 1
  store i64 %_2760, i64* %_2717
  %_id_j2761 = load i64, i64* %_2716
  %_2762 = add i64 %_id_j2761, 1
  store i64 %_2762, i64* %_2716
  br label %_post2766
_post2766:
  br label %_start2767
_else2769:
  br label %_start2784
_start2784:
  %_id_mid2771 = load i64, i64* %_mid2714
  %_id_i2770 = load i64, i64* %_2715
  %_2772 = icmp sle i64 %_id_i2770, %_id_mid2771
  br i1 %_2772, label %_body2785, label %_else2786
_body2785:
  %_id_a2773 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2711
  %_id_i2774 = load i64, i64* %_2715
  %_index_pointer2775 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2773, i32 0, i32 1, i64 %_id_i2774
  %_index_value2776 = load i64, i64* %_index_pointer2775
  %_id_c2777 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2718
  %_id_k2778 = load i64, i64* %_2717
  %_2779 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c2777, i32 0, i32 1, i64 %_id_k2778
  store i64 %_index_value2776, i64* %_2779
  %_id_k2780 = load i64, i64* %_2717
  %_2781 = add i64 %_id_k2780, 1
  store i64 %_2781, i64* %_2717
  %_id_i2782 = load i64, i64* %_2715
  %_2783 = add i64 %_id_i2782, 1
  store i64 %_2783, i64* %_2715
  br label %_start2784
_else2786:
  br label %_start2801
_start2801:
  %_id_high2788 = load i64, i64* %_high2713
  %_id_j2787 = load i64, i64* %_2716
  %_2789 = icmp sle i64 %_id_j2787, %_id_high2788
  br i1 %_2789, label %_body2802, label %_else2803
_body2802:
  %_id_a2790 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2711
  %_id_j2791 = load i64, i64* %_2716
  %_index_pointer2792 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2790, i32 0, i32 1, i64 %_id_j2791
  %_index_value2793 = load i64, i64* %_index_pointer2792
  %_id_c2794 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2718
  %_id_k2795 = load i64, i64* %_2717
  %_2796 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c2794, i32 0, i32 1, i64 %_id_k2795
  store i64 %_index_value2793, i64* %_2796
  %_id_k2797 = load i64, i64* %_2717
  %_2798 = add i64 %_id_k2797, 1
  store i64 %_2798, i64* %_2717
  %_id_j2799 = load i64, i64* %_2716
  %_2800 = add i64 %_id_j2799, 1
  store i64 %_2800, i64* %_2716
  br label %_start2801
_else2803:
  %_id_low2804 = load i64, i64* %_low2712
  store i64 %_id_low2804, i64* %_2715
  br label %_start2817
_start2817:
  %_id_k2806 = load i64, i64* %_2717
  %_id_i2805 = load i64, i64* %_2715
  %_2807 = icmp slt i64 %_id_i2805, %_id_k2806
  br i1 %_2807, label %_body2818, label %_else2819
_body2818:
  %_id_c2808 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2718
  %_id_i2809 = load i64, i64* %_2715
  %_index_pointer2810 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c2808, i32 0, i32 1, i64 %_id_i2809
  %_index_value2811 = load i64, i64* %_index_pointer2810
  %_id_a2812 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2711
  %_id_i2813 = load i64, i64* %_2715
  %_2814 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2812, i32 0, i32 1, i64 %_id_i2813
  store i64 %_index_value2811, i64* %_2814
  %_id_i2815 = load i64, i64* %_2715
  %_2816 = add i64 %_id_i2815, 1
  store i64 %_2816, i64* %_2715
  br label %_start2817
_else2819:
  ret void
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
