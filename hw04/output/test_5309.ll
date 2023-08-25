; generated from: hw4programs/bsort.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string2832 = global [2 x i8] c" \00"

define void @bubble_sort({ i64, [0 x i64] }* %numbers, i64 %array_size) {
  %_numbers2841 = alloca { i64, [0 x i64] }*
  %_array_size2842 = alloca i64
  %_temp2843 = alloca i64
  %_i2846 = alloca i64
  %_j2849 = alloca i64
  store { i64, [0 x i64] }* %numbers, { i64, [0 x i64] }** %_numbers2841
  store i64 %array_size, i64* %_array_size2842
  store i64 0, i64* %_temp2843
  %_id_array_size2844 = load i64, i64* %_array_size2842
  %_bop2845 = sub i64 %_id_array_size2844, 1
  store i64 %_bop2845, i64* %_i2846
  br label %_cond2892
_cond2892:
  %_id_i2847 = load i64, i64* %_i2846
  %_bop2848 = icmp sgt i64 %_id_i2847, 0
  br i1 %_bop2848, label %_if2891, label %_merge2893
_if2891:
  store i64 1, i64* %_j2849
  br label %_cond2887
_cond2887:
  %_id_j2850 = load i64, i64* %_j2849
  %_id_i2851 = load i64, i64* %_i2846
  %_bop2852 = icmp sle i64 %_id_j2850, %_id_i2851
  br i1 %_bop2852, label %_if2886, label %_merge2888
_if2886:
  br label %_begin_if2880
_begin_if2880:
  %_id_numbers2853 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2841
  %_id_j2854 = load i64, i64* %_j2849
  %_bop2855 = sub i64 %_id_j2854, 1
  %_index_pointer2857 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_numbers2853, i32 0, i32 1, i64 %_bop2855
  %_index_value2856 = load i64, i64* %_index_pointer2857
  %_id_numbers2858 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2841
  %_id_i2859 = load i64, i64* %_i2846
  %_index_pointer2861 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_numbers2858, i32 0, i32 1, i64 %_id_i2859
  %_index_value2860 = load i64, i64* %_index_pointer2861
  %_bop2862 = icmp sgt i64 %_index_value2856, %_index_value2860
  br i1 %_bop2862, label %_then_branch2881, label %_else_branch2882
_then_branch2881:
  %_id_numbers2863 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2841
  %_id_j2864 = load i64, i64* %_j2849
  %_bop2865 = sub i64 %_id_j2864, 1
  %_index_pointer2867 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_numbers2863, i32 0, i32 1, i64 %_bop2865
  %_index_value2866 = load i64, i64* %_index_pointer2867
  store i64 %_index_value2866, i64* %_temp2843
  %_id_numbers2868 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2841
  %_id_i2869 = load i64, i64* %_i2846
  %_index_pointer2871 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_numbers2868, i32 0, i32 1, i64 %_id_i2869
  %_index_value2870 = load i64, i64* %_index_pointer2871
  %_id_numbers2872 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2841
  %_id_j2873 = load i64, i64* %_j2849
  %_bop2874 = sub i64 %_id_j2873, 1
  %_2875 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_numbers2872, i32 0, i32 1, i64 %_bop2874
  store i64 %_index_value2870, i64* %_2875
  %_id_temp2876 = load i64, i64* %_temp2843
  %_id_numbers2877 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2841
  %_id_i2878 = load i64, i64* %_i2846
  %_2879 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_numbers2877, i32 0, i32 1, i64 %_id_i2878
  store i64 %_id_temp2876, i64* %_2879
  br label %_end_if2883
_else_branch2882:
  br label %_end_if2883
_end_if2883:
  %_id_j2884 = load i64, i64* %_j2849
  %_bop2885 = add i64 %_id_j2884, 1
  store i64 %_bop2885, i64* %_j2849
  br label %_cond2887
_merge2888:
  %_id_i2889 = load i64, i64* %_i2846
  %_bop2890 = sub i64 %_id_i2889, 1
  store i64 %_bop2890, i64* %_i2846
  br label %_cond2892
_merge2893:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2808 = alloca i64
  %_argv2809 = alloca { i64, [0 x i8*] }*
  %_a2812 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2808
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2809
  %_raw_array2810 = call i64* @oat_alloc_array(i64 8)
  %_array2811 = bitcast i64* %_raw_array2810 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2811, { i64, [0 x i64] }** %_a2812
  %_id_a2813 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2812
  %_2814 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2813, i32 0, i32 1, i32 0
  store i64 121, i64* %_2814
  %_id_a2815 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2812
  %_2816 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2815, i32 0, i32 1, i32 1
  store i64 125, i64* %_2816
  %_id_a2817 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2812
  %_2818 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2817, i32 0, i32 1, i32 2
  store i64 120, i64* %_2818
  %_id_a2819 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2812
  %_2820 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2819, i32 0, i32 1, i32 3
  store i64 111, i64* %_2820
  %_id_a2821 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2812
  %_2822 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2821, i32 0, i32 1, i32 4
  store i64 116, i64* %_2822
  %_id_a2823 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2812
  %_2824 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2823, i32 0, i32 1, i32 5
  store i64 110, i64* %_2824
  %_id_a2825 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2812
  %_2826 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2825, i32 0, i32 1, i32 6
  store i64 117, i64* %_2826
  %_id_a2827 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2812
  %_2828 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2827, i32 0, i32 1, i32 7
  store i64 119, i64* %_2828
  %_id_a2829 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2812
  %_2830 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a2829)
  call void @print_string(i8* %_2830)
  %_string12833 = getelementptr [2 x i8], [2 x i8]* @_string2832, i32 0, i32 0
  call void @print_string(i8* %_string12833)
  %_id_a2835 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2812
  call void @bubble_sort({ i64, [0 x i64] }* %_id_a2835, i64 8)
  %_id_a2837 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2812
  %_2838 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a2837)
  call void @print_string(i8* %_2838)
  %_unop2840 = sub i64 0, 1
  ret i64 %_unop2840
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
