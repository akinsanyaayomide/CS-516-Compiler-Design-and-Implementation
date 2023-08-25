; generated from: hw4programs/bsort.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string2836 = global [2 x i8] c" \00"

define void @bubble_sort({ i64, [0 x i64] }* %numbers, i64 %array_size) {
  %_numbers2845 = alloca { i64, [0 x i64] }*
  %_array_size2846 = alloca i64
  %_2847 = alloca i64
  %_2848 = alloca i64
  %_2853 = alloca i64
  store { i64, [0 x i64] }* %numbers, { i64, [0 x i64] }** %_numbers2845
  store i64 %array_size, i64* %_array_size2846
  store i64 0, i64* %_2847
  %_id_array_size2849 = load i64, i64* %_array_size2846
  %_2850 = sub i64 %_id_array_size2849, 1
  store i64 %_2850, i64* %_2848
  br label %_start2895
_start2895:
  %_id_i2851 = load i64, i64* %_2848
  %_2852 = icmp sgt i64 %_id_i2851, 0
  br i1 %_2852, label %_body2896, label %_else2897
_body2896:
  store i64 1, i64* %_2853
  br label %_start2890
_start2890:
  %_id_i2855 = load i64, i64* %_2848
  %_id_j2854 = load i64, i64* %_2853
  %_2856 = icmp sle i64 %_id_j2854, %_id_i2855
  br i1 %_2856, label %_body2891, label %_else2892
_body2891:
  br label %_start2884
_start2884:
  %_id_numbers2862 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2845
  %_id_i2863 = load i64, i64* %_2848
  %_index_pointer2864 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_numbers2862, i32 0, i32 1, i64 %_id_i2863
  %_index_value2865 = load i64, i64* %_index_pointer2864
  %_id_numbers2857 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2845
  %_id_j2858 = load i64, i64* %_2853
  %_2859 = sub i64 %_id_j2858, 1
  %_index_pointer2860 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_numbers2857, i32 0, i32 1, i64 %_2859
  %_index_value2861 = load i64, i64* %_index_pointer2860
  %_2866 = icmp sgt i64 %_index_value2861, %_index_value2865
  br i1 %_2866, label %_then2885, label %_else2886
_then2885:
  %_id_numbers2867 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2845
  %_id_j2868 = load i64, i64* %_2853
  %_2869 = sub i64 %_id_j2868, 1
  %_index_pointer2870 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_numbers2867, i32 0, i32 1, i64 %_2869
  %_index_value2871 = load i64, i64* %_index_pointer2870
  store i64 %_index_value2871, i64* %_2847
  %_id_numbers2872 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2845
  %_id_i2873 = load i64, i64* %_2848
  %_index_pointer2874 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_numbers2872, i32 0, i32 1, i64 %_id_i2873
  %_index_value2875 = load i64, i64* %_index_pointer2874
  %_id_numbers2876 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2845
  %_id_j2877 = load i64, i64* %_2853
  %_2878 = sub i64 %_id_j2877, 1
  %_2879 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_numbers2876, i32 0, i32 1, i64 %_2878
  store i64 %_index_value2875, i64* %_2879
  %_id_temp2880 = load i64, i64* %_2847
  %_id_numbers2881 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2845
  %_id_i2882 = load i64, i64* %_2848
  %_2883 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_numbers2881, i32 0, i32 1, i64 %_id_i2882
  store i64 %_id_temp2880, i64* %_2883
  br label %_post2887
_else2886:
  br label %_post2887
_post2887:
  %_id_j2888 = load i64, i64* %_2853
  %_2889 = add i64 %_id_j2888, 1
  store i64 %_2889, i64* %_2853
  br label %_start2890
_else2892:
  %_id_i2893 = load i64, i64* %_2848
  %_2894 = sub i64 %_id_i2893, 1
  store i64 %_2894, i64* %_2848
  br label %_start2895
_else2897:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2812 = alloca i64
  %_argv2813 = alloca { i64, [0 x i8*] }*
  %_2814 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2812
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2813
  %_raw_array2815 = call i64* @oat_alloc_array(i64 8)
  %_array2816 = bitcast i64* %_raw_array2815 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2816, { i64, [0 x i64] }** %_2814
  %_id_a2817 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2814
  %_2818 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2817, i32 0, i32 1, i32 0
  store i64 121, i64* %_2818
  %_id_a2819 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2814
  %_2820 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2819, i32 0, i32 1, i32 1
  store i64 125, i64* %_2820
  %_id_a2821 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2814
  %_2822 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2821, i32 0, i32 1, i32 2
  store i64 120, i64* %_2822
  %_id_a2823 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2814
  %_2824 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2823, i32 0, i32 1, i32 3
  store i64 111, i64* %_2824
  %_id_a2825 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2814
  %_2826 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2825, i32 0, i32 1, i32 4
  store i64 116, i64* %_2826
  %_id_a2827 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2814
  %_2828 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2827, i32 0, i32 1, i32 5
  store i64 110, i64* %_2828
  %_id_a2829 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2814
  %_2830 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2829, i32 0, i32 1, i32 6
  store i64 117, i64* %_2830
  %_id_a2831 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2814
  %_2832 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2831, i32 0, i32 1, i32 7
  store i64 119, i64* %_2832
  %_id_a2833 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2814
  %_2834 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a2833)
  call void @print_string(i8* %_2834)
  %_string12837 = getelementptr [2 x i8], [2 x i8]* @_string2836, i32 0, i32 0
  call void @print_string(i8* %_string12837)
  %_id_a2839 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2814
  call void @bubble_sort({ i64, [0 x i64] }* %_id_a2839, i64 8)
  %_id_a2841 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2814
  %_2842 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a2841)
  call void @print_string(i8* %_2842)
  %_2844 = mul i64 1, -1
  ret i64 %_2844
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
