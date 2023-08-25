; generated from: hw4programs/msort2.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string3246 = global [2 x i8] c" \00"
@_string3252 = global [2 x i8] c" \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3215 = alloca i64
  %_argv3216 = alloca { i64, [0 x i8*] }*
  %_3217 = alloca { i64, [0 x i64] }*
  %_3240 = alloca i64
  store i64 %argc, i64* %_argc3215
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3216
  %_raw_array3218 = call i64* @oat_alloc_array(i64 10)
  %_array3219 = bitcast i64* %_raw_array3218 to { i64, [0 x i64] }*
  %_3238 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3219, i32 0, i32 1, i32 9
  store i64 117, i64* %_3238
  %_3236 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3219, i32 0, i32 1, i32 8
  store i64 118, i64* %_3236
  %_3234 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3219, i32 0, i32 1, i32 7
  store i64 119, i64* %_3234
  %_3232 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3219, i32 0, i32 1, i32 6
  store i64 120, i64* %_3232
  %_3230 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3219, i32 0, i32 1, i32 5
  store i64 121, i64* %_3230
  %_3228 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3219, i32 0, i32 1, i32 4
  store i64 122, i64* %_3228
  %_3226 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3219, i32 0, i32 1, i32 3
  store i64 123, i64* %_3226
  %_3224 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3219, i32 0, i32 1, i32 2
  store i64 124, i64* %_3224
  %_3222 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3219, i32 0, i32 1, i32 1
  store i64 125, i64* %_3222
  %_3220 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3219, i32 0, i32 1, i32 0
  store i64 126, i64* %_3220
  store { i64, [0 x i64] }* %_array3219, { i64, [0 x i64] }** %_3217
  store i64 0, i64* %_3240
  %_id_a3241 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3217
  %_3242 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a3241)
  call void @print_string(i8* %_3242)
  %_id_a3244 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3217
  call void @oat_mergesort({ i64, [0 x i64] }* %_id_a3244, i64 0, i64 9)
  %_string13247 = getelementptr [2 x i8], [2 x i8]* @_string3246, i32 0, i32 0
  call void @print_string(i8* %_string13247)
  %_id_a3249 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3217
  %_3250 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a3249)
  call void @print_string(i8* %_3250)
  %_string13253 = getelementptr [2 x i8], [2 x i8]* @_string3252, i32 0, i32 0
  call void @print_string(i8* %_string13253)
  %_id_i3255 = load i64, i64* %_3240
  ret i64 %_id_i3255
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_a3186 = alloca { i64, [0 x i64] }*
  %_low3187 = alloca i64
  %_high3188 = alloca i64
  %_3189 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3186
  store i64 %low, i64* %_low3187
  store i64 %high, i64* %_high3188
  store i64 0, i64* %_3189
  br label %_start3211
_start3211:
  %_id_high3191 = load i64, i64* %_high3188
  %_id_low3190 = load i64, i64* %_low3187
  %_3192 = icmp slt i64 %_id_low3190, %_id_high3191
  br i1 %_3192, label %_then3212, label %_else3213
_then3212:
  %_id_high3194 = load i64, i64* %_high3188
  %_id_low3193 = load i64, i64* %_low3187
  %_3195 = add i64 %_id_low3193, %_id_high3194
  %_3196 = lshr i64 %_3195, 1
  store i64 %_3196, i64* %_3189
  %_id_a3197 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3186
  %_id_low3198 = load i64, i64* %_low3187
  %_id_mid3199 = load i64, i64* %_3189
  call void @oat_mergesort({ i64, [0 x i64] }* %_id_a3197, i64 %_id_low3198, i64 %_id_mid3199)
  %_id_a3201 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3186
  %_id_mid3202 = load i64, i64* %_3189
  %_3203 = add i64 %_id_mid3202, 1
  %_id_high3204 = load i64, i64* %_high3188
  call void @oat_mergesort({ i64, [0 x i64] }* %_id_a3201, i64 %_3203, i64 %_id_high3204)
  %_id_a3206 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3186
  %_id_low3207 = load i64, i64* %_low3187
  %_id_high3208 = load i64, i64* %_high3188
  %_id_mid3209 = load i64, i64* %_3189
  call void @merge({ i64, [0 x i64] }* %_id_a3206, i64 %_id_low3207, i64 %_id_high3208, i64 %_id_mid3209)
  br label %_post3214
_else3213:
  br label %_post3214
_post3214:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_a3077 = alloca { i64, [0 x i64] }*
  %_low3078 = alloca i64
  %_high3079 = alloca i64
  %_mid3080 = alloca i64
  %_3081 = alloca i64
  %_3082 = alloca i64
  %_3083 = alloca i64
  %_3084 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3077
  store i64 %low, i64* %_low3078
  store i64 %high, i64* %_high3079
  store i64 %mid, i64* %_mid3080
  store i64 0, i64* %_3081
  store i64 0, i64* %_3082
  store i64 0, i64* %_3083
  %_raw_array3085 = call i64* @oat_alloc_array(i64 50)
  %_array3086 = bitcast i64* %_raw_array3085 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3086, { i64, [0 x i64] }** %_3084
  %_id_low3087 = load i64, i64* %_low3078
  store i64 %_id_low3087, i64* %_3081
  %_id_mid3088 = load i64, i64* %_mid3080
  %_3089 = add i64 %_id_mid3088, 1
  store i64 %_3089, i64* %_3082
  %_id_low3090 = load i64, i64* %_low3078
  store i64 %_id_low3090, i64* %_3083
  br label %_start3133
_start3133:
  %_id_high3095 = load i64, i64* %_high3079
  %_id_j3094 = load i64, i64* %_3082
  %_3096 = icmp sle i64 %_id_j3094, %_id_high3095
  %_id_mid3092 = load i64, i64* %_mid3080
  %_id_i3091 = load i64, i64* %_3081
  %_3093 = icmp sle i64 %_id_i3091, %_id_mid3092
  %_3097 = and i1 %_3093, %_3096
  br i1 %_3097, label %_body3134, label %_else3135
_body3134:
  br label %_start3129
_start3129:
  %_id_a3102 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3077
  %_id_j3103 = load i64, i64* %_3082
  %_index_pointer3104 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3102, i32 0, i32 1, i64 %_id_j3103
  %_index_value3105 = load i64, i64* %_index_pointer3104
  %_id_a3098 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3077
  %_id_i3099 = load i64, i64* %_3081
  %_index_pointer3100 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3098, i32 0, i32 1, i64 %_id_i3099
  %_index_value3101 = load i64, i64* %_index_pointer3100
  %_3106 = icmp slt i64 %_index_value3101, %_index_value3105
  br i1 %_3106, label %_then3130, label %_else3131
_then3130:
  %_id_a3107 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3077
  %_id_i3108 = load i64, i64* %_3081
  %_index_pointer3109 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3107, i32 0, i32 1, i64 %_id_i3108
  %_index_value3110 = load i64, i64* %_index_pointer3109
  %_id_c3111 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3084
  %_id_k3112 = load i64, i64* %_3083
  %_3113 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c3111, i32 0, i32 1, i64 %_id_k3112
  store i64 %_index_value3110, i64* %_3113
  %_id_k3114 = load i64, i64* %_3083
  %_3115 = add i64 %_id_k3114, 1
  store i64 %_3115, i64* %_3083
  %_id_i3116 = load i64, i64* %_3081
  %_3117 = add i64 %_id_i3116, 1
  store i64 %_3117, i64* %_3081
  br label %_post3132
_else3131:
  %_id_a3118 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3077
  %_id_j3119 = load i64, i64* %_3082
  %_index_pointer3120 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3118, i32 0, i32 1, i64 %_id_j3119
  %_index_value3121 = load i64, i64* %_index_pointer3120
  %_id_c3122 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3084
  %_id_k3123 = load i64, i64* %_3083
  %_3124 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c3122, i32 0, i32 1, i64 %_id_k3123
  store i64 %_index_value3121, i64* %_3124
  %_id_k3125 = load i64, i64* %_3083
  %_3126 = add i64 %_id_k3125, 1
  store i64 %_3126, i64* %_3083
  %_id_j3127 = load i64, i64* %_3082
  %_3128 = add i64 %_id_j3127, 1
  store i64 %_3128, i64* %_3082
  br label %_post3132
_post3132:
  br label %_start3133
_else3135:
  br label %_start3150
_start3150:
  %_id_mid3137 = load i64, i64* %_mid3080
  %_id_i3136 = load i64, i64* %_3081
  %_3138 = icmp sle i64 %_id_i3136, %_id_mid3137
  br i1 %_3138, label %_body3151, label %_else3152
_body3151:
  %_id_a3139 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3077
  %_id_i3140 = load i64, i64* %_3081
  %_index_pointer3141 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3139, i32 0, i32 1, i64 %_id_i3140
  %_index_value3142 = load i64, i64* %_index_pointer3141
  %_id_c3143 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3084
  %_id_k3144 = load i64, i64* %_3083
  %_3145 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c3143, i32 0, i32 1, i64 %_id_k3144
  store i64 %_index_value3142, i64* %_3145
  %_id_k3146 = load i64, i64* %_3083
  %_3147 = add i64 %_id_k3146, 1
  store i64 %_3147, i64* %_3083
  %_id_i3148 = load i64, i64* %_3081
  %_3149 = add i64 %_id_i3148, 1
  store i64 %_3149, i64* %_3081
  br label %_start3150
_else3152:
  br label %_start3167
_start3167:
  %_id_high3154 = load i64, i64* %_high3079
  %_id_j3153 = load i64, i64* %_3082
  %_3155 = icmp sle i64 %_id_j3153, %_id_high3154
  br i1 %_3155, label %_body3168, label %_else3169
_body3168:
  %_id_a3156 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3077
  %_id_j3157 = load i64, i64* %_3082
  %_index_pointer3158 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3156, i32 0, i32 1, i64 %_id_j3157
  %_index_value3159 = load i64, i64* %_index_pointer3158
  %_id_c3160 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3084
  %_id_k3161 = load i64, i64* %_3083
  %_3162 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c3160, i32 0, i32 1, i64 %_id_k3161
  store i64 %_index_value3159, i64* %_3162
  %_id_k3163 = load i64, i64* %_3083
  %_3164 = add i64 %_id_k3163, 1
  store i64 %_3164, i64* %_3083
  %_id_j3165 = load i64, i64* %_3082
  %_3166 = add i64 %_id_j3165, 1
  store i64 %_3166, i64* %_3082
  br label %_start3167
_else3169:
  %_id_low3170 = load i64, i64* %_low3078
  store i64 %_id_low3170, i64* %_3081
  br label %_start3183
_start3183:
  %_id_k3172 = load i64, i64* %_3083
  %_id_i3171 = load i64, i64* %_3081
  %_3173 = icmp slt i64 %_id_i3171, %_id_k3172
  br i1 %_3173, label %_body3184, label %_else3185
_body3184:
  %_id_c3174 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3084
  %_id_i3175 = load i64, i64* %_3081
  %_index_pointer3176 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c3174, i32 0, i32 1, i64 %_id_i3175
  %_index_value3177 = load i64, i64* %_index_pointer3176
  %_id_a3178 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3077
  %_id_i3179 = load i64, i64* %_3081
  %_3180 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3178, i32 0, i32 1, i64 %_id_i3179
  store i64 %_index_value3177, i64* %_3180
  %_id_i3181 = load i64, i64* %_3081
  %_3182 = add i64 %_id_i3181, 1
  store i64 %_3182, i64* %_3081
  br label %_start3183
_else3185:
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
