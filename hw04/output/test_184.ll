; generated from: hw4programs/msort2.oat
target triple = "x86_64-apple-macosx10.13.0"
@_raw_string3060 = global [2 x i8] c" \00"
@_raw_string3066 = global [2 x i8] c" \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3028 = alloca i64
  %_argv3029 = alloca { i64, [0 x i8*] }*
  %_3030 = alloca { i64, [0 x i64] }*
  %_3053 = alloca i64
  store i64 %argc, i64* %_argc3028
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3029
  %_raw_array3031 = call i64* @oat_alloc_array(i64 10)
  %_array3032 = bitcast i64* %_raw_array3031 to { i64, [0 x i64] }*
  %_3051 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3032, i32 0, i32 1, i32 9
  store i64 117, i64* %_3051
  %_3049 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3032, i32 0, i32 1, i32 8
  store i64 118, i64* %_3049
  %_3047 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3032, i32 0, i32 1, i32 7
  store i64 119, i64* %_3047
  %_3045 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3032, i32 0, i32 1, i32 6
  store i64 120, i64* %_3045
  %_3043 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3032, i32 0, i32 1, i32 5
  store i64 121, i64* %_3043
  %_3041 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3032, i32 0, i32 1, i32 4
  store i64 122, i64* %_3041
  %_3039 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3032, i32 0, i32 1, i32 3
  store i64 123, i64* %_3039
  %_3037 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3032, i32 0, i32 1, i32 2
  store i64 124, i64* %_3037
  %_3035 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3032, i32 0, i32 1, i32 1
  store i64 125, i64* %_3035
  %_3033 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3032, i32 0, i32 1, i32 0
  store i64 126, i64* %_3033
  store { i64, [0 x i64] }* %_array3032, { i64, [0 x i64] }** %_3030
  store i64 0, i64* %_3053
  %_id_a3054 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3030
  %_3055 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a3054)
  call void @print_string(i8* %_3055)
  %_id_a3057 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3030
  call void @oat_mergesort({ i64, [0 x i64] }* %_id_a3057, i64 0, i64 9)
  %_result_id3059 = bitcast [2 x i8]* @_raw_string3060 to i8*
  call void @print_string(i8* %_result_id3059)
  %_id_a3062 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3030
  %_3063 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a3062)
  call void @print_string(i8* %_3063)
  %_result_id3065 = bitcast [2 x i8]* @_raw_string3066 to i8*
  call void @print_string(i8* %_result_id3065)
  %_id_i3068 = load i64, i64* %_3053
  ret i64 %_id_i3068
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_a2999 = alloca { i64, [0 x i64] }*
  %_low3000 = alloca i64
  %_high3001 = alloca i64
  %_3002 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2999
  store i64 %low, i64* %_low3000
  store i64 %high, i64* %_high3001
  store i64 0, i64* %_3002
  br label %_start3024
_start3024:
  %_id_high3004 = load i64, i64* %_high3001
  %_id_low3003 = load i64, i64* %_low3000
  %_3005 = icmp slt i64 %_id_low3003, %_id_high3004
  br i1 %_3005, label %_then3025, label %_else3026
_then3025:
  %_id_high3007 = load i64, i64* %_high3001
  %_id_low3006 = load i64, i64* %_low3000
  %_3008 = add i64 %_id_low3006, %_id_high3007
  %_3009 = lshr i64 %_3008, 1
  store i64 %_3009, i64* %_3002
  %_id_a3010 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2999
  %_id_low3011 = load i64, i64* %_low3000
  %_id_mid3012 = load i64, i64* %_3002
  call void @oat_mergesort({ i64, [0 x i64] }* %_id_a3010, i64 %_id_low3011, i64 %_id_mid3012)
  %_id_a3014 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2999
  %_id_mid3015 = load i64, i64* %_3002
  %_3016 = add i64 %_id_mid3015, 1
  %_id_high3017 = load i64, i64* %_high3001
  call void @oat_mergesort({ i64, [0 x i64] }* %_id_a3014, i64 %_3016, i64 %_id_high3017)
  %_id_a3019 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2999
  %_id_low3020 = load i64, i64* %_low3000
  %_id_high3021 = load i64, i64* %_high3001
  %_id_mid3022 = load i64, i64* %_3002
  call void @merge({ i64, [0 x i64] }* %_id_a3019, i64 %_id_low3020, i64 %_id_high3021, i64 %_id_mid3022)
  br label %_post3027
_else3026:
  br label %_post3027
_post3027:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_a2890 = alloca { i64, [0 x i64] }*
  %_low2891 = alloca i64
  %_high2892 = alloca i64
  %_mid2893 = alloca i64
  %_2894 = alloca i64
  %_2895 = alloca i64
  %_2896 = alloca i64
  %_2897 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2890
  store i64 %low, i64* %_low2891
  store i64 %high, i64* %_high2892
  store i64 %mid, i64* %_mid2893
  store i64 0, i64* %_2894
  store i64 0, i64* %_2895
  store i64 0, i64* %_2896
  %_raw_array2898 = call i64* @oat_alloc_array(i64 50)
  %_array2899 = bitcast i64* %_raw_array2898 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2899, { i64, [0 x i64] }** %_2897
  %_id_low2900 = load i64, i64* %_low2891
  store i64 %_id_low2900, i64* %_2894
  %_id_mid2901 = load i64, i64* %_mid2893
  %_2902 = add i64 %_id_mid2901, 1
  store i64 %_2902, i64* %_2895
  %_id_low2903 = load i64, i64* %_low2891
  store i64 %_id_low2903, i64* %_2896
  br label %_start2946
_start2946:
  %_id_high2908 = load i64, i64* %_high2892
  %_id_j2907 = load i64, i64* %_2895
  %_2909 = icmp sle i64 %_id_j2907, %_id_high2908
  %_id_mid2905 = load i64, i64* %_mid2893
  %_id_i2904 = load i64, i64* %_2894
  %_2906 = icmp sle i64 %_id_i2904, %_id_mid2905
  %_2910 = and i1 %_2906, %_2909
  br i1 %_2910, label %_body2947, label %_else2948
_body2947:
  br label %_start2942
_start2942:
  %_id_a2915 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2890
  %_id_j2916 = load i64, i64* %_2895
  %_index_pointer2917 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2915, i32 0, i32 1, i64 %_id_j2916
  %_index_value2918 = load i64, i64* %_index_pointer2917
  %_id_a2911 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2890
  %_id_i2912 = load i64, i64* %_2894
  %_index_pointer2913 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2911, i32 0, i32 1, i64 %_id_i2912
  %_index_value2914 = load i64, i64* %_index_pointer2913
  %_2919 = icmp slt i64 %_index_value2914, %_index_value2918
  br i1 %_2919, label %_then2943, label %_else2944
_then2943:
  %_id_a2920 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2890
  %_id_i2921 = load i64, i64* %_2894
  %_index_pointer2922 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2920, i32 0, i32 1, i64 %_id_i2921
  %_index_value2923 = load i64, i64* %_index_pointer2922
  %_id_c2924 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2897
  %_id_k2925 = load i64, i64* %_2896
  %_2926 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c2924, i32 0, i32 1, i64 %_id_k2925
  store i64 %_index_value2923, i64* %_2926
  %_id_k2927 = load i64, i64* %_2896
  %_2928 = add i64 %_id_k2927, 1
  store i64 %_2928, i64* %_2896
  %_id_i2929 = load i64, i64* %_2894
  %_2930 = add i64 %_id_i2929, 1
  store i64 %_2930, i64* %_2894
  br label %_post2945
_else2944:
  %_id_a2931 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2890
  %_id_j2932 = load i64, i64* %_2895
  %_index_pointer2933 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2931, i32 0, i32 1, i64 %_id_j2932
  %_index_value2934 = load i64, i64* %_index_pointer2933
  %_id_c2935 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2897
  %_id_k2936 = load i64, i64* %_2896
  %_2937 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c2935, i32 0, i32 1, i64 %_id_k2936
  store i64 %_index_value2934, i64* %_2937
  %_id_k2938 = load i64, i64* %_2896
  %_2939 = add i64 %_id_k2938, 1
  store i64 %_2939, i64* %_2896
  %_id_j2940 = load i64, i64* %_2895
  %_2941 = add i64 %_id_j2940, 1
  store i64 %_2941, i64* %_2895
  br label %_post2945
_post2945:
  br label %_start2946
_else2948:
  br label %_start2963
_start2963:
  %_id_mid2950 = load i64, i64* %_mid2893
  %_id_i2949 = load i64, i64* %_2894
  %_2951 = icmp sle i64 %_id_i2949, %_id_mid2950
  br i1 %_2951, label %_body2964, label %_else2965
_body2964:
  %_id_a2952 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2890
  %_id_i2953 = load i64, i64* %_2894
  %_index_pointer2954 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2952, i32 0, i32 1, i64 %_id_i2953
  %_index_value2955 = load i64, i64* %_index_pointer2954
  %_id_c2956 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2897
  %_id_k2957 = load i64, i64* %_2896
  %_2958 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c2956, i32 0, i32 1, i64 %_id_k2957
  store i64 %_index_value2955, i64* %_2958
  %_id_k2959 = load i64, i64* %_2896
  %_2960 = add i64 %_id_k2959, 1
  store i64 %_2960, i64* %_2896
  %_id_i2961 = load i64, i64* %_2894
  %_2962 = add i64 %_id_i2961, 1
  store i64 %_2962, i64* %_2894
  br label %_start2963
_else2965:
  br label %_start2980
_start2980:
  %_id_high2967 = load i64, i64* %_high2892
  %_id_j2966 = load i64, i64* %_2895
  %_2968 = icmp sle i64 %_id_j2966, %_id_high2967
  br i1 %_2968, label %_body2981, label %_else2982
_body2981:
  %_id_a2969 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2890
  %_id_j2970 = load i64, i64* %_2895
  %_index_pointer2971 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2969, i32 0, i32 1, i64 %_id_j2970
  %_index_value2972 = load i64, i64* %_index_pointer2971
  %_id_c2973 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2897
  %_id_k2974 = load i64, i64* %_2896
  %_2975 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c2973, i32 0, i32 1, i64 %_id_k2974
  store i64 %_index_value2972, i64* %_2975
  %_id_k2976 = load i64, i64* %_2896
  %_2977 = add i64 %_id_k2976, 1
  store i64 %_2977, i64* %_2896
  %_id_j2978 = load i64, i64* %_2895
  %_2979 = add i64 %_id_j2978, 1
  store i64 %_2979, i64* %_2895
  br label %_start2980
_else2982:
  %_id_low2983 = load i64, i64* %_low2891
  store i64 %_id_low2983, i64* %_2894
  br label %_start2996
_start2996:
  %_id_k2985 = load i64, i64* %_2896
  %_id_i2984 = load i64, i64* %_2894
  %_2986 = icmp slt i64 %_id_i2984, %_id_k2985
  br i1 %_2986, label %_body2997, label %_else2998
_body2997:
  %_id_c2987 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2897
  %_id_i2988 = load i64, i64* %_2894
  %_index_pointer2989 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c2987, i32 0, i32 1, i64 %_id_i2988
  %_index_value2990 = load i64, i64* %_index_pointer2989
  %_id_a2991 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2890
  %_id_i2992 = load i64, i64* %_2894
  %_2993 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2991, i32 0, i32 1, i64 %_id_i2992
  store i64 %_index_value2990, i64* %_2993
  %_id_i2994 = load i64, i64* %_2894
  %_2995 = add i64 %_id_i2994, 1
  store i64 %_2995, i64* %_2894
  br label %_start2996
_else2998:
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
