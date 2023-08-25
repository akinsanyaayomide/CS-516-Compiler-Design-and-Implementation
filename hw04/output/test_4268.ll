; generated from: hw4programs/qsort.oat
target triple = "x86_64-apple-macosx10.13.0"
define void @quick_sort({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_a3158 = alloca { i64, [0 x i64] }*
  %_l3159 = alloca i64
  %_r3160 = alloca i64
  %_3161 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3158
  store i64 %l, i64* %_l3159
  store i64 %r, i64* %_r3160
  store i64 0, i64* %_3161
  br label %_begin_if3179
_begin_if3179:
  %_id_l3162 = load i64, i64* %_l3159
  %_id_r3163 = load i64, i64* %_r3160
  %_bop3164 = icmp slt i64 %_id_l3162, %_id_r3163
  br i1 %_bop3164, label %_then_branch3180, label %_else_branch3181
_then_branch3180:
  %_id_a3165 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3158
  %_id_l3166 = load i64, i64* %_l3159
  %_id_r3167 = load i64, i64* %_r3160
  %_3168 = call i64 @partition({ i64, [0 x i64] }* %_id_a3165, i64 %_id_l3166, i64 %_id_r3167)
  store i64 %_3168, i64* %_3161
  %_id_a3169 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3158
  %_id_l3170 = load i64, i64* %_l3159
  %_id_j3171 = load i64, i64* %_3161
  %_bop3172 = sub i64 %_id_j3171, 1
  call void @quick_sort({ i64, [0 x i64] }* %_id_a3169, i64 %_id_l3170, i64 %_bop3172)
  %_id_a3174 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3158
  %_id_j3175 = load i64, i64* %_3161
  %_bop3176 = add i64 %_id_j3175, 1
  %_id_r3177 = load i64, i64* %_r3160
  call void @quick_sort({ i64, [0 x i64] }* %_id_a3174, i64 %_bop3176, i64 %_id_r3177)
  br label %_end_if3182
_else_branch3181:
  br label %_end_if3182
_end_if3182:
  ret void
}

define i64 @partition({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_a3064 = alloca { i64, [0 x i64] }*
  %_l3065 = alloca i64
  %_r3066 = alloca i64
  %_3067 = alloca i64
  %_3072 = alloca i64
  %_3074 = alloca i64
  %_3077 = alloca i64
  %_3078 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3064
  store i64 %l, i64* %_l3065
  store i64 %r, i64* %_r3066
  %_id_a3068 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3064
  %_id_l3069 = load i64, i64* %_l3065
  %_index_pointer3071 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3068, i32 0, i32 1, i64 %_id_l3069
  %_index_value3070 = load i64, i64* %_index_pointer3071
  store i64 %_index_value3070, i64* %_3067
  %_id_l3073 = load i64, i64* %_l3065
  store i64 %_id_l3073, i64* %_3072
  %_id_r3075 = load i64, i64* %_r3066
  %_bop3076 = add i64 %_id_r3075, 1
  store i64 %_bop3076, i64* %_3074
  store i64 0, i64* %_3077
  store i64 0, i64* %_3078
  br label %_cond3140
_cond3140:
  %_id_done3079 = load i64, i64* %_3078
  %_bop3080 = icmp eq i64 %_id_done3079, 0
  br i1 %_bop3080, label %_if3139, label %_merge3141
_if3139:
  %_id_i3081 = load i64, i64* %_3072
  %_bop3082 = add i64 %_id_i3081, 1
  store i64 %_bop3082, i64* %_3072
  br label %_cond3096
_cond3096:
  %_id_a3083 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3064
  %_id_i3084 = load i64, i64* %_3072
  %_index_pointer3086 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3083, i32 0, i32 1, i64 %_id_i3084
  %_index_value3085 = load i64, i64* %_index_pointer3086
  %_id_pivot3087 = load i64, i64* %_3067
  %_bop3088 = icmp sle i64 %_index_value3085, %_id_pivot3087
  %_id_i3089 = load i64, i64* %_3072
  %_id_r3090 = load i64, i64* %_r3066
  %_bop3091 = icmp sle i64 %_id_i3089, %_id_r3090
  %_bop3092 = and i1 %_bop3088, %_bop3091
  br i1 %_bop3092, label %_if3095, label %_merge3097
_if3095:
  %_id_i3093 = load i64, i64* %_3072
  %_bop3094 = add i64 %_id_i3093, 1
  store i64 %_bop3094, i64* %_3072
  br label %_cond3096
_merge3097:
  %_id_j3098 = load i64, i64* %_3074
  %_bop3099 = sub i64 %_id_j3098, 1
  store i64 %_bop3099, i64* %_3074
  br label %_cond3109
_cond3109:
  %_id_a3100 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3064
  %_id_j3101 = load i64, i64* %_3074
  %_index_pointer3103 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3100, i32 0, i32 1, i64 %_id_j3101
  %_index_value3102 = load i64, i64* %_index_pointer3103
  %_id_pivot3104 = load i64, i64* %_3067
  %_bop3105 = icmp sgt i64 %_index_value3102, %_id_pivot3104
  br i1 %_bop3105, label %_if3108, label %_merge3110
_if3108:
  %_id_j3106 = load i64, i64* %_3074
  %_bop3107 = sub i64 %_id_j3106, 1
  store i64 %_bop3107, i64* %_3074
  br label %_cond3109
_merge3110:
  br label %_begin_if3114
_begin_if3114:
  %_id_i3111 = load i64, i64* %_3072
  %_id_j3112 = load i64, i64* %_3074
  %_bop3113 = icmp sge i64 %_id_i3111, %_id_j3112
  br i1 %_bop3113, label %_then_branch3115, label %_else_branch3116
_then_branch3115:
  store i64 1, i64* %_3078
  br label %_end_if3117
_else_branch3116:
  br label %_end_if3117
_end_if3117:
  br label %_begin_if3135
_begin_if3135:
  %_id_done3118 = load i64, i64* %_3078
  %_bop3119 = icmp eq i64 %_id_done3118, 0
  br i1 %_bop3119, label %_then_branch3136, label %_else_branch3137
_then_branch3136:
  %_id_a3120 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3064
  %_id_i3121 = load i64, i64* %_3072
  %_index_pointer3123 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3120, i32 0, i32 1, i64 %_id_i3121
  %_index_value3122 = load i64, i64* %_index_pointer3123
  store i64 %_index_value3122, i64* %_3077
  %_id_a3124 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3064
  %_id_j3125 = load i64, i64* %_3074
  %_index_pointer3127 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3124, i32 0, i32 1, i64 %_id_j3125
  %_index_value3126 = load i64, i64* %_index_pointer3127
  %_id_a3128 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3064
  %_id_i3129 = load i64, i64* %_3072
  %_3130 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3128, i32 0, i32 1, i64 %_id_i3129
  store i64 %_index_value3126, i64* %_3130
  %_id_t3131 = load i64, i64* %_3077
  %_id_a3132 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3064
  %_id_j3133 = load i64, i64* %_3074
  %_3134 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3132, i32 0, i32 1, i64 %_id_j3133
  store i64 %_id_t3131, i64* %_3134
  br label %_end_if3138
_else_branch3137:
  br label %_end_if3138
_end_if3138:
  br label %_cond3140
_merge3141:
  %_id_a3142 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3064
  %_id_l3143 = load i64, i64* %_l3065
  %_index_pointer3145 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3142, i32 0, i32 1, i64 %_id_l3143
  %_index_value3144 = load i64, i64* %_index_pointer3145
  store i64 %_index_value3144, i64* %_3077
  %_id_a3146 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3064
  %_id_j3147 = load i64, i64* %_3074
  %_index_pointer3149 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3146, i32 0, i32 1, i64 %_id_j3147
  %_index_value3148 = load i64, i64* %_index_pointer3149
  %_id_a3150 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3064
  %_id_l3151 = load i64, i64* %_l3065
  %_3152 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3150, i32 0, i32 1, i64 %_id_l3151
  store i64 %_index_value3148, i64* %_3152
  %_id_t3153 = load i64, i64* %_3077
  %_id_a3154 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3064
  %_id_j3155 = load i64, i64* %_3074
  %_3156 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3154, i32 0, i32 1, i64 %_id_j3155
  store i64 %_id_t3153, i64* %_3156
  %_id_j3157 = load i64, i64* %_3074
  ret i64 %_id_j3157
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3024 = alloca i64
  %_argv3025 = alloca { i64, [0 x i8*] }*
  %_3026 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc3024
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3025
  %_raw_array3027 = call i64* @oat_alloc_array(i64 9)
  %_array3028 = bitcast i64* %_raw_array3027 to { i64, [0 x i64] }*
  %_3055 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3028, i32 0, i32 1, i32 8
  store i64 109, i64* %_3053
  %_3052 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3028, i32 0, i32 1, i32 7
  store i64 111, i64* %_3050
  %_3049 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3028, i32 0, i32 1, i32 6
  store i64 104, i64* %_3047
  %_3046 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3028, i32 0, i32 1, i32 5
  store i64 115, i64* %_3044
  %_3043 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3028, i32 0, i32 1, i32 4
  store i64 123, i64* %_3041
  %_3040 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3028, i32 0, i32 1, i32 3
  store i64 102, i64* %_3038
  %_3037 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3028, i32 0, i32 1, i32 2
  store i64 121, i64* %_3035
  %_3034 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3028, i32 0, i32 1, i32 1
  store i64 112, i64* %_3032
  %_3031 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3028, i32 0, i32 1, i32 0
  store i64 107, i64* %_3029
  store { i64, [0 x i64] }* %_array3028, { i64, [0 x i64] }** %_3026
  %_id_a3056 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3026
  %_3057 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a3056)
  call void @print_string(i8* %_3057)
  %_id_a3059 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3026
  call void @quick_sort({ i64, [0 x i64] }* %_id_a3059, i64 0, i64 8)
  %_id_a3061 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3026
  %_3062 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a3061)
  call void @print_string(i8* %_3062)
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
