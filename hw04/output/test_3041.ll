; generated from: hw4programs/insertion_sort.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %partial, i64 %len, i64 %insertee) {
  %_partial3406 = alloca { i64, [0 x i64] }*
  %_len3407 = alloca i64
  %_insertee3408 = alloca i64
  %_3409 = alloca { i64, [0 x i64] }*
  %_3414 = alloca i64
  %_3428 = alloca i1
  %_3439 = alloca i64
  store { i64, [0 x i64] }* %partial, { i64, [0 x i64] }** %_partial3406
  store i64 %len, i64* %_len3407
  store i64 %insertee, i64* %_insertee3408
  %_id_len3410 = load i64, i64* %_len3407
  %_3411 = add i64 %_id_len3410, 1
  %_raw_array3412 = call i64* @oat_alloc_array(i64 %_3411)
  %_array3413 = bitcast i64* %_raw_array3412 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3413, { i64, [0 x i64] }** %_3409
  store i64 0, i64* %_3414
  br label %_cond3426
_cond3426:
  %_id_len3416 = load i64, i64* %_len3407
  %_3417 = add i64 %_id_len3416, 1
  %_id_i3415 = load i64, i64* %_3414
  %_3418 = icmp slt i64 %_id_i3415, %_3417
  br i1 %_3418, label %_if3425, label %_merge3427
_if3425:
  %_unop3419 = sub i64 0, 1
  %_id_inserted3420 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3409
  %_id_i3421 = load i64, i64* %_3414
  %_3422 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted3420, i32 0, i32 1, i64 %_id_i3421
  store i64 %_unop3419, i64* %_3422
  %_id_i3423 = load i64, i64* %_3414
  %_3424 = add i64 %_id_i3423, 1
  store i64 %_3424, i64* %_3414
  br label %_cond3426
_merge3427:
  store i1 1, i1* %_3428
  %_id_partial3430 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial3406
  %_index_pointer3431 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_partial3430, i32 0, i32 1, i32 0
  %_index_value3432 = load i64, i64* %_index_pointer3431
  %_id_insertee3429 = load i64, i64* %_insertee3408
  %_3433 = icmp slt i64 %_id_insertee3429, %_index_value3432
  br i1 %_3433, label %_if3437, label %_merge3438
_if3437:
  store i1 0, i1* %_3428
  %_id_insertee3434 = load i64, i64* %_insertee3408
  %_id_inserted3435 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3409
  %_3436 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted3435, i32 0, i32 1, i32 0
  store i64 %_id_insertee3434, i64* %_3436
  br label %_merge3438
_merge3438:
  store i64 0, i64* %_3439
  br label %_cond3486
_cond3486:
  %_id_len3441 = load i64, i64* %_len3407
  %_id_i3440 = load i64, i64* %_3439
  %_3442 = icmp slt i64 %_id_i3440, %_id_len3441
  br i1 %_3442, label %_if3485, label %_merge3487
_if3485:
  %_id_not_yet_inserted3443 = load i1, i1* %_3428
  br i1 %_id_not_yet_inserted3443, label %_if3480, label %_else3481
_if3480:
  %_id_partial3445 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial3406
  %_id_i3446 = load i64, i64* %_3439
  %_index_pointer3447 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_partial3445, i32 0, i32 1, i64 %_id_i3446
  %_index_value3448 = load i64, i64* %_index_pointer3447
  %_id_insertee3444 = load i64, i64* %_insertee3408
  %_3449 = icmp sgt i64 %_id_insertee3444, %_index_value3448
  br i1 %_3449, label %_if3469, label %_else3470
_if3469:
  store i1 0, i1* %_3428
  %_id_insertee3450 = load i64, i64* %_insertee3408
  %_id_inserted3451 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3409
  %_id_i3452 = load i64, i64* %_3439
  %_3453 = add i64 %_id_i3452, 1
  %_3454 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted3451, i32 0, i32 1, i64 %_3453
  store i64 %_id_insertee3450, i64* %_3454
  %_id_partial3455 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial3406
  %_id_i3456 = load i64, i64* %_3439
  %_index_pointer3457 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_partial3455, i32 0, i32 1, i64 %_id_i3456
  %_index_value3458 = load i64, i64* %_index_pointer3457
  %_id_inserted3459 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3409
  %_id_i3460 = load i64, i64* %_3439
  %_3461 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted3459, i32 0, i32 1, i64 %_id_i3460
  store i64 %_index_value3458, i64* %_3461
  br label %_merge3471
_else3470:
  %_id_partial3462 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial3406
  %_id_i3463 = load i64, i64* %_3439
  %_index_pointer3464 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_partial3462, i32 0, i32 1, i64 %_id_i3463
  %_index_value3465 = load i64, i64* %_index_pointer3464
  %_id_inserted3466 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3409
  %_id_i3467 = load i64, i64* %_3439
  %_3468 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted3466, i32 0, i32 1, i64 %_id_i3467
  store i64 %_index_value3465, i64* %_3468
  br label %_merge3471
_merge3471:
  br label %_merge3482
_else3481:
  %_id_partial3472 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial3406
  %_id_i3473 = load i64, i64* %_3439
  %_index_pointer3474 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_partial3472, i32 0, i32 1, i64 %_id_i3473
  %_index_value3475 = load i64, i64* %_index_pointer3474
  %_id_inserted3476 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3409
  %_id_i3477 = load i64, i64* %_3439
  %_3478 = add i64 %_id_i3477, 1
  %_3479 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted3476, i32 0, i32 1, i64 %_3478
  store i64 %_index_value3475, i64* %_3479
  br label %_merge3482
_merge3482:
  %_id_i3483 = load i64, i64* %_3439
  %_3484 = add i64 %_id_i3483, 1
  store i64 %_3484, i64* %_3439
  br label %_cond3486
_merge3487:
  %_id_inserted3488 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3409
  ret { i64, [0 x i64] }* %_id_inserted3488
}

define { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %unsorted, i64 %len) {
  %_unsorted3377 = alloca { i64, [0 x i64] }*
  %_len3378 = alloca i64
  %_3379 = alloca { i64, [0 x i64] }*
  %_3389 = alloca i64
  store { i64, [0 x i64] }* %unsorted, { i64, [0 x i64] }** %_unsorted3377
  store i64 %len, i64* %_len3378
  %_raw_array3380 = call i64* @oat_alloc_array(i64 1)
  %_array3381 = bitcast i64* %_raw_array3380 to { i64, [0 x i64] }*
  %_3382 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3381, i32 0, i32 1, i32 0
  store i64 0, i64* %_3382
  store { i64, [0 x i64] }* %_array3381, { i64, [0 x i64] }** %_3379
  %_id_unsorted3384 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted3377
  %_index_pointer3385 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_unsorted3384, i32 0, i32 1, i32 0
  %_index_value3386 = load i64, i64* %_index_pointer3385
  %_id_out3387 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3379
  %_3388 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_out3387, i32 0, i32 1, i32 0
  store i64 %_index_value3386, i64* %_3388
  store i64 1, i64* %_3389
  br label %_cond3403
_cond3403:
  %_id_len3391 = load i64, i64* %_len3378
  %_id_i3390 = load i64, i64* %_3389
  %_3392 = icmp slt i64 %_id_i3390, %_id_len3391
  br i1 %_3392, label %_if3402, label %_merge3404
_if3402:
  %_id_out3393 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3379
  %_id_i3394 = load i64, i64* %_3389
  %_id_unsorted3395 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted3377
  %_id_i3396 = load i64, i64* %_3389
  %_index_pointer3397 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_unsorted3395, i32 0, i32 1, i64 %_id_i3396
  %_index_value3398 = load i64, i64* %_index_pointer3397
  %_3399 = call { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_id_out3393, i64 %_id_i3394, i64 %_index_value3398)
  store { i64, [0 x i64] }* %_3399, { i64, [0 x i64] }** %_3379
  %_id_i3400 = load i64, i64* %_3389
  %_3401 = add i64 %_id_i3400, 1
  store i64 %_3401, i64* %_3389
  br label %_cond3403
_merge3404:
  %_id_out3405 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3379
  ret { i64, [0 x i64] }* %_id_out3405
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3354 = alloca i64
  %_argv3355 = alloca { i64, [0 x i8*] }*
  %_3356 = alloca { i64, [0 x i64] }*
  %_3371 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc3354
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3355
  %_raw_array3357 = call i64* @oat_alloc_array(i64 6)
  %_array3358 = bitcast i64* %_raw_array3357 to { i64, [0 x i64] }*
  %_3369 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3358, i32 0, i32 1, i32 5
  store i64 6, i64* %_3369
  %_3367 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3358, i32 0, i32 1, i32 4
  store i64 2, i64* %_3367
  %_3365 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3358, i32 0, i32 1, i32 3
  store i64 3, i64* %_3365
  %_3363 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3358, i32 0, i32 1, i32 2
  store i64 32, i64* %_3363
  %_3361 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3358, i32 0, i32 1, i32 1
  store i64 42, i64* %_3361
  %_3359 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3358, i32 0, i32 1, i32 0
  store i64 13, i64* %_3359
  store { i64, [0 x i64] }* %_array3358, { i64, [0 x i64] }** %_3356
  %_id_array3372 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3356
  %_3373 = call { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_id_array3372, i64 6)
  store { i64, [0 x i64] }* %_3373, { i64, [0 x i64] }** %_3371
  %_id_result3374 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3371
  %_index_pointer3375 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_result3374, i32 0, i32 1, i32 5
  %_index_value3376 = load i64, i64* %_index_pointer3375
  ret i64 %_index_value3376
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
