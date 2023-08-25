; generated from: hw4programs/binary_gcd.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_x2979 = alloca i64
  %_y2980 = alloca i64
  store i64 %x, i64* %_x2979
  store i64 %y, i64* %_y2980
  %_id_y2982 = load i64, i64* %_y2980
  %_id_x2981 = load i64, i64* %_x2979
  %_2983 = icmp eq i64 %_id_x2981, %_id_y2982
  br i1 %_2983, label %_if2985, label %_merge2986
_if2985:
  %_id_x2984 = load i64, i64* %_x2979
  ret i64 %_id_x2984
_merge2986:
  %_id_x2987 = load i64, i64* %_x2979
  %_2988 = icmp eq i64 %_id_x2987, 0
  br i1 %_2988, label %_if2990, label %_merge2991
_if2990:
  %_id_y2989 = load i64, i64* %_y2980
  ret i64 %_id_y2989
_merge2991:
  %_id_y2992 = load i64, i64* %_y2980
  %_2993 = icmp eq i64 %_id_y2992, 0
  br i1 %_2993, label %_if2995, label %_merge2996
_if2995:
  %_id_x2994 = load i64, i64* %_x2979
  ret i64 %_id_x2994
_merge2996:
  %_id_x2997 = load i64, i64* %_x2979
  %_unop2998 = xor i64 %_id_x2997, -1
  %_2999 = and i64 %_unop2998, 1
  %_3000 = icmp eq i64 %_2999, 1
  br i1 %_3000, label %_if3017, label %_merge3018
_if3017:
  %_id_y3001 = load i64, i64* %_y2980
  %_3002 = and i64 %_id_y3001, 1
  %_3003 = icmp eq i64 %_3002, 1
  br i1 %_3003, label %_if3014, label %_else3015
_if3014:
  %_id_x3004 = load i64, i64* %_x2979
  %_3005 = lshr i64 %_id_x3004, 1
  %_id_y3006 = load i64, i64* %_y2980
  %_3007 = call i64 @binary_gcd(i64 %_3005, i64 %_id_y3006)
  ret i64 %_3007
_else3015:
  %_id_x3008 = load i64, i64* %_x2979
  %_3009 = lshr i64 %_id_x3008, 1
  %_id_y3010 = load i64, i64* %_y2980
  %_3011 = lshr i64 %_id_y3010, 1
  %_3012 = call i64 @binary_gcd(i64 %_3009, i64 %_3011)
  %_3013 = shl i64 %_3012, 1
  ret i64 %_3013
_merge3016:
  br label %_merge3018
_merge3018:
  %_id_y3019 = load i64, i64* %_y2980
  %_unop3020 = xor i64 %_id_y3019, -1
  %_3021 = and i64 %_unop3020, 1
  %_3022 = icmp eq i64 %_3021, 1
  br i1 %_3022, label %_if3027, label %_merge3028
_if3027:
  %_id_x3023 = load i64, i64* %_x2979
  %_id_y3024 = load i64, i64* %_y2980
  %_3025 = lshr i64 %_id_y3024, 1
  %_3026 = call i64 @binary_gcd(i64 %_id_x3023, i64 %_3025)
  ret i64 %_3026
_merge3028:
  %_id_y3030 = load i64, i64* %_y2980
  %_id_x3029 = load i64, i64* %_x2979
  %_3031 = icmp sgt i64 %_id_x3029, %_id_y3030
  br i1 %_3031, label %_if3038, label %_merge3039
_if3038:
  %_id_y3033 = load i64, i64* %_y2980
  %_id_x3032 = load i64, i64* %_x2979
  %_3034 = sub i64 %_id_x3032, %_id_y3033
  %_3035 = lshr i64 %_3034, 1
  %_id_y3036 = load i64, i64* %_y2980
  %_3037 = call i64 @binary_gcd(i64 %_3035, i64 %_id_y3036)
  ret i64 %_3037
_merge3039:
  %_id_x3041 = load i64, i64* %_x2979
  %_id_y3040 = load i64, i64* %_y2980
  %_3042 = sub i64 %_id_y3040, %_id_x3041
  %_3043 = lshr i64 %_3042, 1
  %_id_x3044 = load i64, i64* %_x2979
  %_3045 = call i64 @binary_gcd(i64 %_3043, i64 %_id_x3044)
  ret i64 %_3045
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2972 = alloca i64
  %_argv2973 = alloca { i64, [0 x i8*] }*
  %_2974 = alloca i64
  %_2975 = alloca i64
  store i64 %argc, i64* %_argc2972
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2973
  store i64 21, i64* %_2974
  store i64 15, i64* %_2975
  %_id_x2976 = load i64, i64* %_2974
  %_id_y2977 = load i64, i64* %_2975
  %_2978 = call i64 @binary_gcd(i64 %_id_x2976, i64 %_id_y2977)
  ret i64 %_2978
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
