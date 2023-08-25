; generated from: hw4programs/msort2.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string3242 = global [2 x i8] c" \00"
@_string3248 = global [2 x i8] c" \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3211 = alloca i64
  %_argv3212 = alloca { i64, [0 x i8*] }*
  %_3213 = alloca { i64, [0 x i64] }*
  %_3236 = alloca i64
  store i64 %argc, i64* %_argc3211
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3212
  %_raw_array3214 = call i64* @oat_alloc_array(i64 10)
  %_array3215 = bitcast i64* %_raw_array3214 to { i64, [0 x i64] }*
  %_3234 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3215, i32 0, i32 1, i32 9
  store i64 117, i64* %_3234
  %_3232 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3215, i32 0, i32 1, i32 8
  store i64 118, i64* %_3232
  %_3230 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3215, i32 0, i32 1, i32 7
  store i64 119, i64* %_3230
  %_3228 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3215, i32 0, i32 1, i32 6
  store i64 120, i64* %_3228
  %_3226 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3215, i32 0, i32 1, i32 5
  store i64 121, i64* %_3226
  %_3224 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3215, i32 0, i32 1, i32 4
  store i64 122, i64* %_3224
  %_3222 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3215, i32 0, i32 1, i32 3
  store i64 123, i64* %_3222
  %_3220 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3215, i32 0, i32 1, i32 2
  store i64 124, i64* %_3220
  %_3218 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3215, i32 0, i32 1, i32 1
  store i64 125, i64* %_3218
  %_3216 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3215, i32 0, i32 1, i32 0
  store i64 126, i64* %_3216
  store { i64, [0 x i64] }* %_array3215, { i64, [0 x i64] }** %_3213
  store i64 0, i64* %_3236
  %_id_a3237 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3213
  %_3238 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a3237)
  call void @print_string(i8* %_3238)
  %_id_a3240 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3213
  call void @oat_mergesort({ i64, [0 x i64] }* %_id_a3240, i64 0, i64 9)
  %_string13243 = getelementptr [2 x i8], [2 x i8]* @_string3242, i32 0, i32 0
  call void @print_string(i8* %_string13243)
  %_id_a3245 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3213
  %_3246 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a3245)
  call void @print_string(i8* %_3246)
  %_string13249 = getelementptr [2 x i8], [2 x i8]* @_string3248, i32 0, i32 0
  call void @print_string(i8* %_string13249)
  %_id_i3251 = load i64, i64* %_3236
  ret i64 %_id_i3251
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_a3182 = alloca { i64, [0 x i64] }*
  %_low3183 = alloca i64
  %_high3184 = alloca i64
  %_3185 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3182
  store i64 %low, i64* %_low3183
  store i64 %high, i64* %_high3184
  store i64 0, i64* %_3185
  br label %_begin_if3207
_begin_if3207:
  %_id_high3187 = load i64, i64* %_high3184
  %_id_low3186 = load i64, i64* %_low3183
  %_3188 = icmp slt i64 %_id_low3186, %_id_high3187
  br i1 %_3188, label %_then_branch3208, label %_else_branch3209
_then_branch3208:
  %_id_high3190 = load i64, i64* %_high3184
  %_id_low3189 = load i64, i64* %_low3183
  %_3191 = add i64 %_id_low3189, %_id_high3190
  %_3192 = lshr i64 %_3191, 1
  store i64 %_3192, i64* %_3185
  %_id_a3193 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3182
  %_id_low3194 = load i64, i64* %_low3183
  %_id_mid3195 = load i64, i64* %_3185
  call void @oat_mergesort({ i64, [0 x i64] }* %_id_a3193, i64 %_id_low3194, i64 %_id_mid3195)
  %_id_a3197 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3182
  %_id_mid3198 = load i64, i64* %_3185
  %_3199 = add i64 %_id_mid3198, 1
  %_id_high3200 = load i64, i64* %_high3184
  call void @oat_mergesort({ i64, [0 x i64] }* %_id_a3197, i64 %_3199, i64 %_id_high3200)
  %_id_a3202 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3182
  %_id_low3203 = load i64, i64* %_low3183
  %_id_high3204 = load i64, i64* %_high3184
  %_id_mid3205 = load i64, i64* %_3185
  call void @merge({ i64, [0 x i64] }* %_id_a3202, i64 %_id_low3203, i64 %_id_high3204, i64 %_id_mid3205)
  br label %_end_if3210
_else_branch3209:
  br label %_end_if3210
_end_if3210:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_a3073 = alloca { i64, [0 x i64] }*
  %_low3074 = alloca i64
  %_high3075 = alloca i64
  %_mid3076 = alloca i64
  %_3077 = alloca i64
  %_3078 = alloca i64
  %_3079 = alloca i64
  %_3080 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3073
  store i64 %low, i64* %_low3074
  store i64 %high, i64* %_high3075
  store i64 %mid, i64* %_mid3076
  store i64 0, i64* %_3077
  store i64 0, i64* %_3078
  store i64 0, i64* %_3079
  %_raw_array3081 = call i64* @oat_alloc_array(i64 50)
  %_array3082 = bitcast i64* %_raw_array3081 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3082, { i64, [0 x i64] }** %_3080
  %_id_low3083 = load i64, i64* %_low3074
  store i64 %_id_low3083, i64* %_3077
  %_id_mid3084 = load i64, i64* %_mid3076
  %_3085 = add i64 %_id_mid3084, 1
  store i64 %_3085, i64* %_3078
  %_id_low3086 = load i64, i64* %_low3074
  store i64 %_id_low3086, i64* %_3079
  br label %_cond3130
_cond3130:
  %_id_high3091 = load i64, i64* %_high3075
  %_id_j3090 = load i64, i64* %_3078
  %_3092 = icmp sle i64 %_id_j3090, %_id_high3091
  %_id_mid3088 = load i64, i64* %_mid3076
  %_id_i3087 = load i64, i64* %_3077
  %_3089 = icmp sle i64 %_id_i3087, %_id_mid3088
  %_3093 = and i1 %_3089, %_3092
  br i1 %_3093, label %_if3129, label %_merge3131
_if3129:
  br label %_begin_if3125
_begin_if3125:
  %_id_a3098 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3073
  %_id_j3099 = load i64, i64* %_3078
  %_index_pointer3100 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3098, i32 0, i32 1, i64 %_id_j3099
  %_index_value3101 = load i64, i64* %_index_pointer3100
  %_id_a3094 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3073
  %_id_i3095 = load i64, i64* %_3077
  %_index_pointer3096 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3094, i32 0, i32 1, i64 %_id_i3095
  %_index_value3097 = load i64, i64* %_index_pointer3096
  %_3102 = icmp slt i64 %_index_value3097, %_index_value3101
  br i1 %_3102, label %_then_branch3126, label %_else_branch3127
_then_branch3126:
  %_id_a3103 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3073
  %_id_i3104 = load i64, i64* %_3077
  %_index_pointer3105 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3103, i32 0, i32 1, i64 %_id_i3104
  %_index_value3106 = load i64, i64* %_index_pointer3105
  %_id_c3107 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3080
  %_id_k3108 = load i64, i64* %_3079
  %_3109 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c3107, i32 0, i32 1, i64 %_id_k3108
  store i64 %_index_value3106, i64* %_3109
  %_id_k3110 = load i64, i64* %_3079
  %_3111 = add i64 %_id_k3110, 1
  store i64 %_3111, i64* %_3079
  %_id_i3112 = load i64, i64* %_3077
  %_3113 = add i64 %_id_i3112, 1
  store i64 %_3113, i64* %_3077
  br label %_end_if3128
_else_branch3127:
  %_id_a3114 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3073
  %_id_j3115 = load i64, i64* %_3078
  %_index_pointer3116 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3114, i32 0, i32 1, i64 %_id_j3115
  %_index_value3117 = load i64, i64* %_index_pointer3116
  %_id_c3118 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3080
  %_id_k3119 = load i64, i64* %_3079
  %_3120 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c3118, i32 0, i32 1, i64 %_id_k3119
  store i64 %_index_value3117, i64* %_3120
  %_id_k3121 = load i64, i64* %_3079
  %_3122 = add i64 %_id_k3121, 1
  store i64 %_3122, i64* %_3079
  %_id_j3123 = load i64, i64* %_3078
  %_3124 = add i64 %_id_j3123, 1
  store i64 %_3124, i64* %_3078
  br label %_end_if3128
_end_if3128:
  br label %_cond3130
_merge3131:
  br label %_cond3147
_cond3147:
  %_id_mid3133 = load i64, i64* %_mid3076
  %_id_i3132 = load i64, i64* %_3077
  %_3134 = icmp sle i64 %_id_i3132, %_id_mid3133
  br i1 %_3134, label %_if3146, label %_merge3148
_if3146:
  %_id_a3135 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3073
  %_id_i3136 = load i64, i64* %_3077
  %_index_pointer3137 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3135, i32 0, i32 1, i64 %_id_i3136
  %_index_value3138 = load i64, i64* %_index_pointer3137
  %_id_c3139 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3080
  %_id_k3140 = load i64, i64* %_3079
  %_3141 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c3139, i32 0, i32 1, i64 %_id_k3140
  store i64 %_index_value3138, i64* %_3141
  %_id_k3142 = load i64, i64* %_3079
  %_3143 = add i64 %_id_k3142, 1
  store i64 %_3143, i64* %_3079
  %_id_i3144 = load i64, i64* %_3077
  %_3145 = add i64 %_id_i3144, 1
  store i64 %_3145, i64* %_3077
  br label %_cond3147
_merge3148:
  br label %_cond3164
_cond3164:
  %_id_high3150 = load i64, i64* %_high3075
  %_id_j3149 = load i64, i64* %_3078
  %_3151 = icmp sle i64 %_id_j3149, %_id_high3150
  br i1 %_3151, label %_if3163, label %_merge3165
_if3163:
  %_id_a3152 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3073
  %_id_j3153 = load i64, i64* %_3078
  %_index_pointer3154 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3152, i32 0, i32 1, i64 %_id_j3153
  %_index_value3155 = load i64, i64* %_index_pointer3154
  %_id_c3156 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3080
  %_id_k3157 = load i64, i64* %_3079
  %_3158 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c3156, i32 0, i32 1, i64 %_id_k3157
  store i64 %_index_value3155, i64* %_3158
  %_id_k3159 = load i64, i64* %_3079
  %_3160 = add i64 %_id_k3159, 1
  store i64 %_3160, i64* %_3079
  %_id_j3161 = load i64, i64* %_3078
  %_3162 = add i64 %_id_j3161, 1
  store i64 %_3162, i64* %_3078
  br label %_cond3164
_merge3165:
  %_id_low3166 = load i64, i64* %_low3074
  store i64 %_id_low3166, i64* %_3077
  br label %_cond3180
_cond3180:
  %_id_k3168 = load i64, i64* %_3079
  %_id_i3167 = load i64, i64* %_3077
  %_3169 = icmp slt i64 %_id_i3167, %_id_k3168
  br i1 %_3169, label %_if3179, label %_merge3181
_if3179:
  %_id_c3170 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3080
  %_id_i3171 = load i64, i64* %_3077
  %_index_pointer3172 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c3170, i32 0, i32 1, i64 %_id_i3171
  %_index_value3173 = load i64, i64* %_index_pointer3172
  %_id_a3174 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3073
  %_id_i3175 = load i64, i64* %_3077
  %_3176 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3174, i32 0, i32 1, i64 %_id_i3175
  store i64 %_index_value3173, i64* %_3176
  %_id_i3177 = load i64, i64* %_3077
  %_3178 = add i64 %_id_i3177, 1
  store i64 %_3178, i64* %_3077
  br label %_cond3180
_merge3181:
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
