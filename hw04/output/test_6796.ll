; generated from: hw4programs/selectionsort.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @getminindex({ i64, [0 x i64] }* %a, i64 %s, i64 %b) {
  %_a3320 = alloca { i64, [0 x i64] }*
  %_s3321 = alloca i64
  %_b3322 = alloca i64
  %_i3324 = alloca i64
  %_min3329 = alloca i64
  %_mi3331 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3320
  store i64 %s, i64* %_s3321
  store i64 %b, i64* %_b3322
  %_id_s3323 = load i64, i64* %_s3321
  store i64 %_id_s3323, i64* %_i3324
  %_id_a3325 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3320
  %_id_s3326 = load i64, i64* %_s3321
  %_index_pointer3328 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3325, i32 0, i32 1, i64 %_id_s3326
  %_index_value3327 = load i64, i64* %_index_pointer3328
  store i64 %_index_value3327, i64* %_min3329
  %_id_s3330 = load i64, i64* %_s3321
  store i64 %_id_s3330, i64* %_mi3331
  br label %_cond3353
_cond3353:
  %_id_i3332 = load i64, i64* %_i3324
  %_id_b3333 = load i64, i64* %_b3322
  %_bop3334 = icmp slt i64 %_id_i3332, %_id_b3333
  br i1 %_bop3334, label %_if3354, label %_merge3352
_if3354:
  br label %_begin_if3349
_begin_if3349:
  %_id_a3335 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3320
  %_id_i3336 = load i64, i64* %_i3324
  %_index_pointer3338 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3335, i32 0, i32 1, i64 %_id_i3336
  %_index_value3337 = load i64, i64* %_index_pointer3338
  %_id_min3339 = load i64, i64* %_min3329
  %_bop3340 = icmp slt i64 %_index_value3337, %_id_min3339
  br i1 %_bop3340, label %_then_branch3348, label %_else_branch3347
_then_branch3348:
  %_id_a3341 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3320
  %_id_i3342 = load i64, i64* %_i3324
  %_index_pointer3344 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3341, i32 0, i32 1, i64 %_id_i3342
  %_index_value3343 = load i64, i64* %_index_pointer3344
  store i64 %_index_value3343, i64* %_min3329
  %_id_i3345 = load i64, i64* %_i3324
  store i64 %_id_i3345, i64* %_mi3331
  br label %_end_if3346
_else_branch3347:
  br label %_end_if3346
_end_if3346:
  %_id_i3350 = load i64, i64* %_i3324
  %_bop3351 = add i64 %_id_i3350, 1
  store i64 %_bop3351, i64* %_i3324
  br label %_cond3353
_merge3352:
  %_id_mi3355 = load i64, i64* %_mi3331
  ret i64 %_id_mi3355
}

define void @selectionsort({ i64, [0 x i64] }* %a, i64 %s) {
  %_a3288 = alloca { i64, [0 x i64] }*
  %_s3289 = alloca i64
  %_t3290 = alloca i64
  %_mi3291 = alloca i64
  %_i3292 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3288
  store i64 %s, i64* %_s3289
  store i64 0, i64* %_t3290
  store i64 0, i64* %_mi3291
  store i64 0, i64* %_i3292
  br label %_cond3318
_cond3318:
  %_id_i3293 = load i64, i64* %_i3292
  %_id_s3294 = load i64, i64* %_s3289
  %_bop3295 = icmp slt i64 %_id_i3293, %_id_s3294
  br i1 %_bop3295, label %_if3319, label %_merge3317
_if3319:
  %_id_a3296 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3288
  %_id_i3297 = load i64, i64* %_i3292
  %_id_s3298 = load i64, i64* %_s3289
  %_3299 = call i64 @getminindex({ i64, [0 x i64] }* %_id_a3296, i64 %_id_i3297, i64 %_id_s3298)
  store i64 %_3299, i64* %_mi3291
  %_id_a3300 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3288
  %_id_i3301 = load i64, i64* %_i3292
  %_index_pointer3303 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3300, i32 0, i32 1, i64 %_id_i3301
  %_index_value3302 = load i64, i64* %_index_pointer3303
  store i64 %_index_value3302, i64* %_t3290
  %_id_a3304 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3288
  %_id_mi3305 = load i64, i64* %_mi3291
  %_index_pointer3307 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3304, i32 0, i32 1, i64 %_id_mi3305
  %_index_value3306 = load i64, i64* %_index_pointer3307
  %_id_a3308 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3288
  %_id_i3309 = load i64, i64* %_i3292
  %_3310 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3308, i32 0, i32 1, i64 %_id_i3309
  store i64 %_index_value3306, i64* %_3310
  %_id_t3311 = load i64, i64* %_t3290
  %_id_a3312 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3288
  %_id_mi3313 = load i64, i64* %_mi3291
  %_3314 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3312, i32 0, i32 1, i64 %_id_mi3313
  store i64 %_id_t3311, i64* %_3314
  %_id_i3315 = load i64, i64* %_i3292
  %_bop3316 = add i64 %_id_i3315, 1
  store i64 %_bop3316, i64* %_i3292
  br label %_cond3318
_merge3317:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3252 = alloca i64
  %_argv3253 = alloca { i64, [0 x i8*] }*
  %_ar3272 = alloca { i64, [0 x i64] }*
  %_i3275 = alloca i64
  store i64 %argc, i64* %_argc3252
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3253
  %_raw_array3254 = call i64* @oat_alloc_array(i64 8)
  %_array3255 = bitcast i64* %_raw_array3254 to { i64, [0 x i64] }*
  %_3270 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3255, i32 0, i32 1, i32 7
  store i64 0, i64* %_3270
  %_3268 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3255, i32 0, i32 1, i32 6
  store i64 2, i64* %_3268
  %_3266 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3255, i32 0, i32 1, i32 5
  store i64 99, i64* %_3266
  %_3264 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3255, i32 0, i32 1, i32 4
  store i64 30, i64* %_3264
  %_3262 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3255, i32 0, i32 1, i32 3
  store i64 65, i64* %_3262
  %_3260 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3255, i32 0, i32 1, i32 2
  store i64 1, i64* %_3260
  %_3258 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3255, i32 0, i32 1, i32 1
  store i64 200, i64* %_3258
  %_3256 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3255, i32 0, i32 1, i32 0
  store i64 5, i64* %_3256
  store { i64, [0 x i64] }* %_array3255, { i64, [0 x i64] }** %_ar3272
  %_id_ar3273 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar3272
  call void @selectionsort({ i64, [0 x i64] }* %_id_ar3273, i64 8)
  store i64 0, i64* %_i3275
  br label %_cond3286
_cond3286:
  %_id_i3276 = load i64, i64* %_i3275
  %_bop3277 = icmp slt i64 %_id_i3276, 8
  br i1 %_bop3277, label %_if3287, label %_merge3285
_if3287:
  %_id_ar3278 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar3272
  %_id_i3279 = load i64, i64* %_i3275
  %_index_pointer3281 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_ar3278, i32 0, i32 1, i64 %_id_i3279
  %_index_value3280 = load i64, i64* %_index_pointer3281
  call void @print_int(i64 %_index_value3280)
  %_id_i3283 = load i64, i64* %_i3275
  %_bop3284 = add i64 %_id_i3283, 1
  store i64 %_bop3284, i64* %_i3275
  br label %_cond3286
_merge3285:
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
