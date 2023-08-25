; generated from: hw4programs/selectionsort.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @getminindex({ i64, [0 x i64] }* %a, i64 %s, i64 %b) {
  %_a3137 = alloca { i64, [0 x i64] }*
  %_s3138 = alloca i64
  %_b3139 = alloca i64
  %_3140 = alloca i64
  %_3142 = alloca i64
  %_3147 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3137
  store i64 %s, i64* %_s3138
  store i64 %b, i64* %_b3139
  %_id_s3141 = load i64, i64* %_s3138
  store i64 %_id_s3141, i64* %_3140
  %_id_a3143 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3137
  %_id_s3144 = load i64, i64* %_s3138
  %_index_pointer3145 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3143, i32 0, i32 1, i64 %_id_s3144
  %_index_value3146 = load i64, i64* %_index_pointer3145
  store i64 %_index_value3146, i64* %_3142
  %_id_s3148 = load i64, i64* %_s3138
  store i64 %_id_s3148, i64* %_3147
  br label %_start3169
_start3169:
  %_id_b3150 = load i64, i64* %_b3139
  %_id_i3149 = load i64, i64* %_3140
  %_3151 = icmp slt i64 %_id_i3149, %_id_b3150
  br i1 %_3151, label %_body3170, label %_else3171
_body3170:
  br label %_start3163
_start3163:
  %_id_min3156 = load i64, i64* %_3142
  %_id_a3152 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3137
  %_id_i3153 = load i64, i64* %_3140
  %_index_pointer3154 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3152, i32 0, i32 1, i64 %_id_i3153
  %_index_value3155 = load i64, i64* %_index_pointer3154
  %_3157 = icmp slt i64 %_index_value3155, %_id_min3156
  br i1 %_3157, label %_then3164, label %_else3165
_then3164:
  %_id_a3158 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3137
  %_id_i3159 = load i64, i64* %_3140
  %_index_pointer3160 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3158, i32 0, i32 1, i64 %_id_i3159
  %_index_value3161 = load i64, i64* %_index_pointer3160
  store i64 %_index_value3161, i64* %_3142
  %_id_i3162 = load i64, i64* %_3140
  store i64 %_id_i3162, i64* %_3147
  br label %_post3166
_else3165:
  br label %_post3166
_post3166:
  %_id_i3167 = load i64, i64* %_3140
  %_3168 = add i64 %_id_i3167, 1
  store i64 %_3168, i64* %_3140
  br label %_start3169
_else3171:
  %_id_mi3172 = load i64, i64* %_3147
  ret i64 %_id_mi3172
}

define void @selectionsort({ i64, [0 x i64] }* %a, i64 %s) {
  %_a3105 = alloca { i64, [0 x i64] }*
  %_s3106 = alloca i64
  %_3107 = alloca i64
  %_3108 = alloca i64
  %_3109 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3105
  store i64 %s, i64* %_s3106
  store i64 0, i64* %_3107
  store i64 0, i64* %_3108
  store i64 0, i64* %_3109
  br label %_start3134
_start3134:
  %_id_s3111 = load i64, i64* %_s3106
  %_id_i3110 = load i64, i64* %_3109
  %_3112 = icmp slt i64 %_id_i3110, %_id_s3111
  br i1 %_3112, label %_body3135, label %_else3136
_body3135:
  %_id_a3113 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3105
  %_id_i3114 = load i64, i64* %_3109
  %_id_s3115 = load i64, i64* %_s3106
  %_3116 = call i64 @getminindex({ i64, [0 x i64] }* %_id_a3113, i64 %_id_i3114, i64 %_id_s3115)
  store i64 %_3116, i64* %_3108
  %_id_a3117 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3105
  %_id_i3118 = load i64, i64* %_3109
  %_index_pointer3119 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3117, i32 0, i32 1, i64 %_id_i3118
  %_index_value3120 = load i64, i64* %_index_pointer3119
  store i64 %_index_value3120, i64* %_3107
  %_id_a3121 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3105
  %_id_mi3122 = load i64, i64* %_3108
  %_index_pointer3123 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3121, i32 0, i32 1, i64 %_id_mi3122
  %_index_value3124 = load i64, i64* %_index_pointer3123
  %_id_a3125 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3105
  %_id_i3126 = load i64, i64* %_3109
  %_3127 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3125, i32 0, i32 1, i64 %_id_i3126
  store i64 %_index_value3124, i64* %_3127
  %_id_t3128 = load i64, i64* %_3107
  %_id_a3129 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3105
  %_id_mi3130 = load i64, i64* %_3108
  %_3131 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3129, i32 0, i32 1, i64 %_id_mi3130
  store i64 %_id_t3128, i64* %_3131
  %_id_i3132 = load i64, i64* %_3109
  %_3133 = add i64 %_id_i3132, 1
  store i64 %_3133, i64* %_3109
  br label %_start3134
_else3136:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3069 = alloca i64
  %_argv3070 = alloca { i64, [0 x i8*] }*
  %_3071 = alloca { i64, [0 x i64] }*
  %_3092 = alloca i64
  store i64 %argc, i64* %_argc3069
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3070
  %_raw_array3072 = call i64* @oat_alloc_array(i64 8)
  %_array3073 = bitcast i64* %_raw_array3072 to { i64, [0 x i64] }*
  %_3088 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3073, i32 0, i32 1, i32 7
  store i64 0, i64* %_3088
  %_3086 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3073, i32 0, i32 1, i32 6
  store i64 2, i64* %_3086
  %_3084 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3073, i32 0, i32 1, i32 5
  store i64 99, i64* %_3084
  %_3082 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3073, i32 0, i32 1, i32 4
  store i64 30, i64* %_3082
  %_3080 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3073, i32 0, i32 1, i32 3
  store i64 65, i64* %_3080
  %_3078 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3073, i32 0, i32 1, i32 2
  store i64 1, i64* %_3078
  %_3076 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3073, i32 0, i32 1, i32 1
  store i64 200, i64* %_3076
  %_3074 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3073, i32 0, i32 1, i32 0
  store i64 5, i64* %_3074
  store { i64, [0 x i64] }* %_array3073, { i64, [0 x i64] }** %_3071
  %_id_ar3090 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3071
  call void @selectionsort({ i64, [0 x i64] }* %_id_ar3090, i64 8)
  store i64 0, i64* %_3092
  br label %_start3102
_start3102:
  %_id_i3093 = load i64, i64* %_3092
  %_3094 = icmp slt i64 %_id_i3093, 8
  br i1 %_3094, label %_body3103, label %_else3104
_body3103:
  %_id_ar3095 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3071
  %_id_i3096 = load i64, i64* %_3092
  %_index_pointer3097 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_ar3095, i32 0, i32 1, i64 %_id_i3096
  %_index_value3098 = load i64, i64* %_index_pointer3097
  call void @print_int(i64 %_index_value3098)
  %_id_i3100 = load i64, i64* %_3092
  %_3101 = add i64 %_id_i3100, 1
  store i64 %_3101, i64* %_3092
  br label %_start3102
_else3104:
  ret i64 0
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
