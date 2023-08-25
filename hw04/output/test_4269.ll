; generated from: hw4programs/bsort.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string3207 = global [2 x i8] c" \00"

define void @bubble_sort({ i64, [0 x i64] }* %numbers, i64 %array_size) {
  %_numbers3216 = alloca { i64, [0 x i64] }*
  %_array_size3217 = alloca i64
  %_3218 = alloca i64
  %_3219 = alloca i64
  %_3224 = alloca i64
  store { i64, [0 x i64] }* %numbers, { i64, [0 x i64] }** %_numbers3216
  store i64 %array_size, i64* %_array_size3217
  store i64 0, i64* %_3218
  %_id_array_size3220 = load i64, i64* %_array_size3217
  %_bop3221 = sub i64 %_id_array_size3220, 1
  store i64 %_bop3221, i64* %_3219
  br label %_cond3267
_cond3267:
  %_id_i3222 = load i64, i64* %_3219
  %_bop3223 = icmp sgt i64 %_id_i3222, 0
  br i1 %_bop3223, label %_if3266, label %_merge3268
_if3266:
  store i64 1, i64* %_3224
  br label %_cond3262
_cond3262:
  %_id_j3225 = load i64, i64* %_3224
  %_id_i3226 = load i64, i64* %_3219
  %_bop3227 = icmp sle i64 %_id_j3225, %_id_i3226
  br i1 %_bop3227, label %_if3261, label %_merge3263
_if3261:
  br label %_begin_if3255
_begin_if3255:
  %_id_numbers3228 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers3216
  %_id_j3229 = load i64, i64* %_3224
  %_bop3230 = sub i64 %_id_j3229, 1
  %_index_pointer3232 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_numbers3228, i32 0, i32 1, i64 %_bop3230
  %_index_value3231 = load i64, i64* %_index_pointer3232
  %_id_numbers3233 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers3216
  %_id_i3234 = load i64, i64* %_3219
  %_index_pointer3236 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_numbers3233, i32 0, i32 1, i64 %_id_i3234
  %_index_value3235 = load i64, i64* %_index_pointer3236
  %_bop3237 = icmp sgt i64 %_index_value3231, %_index_value3235
  br i1 %_bop3237, label %_then_branch3256, label %_else_branch3257
_then_branch3256:
  %_id_numbers3238 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers3216
  %_id_j3239 = load i64, i64* %_3224
  %_bop3240 = sub i64 %_id_j3239, 1
  %_index_pointer3242 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_numbers3238, i32 0, i32 1, i64 %_bop3240
  %_index_value3241 = load i64, i64* %_index_pointer3242
  store i64 %_index_value3241, i64* %_3218
  %_id_numbers3243 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers3216
  %_id_i3244 = load i64, i64* %_3219
  %_index_pointer3246 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_numbers3243, i32 0, i32 1, i64 %_id_i3244
  %_index_value3245 = load i64, i64* %_index_pointer3246
  %_id_numbers3247 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers3216
  %_id_j3248 = load i64, i64* %_3224
  %_bop3249 = sub i64 %_id_j3248, 1
  %_3250 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_numbers3247, i32 0, i32 1, i64 %_bop3249
  store i64 %_index_value3245, i64* %_3250
  %_id_temp3251 = load i64, i64* %_3218
  %_id_numbers3252 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers3216
  %_id_i3253 = load i64, i64* %_3219
  %_3254 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_numbers3252, i32 0, i32 1, i64 %_id_i3253
  store i64 %_id_temp3251, i64* %_3254
  br label %_end_if3258
_else_branch3257:
  br label %_end_if3258
_end_if3258:
  %_id_j3259 = load i64, i64* %_3224
  %_bop3260 = add i64 %_id_j3259, 1
  store i64 %_bop3260, i64* %_3224
  br label %_cond3262
_merge3263:
  %_id_i3264 = load i64, i64* %_3219
  %_bop3265 = sub i64 %_id_i3264, 1
  store i64 %_bop3265, i64* %_3219
  br label %_cond3267
_merge3268:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3183 = alloca i64
  %_argv3184 = alloca { i64, [0 x i8*] }*
  %_3185 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc3183
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3184
  %_raw_array3186 = call i64* @oat_alloc_array(i64 8)
  %_array3187 = bitcast i64* %_raw_array3186 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3187, { i64, [0 x i64] }** %_3185
  %_id_a3188 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3185
  %_3189 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3188, i32 0, i32 1, i32 0
  store i64 121, i64* %_3189
  %_id_a3190 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3185
  %_3191 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3190, i32 0, i32 1, i32 1
  store i64 125, i64* %_3191
  %_id_a3192 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3185
  %_3193 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3192, i32 0, i32 1, i32 2
  store i64 120, i64* %_3193
  %_id_a3194 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3185
  %_3195 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3194, i32 0, i32 1, i32 3
  store i64 111, i64* %_3195
  %_id_a3196 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3185
  %_3197 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3196, i32 0, i32 1, i32 4
  store i64 116, i64* %_3197
  %_id_a3198 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3185
  %_3199 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3198, i32 0, i32 1, i32 5
  store i64 110, i64* %_3199
  %_id_a3200 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3185
  %_3201 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3200, i32 0, i32 1, i32 6
  store i64 117, i64* %_3201
  %_id_a3202 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3185
  %_3203 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3202, i32 0, i32 1, i32 7
  store i64 119, i64* %_3203
  %_id_a3204 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3185
  %_3205 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a3204)
  call void @print_string(i8* %_3205)
  %_string13208 = getelementptr [2 x i8], [2 x i8]* @_string3207, i32 0, i32 0
  call void @print_string(i8* %_string13208)
  %_id_a3210 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3185
  call void @bubble_sort({ i64, [0 x i64] }* %_id_a3210, i64 8)
  %_id_a3212 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3185
  %_3213 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a3212)
  call void @print_string(i8* %_3213)
  %_unop3215 = sub i64 0, 1
  ret i64 %_unop3215
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
