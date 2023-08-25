; generated from: hw4programs/msort.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string3448 = global [2 x i8] c" \00"
@_string3454 = global [2 x i8] c" \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3407 = alloca i64
  %_argv3408 = alloca { i64, [0 x i8*] }*
  %_3409 = alloca i64
  %_3410 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc3407
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3408
  store i64 0, i64* %_3409
  %_raw_array3411 = call i64* @oat_alloc_array(i64 10)
  %_array3412 = bitcast i64* %_raw_array3411 to { i64, [0 x i64] }*
  %_3442 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3412, i32 0, i32 1, i32 9
  store i64 117, i64* %_3440
  %_3439 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3412, i32 0, i32 1, i32 8
  store i64 118, i64* %_3437
  %_3436 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3412, i32 0, i32 1, i32 7
  store i64 119, i64* %_3434
  %_3433 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3412, i32 0, i32 1, i32 6
  store i64 120, i64* %_3431
  %_3430 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3412, i32 0, i32 1, i32 5
  store i64 121, i64* %_3428
  %_3427 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3412, i32 0, i32 1, i32 4
  store i64 122, i64* %_3425
  %_3424 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3412, i32 0, i32 1, i32 3
  store i64 123, i64* %_3422
  %_3421 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3412, i32 0, i32 1, i32 2
  store i64 124, i64* %_3419
  %_3418 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3412, i32 0, i32 1, i32 1
  store i64 125, i64* %_3416
  %_3415 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3412, i32 0, i32 1, i32 0
  store i64 126, i64* %_3413
  store { i64, [0 x i64] }* %_array3412, { i64, [0 x i64] }** %_3410
  %_id_a3443 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3410
  %_3444 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a3443)
  call void @print_string(i8* %_3444)
  %_id_a3446 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3410
  call void @oat_mergesort({ i64, [0 x i64] }* %_id_a3446, i64 0, i64 9)
  %_string13449 = getelementptr [2 x i8], [2 x i8]* @_string3448, i32 0, i32 0
  call void @print_string(i8* %_string13449)
  %_id_a3451 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3410
  %_3452 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a3451)
  call void @print_string(i8* %_3452)
  %_string13455 = getelementptr [2 x i8], [2 x i8]* @_string3454, i32 0, i32 0
  call void @print_string(i8* %_string13455)
  %_id_i3457 = load i64, i64* %_3409
  ret i64 %_id_i3457
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_a3378 = alloca { i64, [0 x i64] }*
  %_low3379 = alloca i64
  %_high3380 = alloca i64
  %_3381 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3378
  store i64 %low, i64* %_low3379
  store i64 %high, i64* %_high3380
  store i64 0, i64* %_3381
  br label %_begin_if3403
_begin_if3403:
  %_id_low3382 = load i64, i64* %_low3379
  %_id_high3383 = load i64, i64* %_high3380
  %_bop3384 = icmp slt i64 %_id_low3382, %_id_high3383
  br i1 %_bop3384, label %_then_branch3404, label %_else_branch3405
_then_branch3404:
  %_id_low3385 = load i64, i64* %_low3379
  %_id_high3386 = load i64, i64* %_high3380
  %_bop3387 = add i64 %_id_low3385, %_id_high3386
  %_bop3388 = lshr i64 %_bop3387, 1
  store i64 %_bop3388, i64* %_3381
  %_id_a3389 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3378
  %_id_low3390 = load i64, i64* %_low3379
  %_id_mid3391 = load i64, i64* %_3381
  call void @oat_mergesort({ i64, [0 x i64] }* %_id_a3389, i64 %_id_low3390, i64 %_id_mid3391)
  %_id_a3393 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3378
  %_id_mid3394 = load i64, i64* %_3381
  %_bop3395 = add i64 %_id_mid3394, 1
  %_id_high3396 = load i64, i64* %_high3380
  call void @oat_mergesort({ i64, [0 x i64] }* %_id_a3393, i64 %_bop3395, i64 %_id_high3396)
  %_id_a3398 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3378
  %_id_low3399 = load i64, i64* %_low3379
  %_id_high3400 = load i64, i64* %_high3380
  %_id_mid3401 = load i64, i64* %_3381
  call void @merge({ i64, [0 x i64] }* %_id_a3398, i64 %_id_low3399, i64 %_id_high3400, i64 %_id_mid3401)
  br label %_end_if3406
_else_branch3405:
  br label %_end_if3406
_end_if3406:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_a3269 = alloca { i64, [0 x i64] }*
  %_low3270 = alloca i64
  %_high3271 = alloca i64
  %_mid3272 = alloca i64
  %_3273 = alloca i64
  %_3274 = alloca i64
  %_3275 = alloca i64
  %_3276 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3269
  store i64 %low, i64* %_low3270
  store i64 %high, i64* %_high3271
  store i64 %mid, i64* %_mid3272
  store i64 0, i64* %_3273
  store i64 0, i64* %_3274
  store i64 0, i64* %_3275
  %_raw_array3277 = call i64* @oat_alloc_array(i64 50)
  %_array3278 = bitcast i64* %_raw_array3277 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3278, { i64, [0 x i64] }** %_3276
  %_id_low3279 = load i64, i64* %_low3270
  store i64 %_id_low3279, i64* %_3273
  %_id_mid3280 = load i64, i64* %_mid3272
  %_bop3281 = add i64 %_id_mid3280, 1
  store i64 %_bop3281, i64* %_3274
  %_id_low3282 = load i64, i64* %_low3270
  store i64 %_id_low3282, i64* %_3275
  br label %_cond3326
_cond3326:
  %_id_i3283 = load i64, i64* %_3273
  %_id_mid3284 = load i64, i64* %_mid3272
  %_bop3285 = icmp sle i64 %_id_i3283, %_id_mid3284
  %_id_j3286 = load i64, i64* %_3274
  %_id_high3287 = load i64, i64* %_high3271
  %_bop3288 = icmp sle i64 %_id_j3286, %_id_high3287
  %_bop3289 = and i1 %_bop3285, %_bop3288
  br i1 %_bop3289, label %_if3325, label %_merge3327
_if3325:
  br label %_begin_if3321
_begin_if3321:
  %_id_a3290 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3269
  %_id_i3291 = load i64, i64* %_3273
  %_index_pointer3293 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3290, i32 0, i32 1, i64 %_id_i3291
  %_index_value3292 = load i64, i64* %_index_pointer3293
  %_id_a3294 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3269
  %_id_j3295 = load i64, i64* %_3274
  %_index_pointer3297 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3294, i32 0, i32 1, i64 %_id_j3295
  %_index_value3296 = load i64, i64* %_index_pointer3297
  %_bop3298 = icmp slt i64 %_index_value3292, %_index_value3296
  br i1 %_bop3298, label %_then_branch3322, label %_else_branch3323
_then_branch3322:
  %_id_a3299 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3269
  %_id_i3300 = load i64, i64* %_3273
  %_index_pointer3302 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3299, i32 0, i32 1, i64 %_id_i3300
  %_index_value3301 = load i64, i64* %_index_pointer3302
  %_id_c3303 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3276
  %_id_k3304 = load i64, i64* %_3275
  %_3305 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c3303, i32 0, i32 1, i64 %_id_k3304
  store i64 %_index_value3301, i64* %_3305
  %_id_k3306 = load i64, i64* %_3275
  %_bop3307 = add i64 %_id_k3306, 1
  store i64 %_bop3307, i64* %_3275
  %_id_i3308 = load i64, i64* %_3273
  %_bop3309 = add i64 %_id_i3308, 1
  store i64 %_bop3309, i64* %_3273
  br label %_end_if3324
_else_branch3323:
  %_id_a3310 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3269
  %_id_j3311 = load i64, i64* %_3274
  %_index_pointer3313 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3310, i32 0, i32 1, i64 %_id_j3311
  %_index_value3312 = load i64, i64* %_index_pointer3313
  %_id_c3314 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3276
  %_id_k3315 = load i64, i64* %_3275
  %_3316 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c3314, i32 0, i32 1, i64 %_id_k3315
  store i64 %_index_value3312, i64* %_3316
  %_id_k3317 = load i64, i64* %_3275
  %_bop3318 = add i64 %_id_k3317, 1
  store i64 %_bop3318, i64* %_3275
  %_id_j3319 = load i64, i64* %_3274
  %_bop3320 = add i64 %_id_j3319, 1
  store i64 %_bop3320, i64* %_3274
  br label %_end_if3324
_end_if3324:
  br label %_cond3326
_merge3327:
  br label %_cond3343
_cond3343:
  %_id_i3328 = load i64, i64* %_3273
  %_id_mid3329 = load i64, i64* %_mid3272
  %_bop3330 = icmp sle i64 %_id_i3328, %_id_mid3329
  br i1 %_bop3330, label %_if3342, label %_merge3344
_if3342:
  %_id_a3331 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3269
  %_id_i3332 = load i64, i64* %_3273
  %_index_pointer3334 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3331, i32 0, i32 1, i64 %_id_i3332
  %_index_value3333 = load i64, i64* %_index_pointer3334
  %_id_c3335 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3276
  %_id_k3336 = load i64, i64* %_3275
  %_3337 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c3335, i32 0, i32 1, i64 %_id_k3336
  store i64 %_index_value3333, i64* %_3337
  %_id_k3338 = load i64, i64* %_3275
  %_bop3339 = add i64 %_id_k3338, 1
  store i64 %_bop3339, i64* %_3275
  %_id_i3340 = load i64, i64* %_3273
  %_bop3341 = add i64 %_id_i3340, 1
  store i64 %_bop3341, i64* %_3273
  br label %_cond3343
_merge3344:
  br label %_cond3360
_cond3360:
  %_id_j3345 = load i64, i64* %_3274
  %_id_high3346 = load i64, i64* %_high3271
  %_bop3347 = icmp sle i64 %_id_j3345, %_id_high3346
  br i1 %_bop3347, label %_if3359, label %_merge3361
_if3359:
  %_id_a3348 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3269
  %_id_j3349 = load i64, i64* %_3274
  %_index_pointer3351 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3348, i32 0, i32 1, i64 %_id_j3349
  %_index_value3350 = load i64, i64* %_index_pointer3351
  %_id_c3352 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3276
  %_id_k3353 = load i64, i64* %_3275
  %_3354 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c3352, i32 0, i32 1, i64 %_id_k3353
  store i64 %_index_value3350, i64* %_3354
  %_id_k3355 = load i64, i64* %_3275
  %_bop3356 = add i64 %_id_k3355, 1
  store i64 %_bop3356, i64* %_3275
  %_id_j3357 = load i64, i64* %_3274
  %_bop3358 = add i64 %_id_j3357, 1
  store i64 %_bop3358, i64* %_3274
  br label %_cond3360
_merge3361:
  %_id_low3362 = load i64, i64* %_low3270
  store i64 %_id_low3362, i64* %_3273
  br label %_cond3376
_cond3376:
  %_id_i3363 = load i64, i64* %_3273
  %_id_k3364 = load i64, i64* %_3275
  %_bop3365 = icmp slt i64 %_id_i3363, %_id_k3364
  br i1 %_bop3365, label %_if3375, label %_merge3377
_if3375:
  %_id_c3366 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3276
  %_id_i3367 = load i64, i64* %_3273
  %_index_pointer3369 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c3366, i32 0, i32 1, i64 %_id_i3367
  %_index_value3368 = load i64, i64* %_index_pointer3369
  %_id_a3370 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3269
  %_id_i3371 = load i64, i64* %_3273
  %_3372 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3370, i32 0, i32 1, i64 %_id_i3371
  store i64 %_index_value3368, i64* %_3372
  %_id_i3373 = load i64, i64* %_3273
  %_bop3374 = add i64 %_id_i3373, 1
  store i64 %_bop3374, i64* %_3273
  br label %_cond3376
_merge3377:
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
