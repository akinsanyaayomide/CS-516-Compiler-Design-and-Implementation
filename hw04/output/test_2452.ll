; generated from: hw4programs/selectionsort.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @getminindex({ i64, [0 x i64] }* %a, i64 %s, i64 %b) {
  %_a3320 = alloca { i64, [0 x i64] }*
  %_s3321 = alloca i64
  %_b3322 = alloca i64
  %_3323 = alloca i64
  %_3325 = alloca i64
  %_3330 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3320
  store i64 %s, i64* %_s3321
  store i64 %b, i64* %_b3322
  %_id_s3324 = load i64, i64* %_s3321
  store i64 %_id_s3324, i64* %_3323
  %_id_a3326 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3320
  %_id_s3327 = load i64, i64* %_s3321
  %_index_pointer3328 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3326, i32 0, i32 1, i64 %_id_s3327
  %_index_value3329 = load i64, i64* %_index_pointer3328
  store i64 %_index_value3329, i64* %_3325
  %_id_s3331 = load i64, i64* %_s3321
  store i64 %_id_s3331, i64* %_3330
  br label %_start3352
_start3352:
  %_id_b3333 = load i64, i64* %_b3322
  %_id_i3332 = load i64, i64* %_3323
  %_3334 = icmp slt i64 %_id_i3332, %_id_b3333
  br i1 %_3334, label %_body3353, label %_else3354
_body3353:
  br label %_begin_if3346
_begin_if3346:
  %_id_min3339 = load i64, i64* %_3325
  %_id_a3335 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3320
  %_id_i3336 = load i64, i64* %_3323
  %_index_pointer3337 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3335, i32 0, i32 1, i64 %_id_i3336
  %_index_value3338 = load i64, i64* %_index_pointer3337
  %_3340 = icmp slt i64 %_index_value3338, %_id_min3339
  br i1 %_3340, label %_then_branch3347, label %_else_branch3348
_then_branch3347:
  %_id_a3341 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3320
  %_id_i3342 = load i64, i64* %_3323
  %_index_pointer3343 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3341, i32 0, i32 1, i64 %_id_i3342
  %_index_value3344 = load i64, i64* %_index_pointer3343
  store i64 %_index_value3344, i64* %_3325
  %_id_i3345 = load i64, i64* %_3323
  store i64 %_id_i3345, i64* %_3330
  br label %_end_if3349
_else_branch3348:
  br label %_end_if3349
_end_if3349:
  %_id_i3350 = load i64, i64* %_3323
  %_3351 = add i64 %_id_i3350, 1
  store i64 %_3351, i64* %_3323
  br label %_start3352
_else3354:
  %_id_mi3355 = load i64, i64* %_3330
  ret i64 %_id_mi3355
}

define void @selectionsort({ i64, [0 x i64] }* %a, i64 %s) {
  %_a3288 = alloca { i64, [0 x i64] }*
  %_s3289 = alloca i64
  %_3290 = alloca i64
  %_3291 = alloca i64
  %_3292 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3288
  store i64 %s, i64* %_s3289
  store i64 0, i64* %_3290
  store i64 0, i64* %_3291
  store i64 0, i64* %_3292
  br label %_start3317
_start3317:
  %_id_s3294 = load i64, i64* %_s3289
  %_id_i3293 = load i64, i64* %_3292
  %_3295 = icmp slt i64 %_id_i3293, %_id_s3294
  br i1 %_3295, label %_body3318, label %_else3319
_body3318:
  %_id_a3296 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3288
  %_id_i3297 = load i64, i64* %_3292
  %_id_s3298 = load i64, i64* %_s3289
  %_3299 = call i64 @getminindex({ i64, [0 x i64] }* %_id_a3296, i64 %_id_i3297, i64 %_id_s3298)
  store i64 %_3299, i64* %_3291
  %_id_a3300 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3288
  %_id_i3301 = load i64, i64* %_3292
  %_index_pointer3302 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3300, i32 0, i32 1, i64 %_id_i3301
  %_index_value3303 = load i64, i64* %_index_pointer3302
  store i64 %_index_value3303, i64* %_3290
  %_id_a3304 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3288
  %_id_mi3305 = load i64, i64* %_3291
  %_index_pointer3306 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3304, i32 0, i32 1, i64 %_id_mi3305
  %_index_value3307 = load i64, i64* %_index_pointer3306
  %_id_a3308 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3288
  %_id_i3309 = load i64, i64* %_3292
  %_3310 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3308, i32 0, i32 1, i64 %_id_i3309
  store i64 %_index_value3307, i64* %_3310
  %_id_t3311 = load i64, i64* %_3290
  %_id_a3312 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3288
  %_id_mi3313 = load i64, i64* %_3291
  %_3314 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3312, i32 0, i32 1, i64 %_id_mi3313
  store i64 %_id_t3311, i64* %_3314
  %_id_i3315 = load i64, i64* %_3292
  %_3316 = add i64 %_id_i3315, 1
  store i64 %_3316, i64* %_3292
  br label %_start3317
_else3319:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3252 = alloca i64
  %_argv3253 = alloca { i64, [0 x i8*] }*
  %_3254 = alloca { i64, [0 x i64] }*
  %_3275 = alloca i64
  store i64 %argc, i64* %_argc3252
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3253
  %_raw_array3255 = call i64* @oat_alloc_array(i64 8)
  %_array3256 = bitcast i64* %_raw_array3255 to { i64, [0 x i64] }*
  %_3271 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3256, i32 0, i32 1, i32 7
  store i64 0, i64* %_3271
  %_3269 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3256, i32 0, i32 1, i32 6
  store i64 2, i64* %_3269
  %_3267 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3256, i32 0, i32 1, i32 5
  store i64 99, i64* %_3267
  %_3265 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3256, i32 0, i32 1, i32 4
  store i64 30, i64* %_3265
  %_3263 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3256, i32 0, i32 1, i32 3
  store i64 65, i64* %_3263
  %_3261 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3256, i32 0, i32 1, i32 2
  store i64 1, i64* %_3261
  %_3259 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3256, i32 0, i32 1, i32 1
  store i64 200, i64* %_3259
  %_3257 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3256, i32 0, i32 1, i32 0
  store i64 5, i64* %_3257
  store { i64, [0 x i64] }* %_array3256, { i64, [0 x i64] }** %_3254
  %_id_ar3273 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3254
  call void @selectionsort({ i64, [0 x i64] }* %_id_ar3273, i64 8)
  store i64 0, i64* %_3275
  br label %_start3285
_start3285:
  %_id_i3276 = load i64, i64* %_3275
  %_3277 = icmp slt i64 %_id_i3276, 8
  br i1 %_3277, label %_body3286, label %_else3287
_body3286:
  %_id_ar3278 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3254
  %_id_i3279 = load i64, i64* %_3275
  %_index_pointer3280 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_ar3278, i32 0, i32 1, i64 %_id_i3279
  %_index_value3281 = load i64, i64* %_index_pointer3280
  call void @print_int(i64 %_index_value3281)
  %_id_i3283 = load i64, i64* %_3275
  %_3284 = add i64 %_id_i3283, 1
  store i64 %_3284, i64* %_3275
  br label %_start3285
_else3287:
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
