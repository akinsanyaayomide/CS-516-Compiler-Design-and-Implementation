; generated from: hw4programs/sieve.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @sieve(i64 %n) {
  %_n2769 = alloca i64
  %_2770 = alloca { i64, [0 x i1] }*
  %_2774 = alloca i64
  %_2790 = alloca i64
  %_2798 = alloca i64
  %_2820 = alloca i64
  %_2821 = alloca i64
  store i64 %n, i64* %_n2769
  %_id_n2771 = load i64, i64* %_n2769
  %_raw_array2772 = call i64* @oat_alloc_array(i64 %_id_n2771)
  %_array2773 = bitcast i64* %_raw_array2772 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array2773, { i64, [0 x i1] }** %_2770
  store i64 0, i64* %_2774
  br label %_cond2784
_cond2784:
  %_id_n2776 = load i64, i64* %_n2769
  %_id_i2775 = load i64, i64* %_2774
  %_2777 = icmp slt i64 %_id_i2775, %_id_n2776
  br i1 %_2777, label %_if2783, label %_merge2785
_if2783:
  %_id_arr2778 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_2770
  %_id_i2779 = load i64, i64* %_2774
  %_2780 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr2778, i32 0, i32 1, i64 %_id_i2779
  store i1 1, i1* %_2780
  %_id_i2781 = load i64, i64* %_2774
  %_2782 = add i64 %_id_i2781, 1
  store i64 %_2782, i64* %_2774
  br label %_cond2784
_merge2785:
  %_id_arr2786 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_2770
  %_2787 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr2786, i32 0, i32 1, i32 0
  store i1 0, i1* %_2787
  %_id_arr2788 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_2770
  %_2789 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr2788, i32 0, i32 1, i32 1
  store i1 0, i1* %_2789
  store i64 0, i64* %_2790
  br label %_cond2818
_cond2818:
  %_id_n2792 = load i64, i64* %_n2769
  %_id_i2791 = load i64, i64* %_2790
  %_2793 = icmp slt i64 %_id_i2791, %_id_n2792
  br i1 %_2793, label %_if2817, label %_merge2819
_if2817:
  %_id_arr2794 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_2770
  %_id_i2795 = load i64, i64* %_2790
  %_index_pointer2796 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr2794, i32 0, i32 1, i64 %_id_i2795
  %_index_value2797 = load i1, i1* %_index_pointer2796
  br i1 %_index_value2797, label %_if2813, label %_merge2814
_if2813:
  %_id_i2799 = load i64, i64* %_2790
  %_2800 = mul i64 %_id_i2799, 2
  store i64 %_2800, i64* %_2798
  br label %_cond2811
_cond2811:
  %_id_n2802 = load i64, i64* %_n2769
  %_id_j2801 = load i64, i64* %_2798
  %_2803 = icmp slt i64 %_id_j2801, %_id_n2802
  br i1 %_2803, label %_if2810, label %_merge2812
_if2810:
  %_id_arr2804 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_2770
  %_id_j2805 = load i64, i64* %_2798
  %_2806 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr2804, i32 0, i32 1, i64 %_id_j2805
  store i1 0, i1* %_2806
  %_id_i2808 = load i64, i64* %_2790
  %_id_j2807 = load i64, i64* %_2798
  %_2809 = add i64 %_id_j2807, %_id_i2808
  store i64 %_2809, i64* %_2798
  br label %_cond2811
_merge2812:
  br label %_merge2814
_merge2814:
  %_id_i2815 = load i64, i64* %_2790
  %_2816 = add i64 %_id_i2815, 1
  store i64 %_2816, i64* %_2790
  br label %_cond2818
_merge2819:
  store i64 0, i64* %_2820
  store i64 0, i64* %_2821
  br label %_cond2836
_cond2836:
  %_id_n2823 = load i64, i64* %_n2769
  %_id_i2822 = load i64, i64* %_2821
  %_2824 = icmp slt i64 %_id_i2822, %_id_n2823
  br i1 %_2824, label %_if2835, label %_merge2837
_if2835:
  %_id_arr2825 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_2770
  %_id_i2826 = load i64, i64* %_2821
  %_index_pointer2827 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr2825, i32 0, i32 1, i64 %_id_i2826
  %_index_value2828 = load i1, i1* %_index_pointer2827
  br i1 %_index_value2828, label %_if2831, label %_merge2832
_if2831:
  %_id_count2829 = load i64, i64* %_2820
  %_2830 = add i64 %_id_count2829, 1
  store i64 %_2830, i64* %_2820
  br label %_merge2832
_merge2832:
  %_id_i2833 = load i64, i64* %_2821
  %_2834 = add i64 %_id_i2833, 1
  store i64 %_2834, i64* %_2821
  br label %_cond2836
_merge2837:
  %_id_count2838 = load i64, i64* %_2820
  ret i64 %_id_count2838
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2764 = alloca i64
  %_argv2765 = alloca { i64, [0 x i8*] }*
  %_2766 = alloca i64
  store i64 %argc, i64* %_argc2764
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2765
  store i64 100, i64* %_2766
  %_id_n2767 = load i64, i64* %_2766
  %_2768 = call i64 @sieve(i64 %_id_n2767)
  ret i64 %_2768
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
