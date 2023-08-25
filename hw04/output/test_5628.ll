; generated from: hw4programs/msort.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string3063 = global [2 x i8] c" \00"
@_string3069 = global [2 x i8] c" \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3032 = alloca i64
  %_argv3033 = alloca { i64, [0 x i8*] }*
  %_i3034 = alloca i64
  %_a3057 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc3032
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3033
  store i64 0, i64* %_i3034
  %_raw_array3035 = call i64* @oat_alloc_array(i64 10)
  %_array3036 = bitcast i64* %_raw_array3035 to { i64, [0 x i64] }*
  %_3055 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3036, i32 0, i32 1, i32 9
  store i64 117, i64* %_3055
  %_3053 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3036, i32 0, i32 1, i32 8
  store i64 118, i64* %_3053
  %_3051 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3036, i32 0, i32 1, i32 7
  store i64 119, i64* %_3051
  %_3049 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3036, i32 0, i32 1, i32 6
  store i64 120, i64* %_3049
  %_3047 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3036, i32 0, i32 1, i32 5
  store i64 121, i64* %_3047
  %_3045 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3036, i32 0, i32 1, i32 4
  store i64 122, i64* %_3045
  %_3043 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3036, i32 0, i32 1, i32 3
  store i64 123, i64* %_3043
  %_3041 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3036, i32 0, i32 1, i32 2
  store i64 124, i64* %_3041
  %_3039 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3036, i32 0, i32 1, i32 1
  store i64 125, i64* %_3039
  %_3037 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3036, i32 0, i32 1, i32 0
  store i64 126, i64* %_3037
  store { i64, [0 x i64] }* %_array3036, { i64, [0 x i64] }** %_a3057
  %_id_a3058 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3057
  %_3059 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a3058)
  call void @print_string(i8* %_3059)
  %_id_a3061 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3057
  call void @oat_mergesort({ i64, [0 x i64] }* %_id_a3061, i64 0, i64 9)
  %_string13064 = getelementptr [2 x i8], [2 x i8]* @_string3063, i32 0, i32 0
  call void @print_string(i8* %_string13064)
  %_id_a3066 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3057
  %_3067 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a3066)
  call void @print_string(i8* %_3067)
  %_string13070 = getelementptr [2 x i8], [2 x i8]* @_string3069, i32 0, i32 0
  call void @print_string(i8* %_string13070)
  %_id_i3072 = load i64, i64* %_i3034
  ret i64 %_id_i3072
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_a3003 = alloca { i64, [0 x i64] }*
  %_low3004 = alloca i64
  %_high3005 = alloca i64
  %_mid3006 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3003
  store i64 %low, i64* %_low3004
  store i64 %high, i64* %_high3005
  store i64 0, i64* %_mid3006
  br label %_begin_if3031
_begin_if3031:
  %_id_low3007 = load i64, i64* %_low3004
  %_id_high3008 = load i64, i64* %_high3005
  %_bop3009 = icmp slt i64 %_id_low3007, %_id_high3008
  br i1 %_bop3009, label %_then_branch3030, label %_else_branch3029
_then_branch3030:
  %_id_low3010 = load i64, i64* %_low3004
  %_id_high3011 = load i64, i64* %_high3005
  %_bop3012 = add i64 %_id_low3010, %_id_high3011
  %_bop3013 = lshr i64 %_bop3012, 1
  store i64 %_bop3013, i64* %_mid3006
  %_id_a3014 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3003
  %_id_low3015 = load i64, i64* %_low3004
  %_id_mid3016 = load i64, i64* %_mid3006
  call void @oat_mergesort({ i64, [0 x i64] }* %_id_a3014, i64 %_id_low3015, i64 %_id_mid3016)
  %_id_a3018 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3003
  %_id_mid3019 = load i64, i64* %_mid3006
  %_bop3020 = add i64 %_id_mid3019, 1
  %_id_high3021 = load i64, i64* %_high3005
  call void @oat_mergesort({ i64, [0 x i64] }* %_id_a3018, i64 %_bop3020, i64 %_id_high3021)
  %_id_a3023 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3003
  %_id_low3024 = load i64, i64* %_low3004
  %_id_high3025 = load i64, i64* %_high3005
  %_id_mid3026 = load i64, i64* %_mid3006
  call void @merge({ i64, [0 x i64] }* %_id_a3023, i64 %_id_low3024, i64 %_id_high3025, i64 %_id_mid3026)
  br label %_end_if3028
_else_branch3029:
  br label %_end_if3028
_end_if3028:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_a2894 = alloca { i64, [0 x i64] }*
  %_low2895 = alloca i64
  %_high2896 = alloca i64
  %_mid2897 = alloca i64
  %_i2898 = alloca i64
  %_j2899 = alloca i64
  %_k2900 = alloca i64
  %_c2903 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2894
  store i64 %low, i64* %_low2895
  store i64 %high, i64* %_high2896
  store i64 %mid, i64* %_mid2897
  store i64 0, i64* %_i2898
  store i64 0, i64* %_j2899
  store i64 0, i64* %_k2900
  %_raw_array2901 = call i64* @oat_alloc_array(i64 50)
  %_array2902 = bitcast i64* %_raw_array2901 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2902, { i64, [0 x i64] }** %_c2903
  %_id_low2904 = load i64, i64* %_low2895
  store i64 %_id_low2904, i64* %_i2898
  %_id_mid2905 = load i64, i64* %_mid2897
  %_bop2906 = add i64 %_id_mid2905, 1
  store i64 %_bop2906, i64* %_j2899
  %_id_low2907 = load i64, i64* %_low2895
  store i64 %_id_low2907, i64* %_k2900
  br label %_cond2951
_cond2951:
  %_id_i2908 = load i64, i64* %_i2898
  %_id_mid2909 = load i64, i64* %_mid2897
  %_bop2910 = icmp sle i64 %_id_i2908, %_id_mid2909
  %_id_j2911 = load i64, i64* %_j2899
  %_id_high2912 = load i64, i64* %_high2896
  %_bop2913 = icmp sle i64 %_id_j2911, %_id_high2912
  %_bop2914 = and i1 %_bop2910, %_bop2913
  br i1 %_bop2914, label %_if2950, label %_merge2952
_if2950:
  br label %_begin_if2949
_begin_if2949:
  %_id_a2915 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2894
  %_id_i2916 = load i64, i64* %_i2898
  %_index_pointer2918 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2915, i32 0, i32 1, i64 %_id_i2916
  %_index_value2917 = load i64, i64* %_index_pointer2918
  %_id_a2919 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2894
  %_id_j2920 = load i64, i64* %_j2899
  %_index_pointer2922 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2919, i32 0, i32 1, i64 %_id_j2920
  %_index_value2921 = load i64, i64* %_index_pointer2922
  %_bop2923 = icmp slt i64 %_index_value2917, %_index_value2921
  br i1 %_bop2923, label %_then_branch2948, label %_else_branch2947
_then_branch2948:
  %_id_a2924 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2894
  %_id_i2925 = load i64, i64* %_i2898
  %_index_pointer2927 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2924, i32 0, i32 1, i64 %_id_i2925
  %_index_value2926 = load i64, i64* %_index_pointer2927
  %_id_c2928 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c2903
  %_id_k2929 = load i64, i64* %_k2900
  %_2930 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c2928, i32 0, i32 1, i64 %_id_k2929
  store i64 %_index_value2926, i64* %_2930
  %_id_k2931 = load i64, i64* %_k2900
  %_bop2932 = add i64 %_id_k2931, 1
  store i64 %_bop2932, i64* %_k2900
  %_id_i2933 = load i64, i64* %_i2898
  %_bop2934 = add i64 %_id_i2933, 1
  store i64 %_bop2934, i64* %_i2898
  br label %_end_if2946
_else_branch2947:
  %_id_a2935 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2894
  %_id_j2936 = load i64, i64* %_j2899
  %_index_pointer2938 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2935, i32 0, i32 1, i64 %_id_j2936
  %_index_value2937 = load i64, i64* %_index_pointer2938
  %_id_c2939 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c2903
  %_id_k2940 = load i64, i64* %_k2900
  %_2941 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c2939, i32 0, i32 1, i64 %_id_k2940
  store i64 %_index_value2937, i64* %_2941
  %_id_k2942 = load i64, i64* %_k2900
  %_bop2943 = add i64 %_id_k2942, 1
  store i64 %_bop2943, i64* %_k2900
  %_id_j2944 = load i64, i64* %_j2899
  %_bop2945 = add i64 %_id_j2944, 1
  store i64 %_bop2945, i64* %_j2899
  br label %_end_if2946
_end_if2946:
  br label %_cond2951
_merge2952:
  br label %_cond2968
_cond2968:
  %_id_i2953 = load i64, i64* %_i2898
  %_id_mid2954 = load i64, i64* %_mid2897
  %_bop2955 = icmp sle i64 %_id_i2953, %_id_mid2954
  br i1 %_bop2955, label %_if2967, label %_merge2969
_if2967:
  %_id_a2956 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2894
  %_id_i2957 = load i64, i64* %_i2898
  %_index_pointer2959 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2956, i32 0, i32 1, i64 %_id_i2957
  %_index_value2958 = load i64, i64* %_index_pointer2959
  %_id_c2960 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c2903
  %_id_k2961 = load i64, i64* %_k2900
  %_2962 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c2960, i32 0, i32 1, i64 %_id_k2961
  store i64 %_index_value2958, i64* %_2962
  %_id_k2963 = load i64, i64* %_k2900
  %_bop2964 = add i64 %_id_k2963, 1
  store i64 %_bop2964, i64* %_k2900
  %_id_i2965 = load i64, i64* %_i2898
  %_bop2966 = add i64 %_id_i2965, 1
  store i64 %_bop2966, i64* %_i2898
  br label %_cond2968
_merge2969:
  br label %_cond2985
_cond2985:
  %_id_j2970 = load i64, i64* %_j2899
  %_id_high2971 = load i64, i64* %_high2896
  %_bop2972 = icmp sle i64 %_id_j2970, %_id_high2971
  br i1 %_bop2972, label %_if2984, label %_merge2986
_if2984:
  %_id_a2973 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2894
  %_id_j2974 = load i64, i64* %_j2899
  %_index_pointer2976 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2973, i32 0, i32 1, i64 %_id_j2974
  %_index_value2975 = load i64, i64* %_index_pointer2976
  %_id_c2977 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c2903
  %_id_k2978 = load i64, i64* %_k2900
  %_2979 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c2977, i32 0, i32 1, i64 %_id_k2978
  store i64 %_index_value2975, i64* %_2979
  %_id_k2980 = load i64, i64* %_k2900
  %_bop2981 = add i64 %_id_k2980, 1
  store i64 %_bop2981, i64* %_k2900
  %_id_j2982 = load i64, i64* %_j2899
  %_bop2983 = add i64 %_id_j2982, 1
  store i64 %_bop2983, i64* %_j2899
  br label %_cond2985
_merge2986:
  %_id_low2987 = load i64, i64* %_low2895
  store i64 %_id_low2987, i64* %_i2898
  br label %_cond3001
_cond3001:
  %_id_i2988 = load i64, i64* %_i2898
  %_id_k2989 = load i64, i64* %_k2900
  %_bop2990 = icmp slt i64 %_id_i2988, %_id_k2989
  br i1 %_bop2990, label %_if3000, label %_merge3002
_if3000:
  %_id_c2991 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c2903
  %_id_i2992 = load i64, i64* %_i2898
  %_index_pointer2994 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c2991, i32 0, i32 1, i64 %_id_i2992
  %_index_value2993 = load i64, i64* %_index_pointer2994
  %_id_a2995 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2894
  %_id_i2996 = load i64, i64* %_i2898
  %_2997 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2995, i32 0, i32 1, i64 %_id_i2996
  store i64 %_index_value2993, i64* %_2997
  %_id_i2998 = load i64, i64* %_i2898
  %_bop2999 = add i64 %_id_i2998, 1
  store i64 %_bop2999, i64* %_i2898
  br label %_cond3001
_merge3002:
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
