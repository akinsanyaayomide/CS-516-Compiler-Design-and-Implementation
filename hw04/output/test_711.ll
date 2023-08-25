; generated from: hw4programs/msort.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string3067 = global [2 x i8] c" \00"
@_string3073 = global [2 x i8] c" \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3036 = alloca i64
  %_argv3037 = alloca { i64, [0 x i8*] }*
  %_3038 = alloca i64
  %_3039 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc3036
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3037
  store i64 0, i64* %_3038
  %_raw_array3040 = call i64* @oat_alloc_array(i64 10)
  %_array3041 = bitcast i64* %_raw_array3040 to { i64, [0 x i64] }*
  %_3060 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3041, i32 0, i32 1, i32 9
  store i64 117, i64* %_3060
  %_3058 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3041, i32 0, i32 1, i32 8
  store i64 118, i64* %_3058
  %_3056 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3041, i32 0, i32 1, i32 7
  store i64 119, i64* %_3056
  %_3054 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3041, i32 0, i32 1, i32 6
  store i64 120, i64* %_3054
  %_3052 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3041, i32 0, i32 1, i32 5
  store i64 121, i64* %_3052
  %_3050 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3041, i32 0, i32 1, i32 4
  store i64 122, i64* %_3050
  %_3048 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3041, i32 0, i32 1, i32 3
  store i64 123, i64* %_3048
  %_3046 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3041, i32 0, i32 1, i32 2
  store i64 124, i64* %_3046
  %_3044 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3041, i32 0, i32 1, i32 1
  store i64 125, i64* %_3044
  %_3042 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3041, i32 0, i32 1, i32 0
  store i64 126, i64* %_3042
  store { i64, [0 x i64] }* %_array3041, { i64, [0 x i64] }** %_3039
  %_id_a3062 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3039
  %_3063 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a3062)
  call void @print_string(i8* %_3063)
  %_id_a3065 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3039
  call void @oat_mergesort({ i64, [0 x i64] }* %_id_a3065, i64 0, i64 9)
  %_str3068 = getelementptr [2 x i8], [2 x i8]* @_string3067, i32 0, i32 0
  call void @print_string(i8* %_str3068)
  %_id_a3070 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3039
  %_3071 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a3070)
  call void @print_string(i8* %_3071)
  %_str3074 = getelementptr [2 x i8], [2 x i8]* @_string3073, i32 0, i32 0
  call void @print_string(i8* %_str3074)
  %_id_i3076 = load i64, i64* %_3038
  ret i64 %_id_i3076
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_a3007 = alloca { i64, [0 x i64] }*
  %_low3008 = alloca i64
  %_high3009 = alloca i64
  %_3010 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3007
  store i64 %low, i64* %_low3008
  store i64 %high, i64* %_high3009
  store i64 0, i64* %_3010
  br label %_start3032
_start3032:
  %_id_high3012 = load i64, i64* %_high3009
  %_id_low3011 = load i64, i64* %_low3008
  %_3013 = icmp slt i64 %_id_low3011, %_id_high3012
  br i1 %_3013, label %_then3033, label %_else3034
_then3033:
  %_id_high3015 = load i64, i64* %_high3009
  %_id_low3014 = load i64, i64* %_low3008
  %_3016 = add i64 %_id_low3014, %_id_high3015
  %_3017 = lshr i64 %_3016, 1
  store i64 %_3017, i64* %_3010
  %_id_a3018 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3007
  %_id_low3019 = load i64, i64* %_low3008
  %_id_mid3020 = load i64, i64* %_3010
  call void @oat_mergesort({ i64, [0 x i64] }* %_id_a3018, i64 %_id_low3019, i64 %_id_mid3020)
  %_id_a3022 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3007
  %_id_mid3023 = load i64, i64* %_3010
  %_3024 = add i64 %_id_mid3023, 1
  %_id_high3025 = load i64, i64* %_high3009
  call void @oat_mergesort({ i64, [0 x i64] }* %_id_a3022, i64 %_3024, i64 %_id_high3025)
  %_id_a3027 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3007
  %_id_low3028 = load i64, i64* %_low3008
  %_id_high3029 = load i64, i64* %_high3009
  %_id_mid3030 = load i64, i64* %_3010
  call void @merge({ i64, [0 x i64] }* %_id_a3027, i64 %_id_low3028, i64 %_id_high3029, i64 %_id_mid3030)
  br label %_post3035
_else3034:
  br label %_post3035
_post3035:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_a2898 = alloca { i64, [0 x i64] }*
  %_low2899 = alloca i64
  %_high2900 = alloca i64
  %_mid2901 = alloca i64
  %_2902 = alloca i64
  %_2903 = alloca i64
  %_2904 = alloca i64
  %_2905 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2898
  store i64 %low, i64* %_low2899
  store i64 %high, i64* %_high2900
  store i64 %mid, i64* %_mid2901
  store i64 0, i64* %_2902
  store i64 0, i64* %_2903
  store i64 0, i64* %_2904
  %_raw_array2906 = call i64* @oat_alloc_array(i64 50)
  %_array2907 = bitcast i64* %_raw_array2906 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2907, { i64, [0 x i64] }** %_2905
  %_id_low2908 = load i64, i64* %_low2899
  store i64 %_id_low2908, i64* %_2902
  %_id_mid2909 = load i64, i64* %_mid2901
  %_2910 = add i64 %_id_mid2909, 1
  store i64 %_2910, i64* %_2903
  %_id_low2911 = load i64, i64* %_low2899
  store i64 %_id_low2911, i64* %_2904
  br label %_start2954
_start2954:
  %_id_high2916 = load i64, i64* %_high2900
  %_id_j2915 = load i64, i64* %_2903
  %_2917 = icmp sle i64 %_id_j2915, %_id_high2916
  %_id_mid2913 = load i64, i64* %_mid2901
  %_id_i2912 = load i64, i64* %_2902
  %_2914 = icmp sle i64 %_id_i2912, %_id_mid2913
  %_2918 = and i1 %_2914, %_2917
  br i1 %_2918, label %_body2955, label %_else2956
_body2955:
  br label %_start2950
_start2950:
  %_id_a2923 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2898
  %_id_j2924 = load i64, i64* %_2903
  %_index_pointer2925 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2923, i32 0, i32 1, i64 %_id_j2924
  %_index_value2926 = load i64, i64* %_index_pointer2925
  %_id_a2919 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2898
  %_id_i2920 = load i64, i64* %_2902
  %_index_pointer2921 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2919, i32 0, i32 1, i64 %_id_i2920
  %_index_value2922 = load i64, i64* %_index_pointer2921
  %_2927 = icmp slt i64 %_index_value2922, %_index_value2926
  br i1 %_2927, label %_then2951, label %_else2952
_then2951:
  %_id_a2928 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2898
  %_id_i2929 = load i64, i64* %_2902
  %_index_pointer2930 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2928, i32 0, i32 1, i64 %_id_i2929
  %_index_value2931 = load i64, i64* %_index_pointer2930
  %_id_c2932 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2905
  %_id_k2933 = load i64, i64* %_2904
  %_2934 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c2932, i32 0, i32 1, i64 %_id_k2933
  store i64 %_index_value2931, i64* %_2934
  %_id_k2935 = load i64, i64* %_2904
  %_2936 = add i64 %_id_k2935, 1
  store i64 %_2936, i64* %_2904
  %_id_i2937 = load i64, i64* %_2902
  %_2938 = add i64 %_id_i2937, 1
  store i64 %_2938, i64* %_2902
  br label %_post2953
_else2952:
  %_id_a2939 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2898
  %_id_j2940 = load i64, i64* %_2903
  %_index_pointer2941 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2939, i32 0, i32 1, i64 %_id_j2940
  %_index_value2942 = load i64, i64* %_index_pointer2941
  %_id_c2943 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2905
  %_id_k2944 = load i64, i64* %_2904
  %_2945 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c2943, i32 0, i32 1, i64 %_id_k2944
  store i64 %_index_value2942, i64* %_2945
  %_id_k2946 = load i64, i64* %_2904
  %_2947 = add i64 %_id_k2946, 1
  store i64 %_2947, i64* %_2904
  %_id_j2948 = load i64, i64* %_2903
  %_2949 = add i64 %_id_j2948, 1
  store i64 %_2949, i64* %_2903
  br label %_post2953
_post2953:
  br label %_start2954
_else2956:
  br label %_start2971
_start2971:
  %_id_mid2958 = load i64, i64* %_mid2901
  %_id_i2957 = load i64, i64* %_2902
  %_2959 = icmp sle i64 %_id_i2957, %_id_mid2958
  br i1 %_2959, label %_body2972, label %_else2973
_body2972:
  %_id_a2960 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2898
  %_id_i2961 = load i64, i64* %_2902
  %_index_pointer2962 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2960, i32 0, i32 1, i64 %_id_i2961
  %_index_value2963 = load i64, i64* %_index_pointer2962
  %_id_c2964 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2905
  %_id_k2965 = load i64, i64* %_2904
  %_2966 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c2964, i32 0, i32 1, i64 %_id_k2965
  store i64 %_index_value2963, i64* %_2966
  %_id_k2967 = load i64, i64* %_2904
  %_2968 = add i64 %_id_k2967, 1
  store i64 %_2968, i64* %_2904
  %_id_i2969 = load i64, i64* %_2902
  %_2970 = add i64 %_id_i2969, 1
  store i64 %_2970, i64* %_2902
  br label %_start2971
_else2973:
  br label %_start2988
_start2988:
  %_id_high2975 = load i64, i64* %_high2900
  %_id_j2974 = load i64, i64* %_2903
  %_2976 = icmp sle i64 %_id_j2974, %_id_high2975
  br i1 %_2976, label %_body2989, label %_else2990
_body2989:
  %_id_a2977 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2898
  %_id_j2978 = load i64, i64* %_2903
  %_index_pointer2979 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2977, i32 0, i32 1, i64 %_id_j2978
  %_index_value2980 = load i64, i64* %_index_pointer2979
  %_id_c2981 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2905
  %_id_k2982 = load i64, i64* %_2904
  %_2983 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c2981, i32 0, i32 1, i64 %_id_k2982
  store i64 %_index_value2980, i64* %_2983
  %_id_k2984 = load i64, i64* %_2904
  %_2985 = add i64 %_id_k2984, 1
  store i64 %_2985, i64* %_2904
  %_id_j2986 = load i64, i64* %_2903
  %_2987 = add i64 %_id_j2986, 1
  store i64 %_2987, i64* %_2903
  br label %_start2988
_else2990:
  %_id_low2991 = load i64, i64* %_low2899
  store i64 %_id_low2991, i64* %_2902
  br label %_start3004
_start3004:
  %_id_k2993 = load i64, i64* %_2904
  %_id_i2992 = load i64, i64* %_2902
  %_2994 = icmp slt i64 %_id_i2992, %_id_k2993
  br i1 %_2994, label %_body3005, label %_else3006
_body3005:
  %_id_c2995 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2905
  %_id_i2996 = load i64, i64* %_2902
  %_index_pointer2997 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c2995, i32 0, i32 1, i64 %_id_i2996
  %_index_value2998 = load i64, i64* %_index_pointer2997
  %_id_a2999 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2898
  %_id_i3000 = load i64, i64* %_2902
  %_3001 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2999, i32 0, i32 1, i64 %_id_i3000
  store i64 %_index_value2998, i64* %_3001
  %_id_i3002 = load i64, i64* %_2902
  %_3003 = add i64 %_id_i3002, 1
  store i64 %_3003, i64* %_2902
  br label %_start3004
_else3006:
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
