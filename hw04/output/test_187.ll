; generated from: hw4programs/binary_search.oat
target triple = "x86_64-apple-macosx10.13.0"
@_raw_string3460 = global [9 x i8] c"Correct!\00"

define i64 @euclid_division(i64 %numerator, i64 %denominator) {
  %_numerator3514 = alloca i64
  %_denominator3515 = alloca i64
  %_3527 = alloca i64
  %_3528 = alloca i64
  store i64 %numerator, i64* %_numerator3514
  store i64 %denominator, i64* %_denominator3515
  br label %_start3523
_start3523:
  %_id_denominator3516 = load i64, i64* %_denominator3515
  %_3517 = icmp slt i64 %_id_denominator3516, 0
  br i1 %_3517, label %_then3524, label %_else3525
_then3524:
  %_id_numerator3518 = load i64, i64* %_numerator3514
  %_id_denominator3519 = load i64, i64* %_denominator3515
  %_3520 = mul i64 %_id_denominator3519, -1
  %_3521 = call i64 @euclid_division(i64 %_id_numerator3518, i64 %_3520)
  %_3522 = mul i64 %_3521, -1
  ret i64 %_3522
_else3525:
  br label %_post3526
_post3526:
  store i64 0, i64* %_3527
  %_id_numerator3529 = load i64, i64* %_numerator3514
  store i64 %_id_numerator3529, i64* %_3528
  br label %_start3556
_start3556:
  %_id_numerator3530 = load i64, i64* %_numerator3514
  %_3531 = icmp slt i64 %_id_numerator3530, 0
  br i1 %_3531, label %_then3557, label %_else3558
_then3557:
  %_id_numerator3532 = load i64, i64* %_numerator3514
  %_3533 = mul i64 %_id_numerator3532, -1
  store i64 %_3533, i64* %_3528
  br label %_start3542
_start3542:
  %_id_denominator3535 = load i64, i64* %_denominator3515
  %_id_remainder3534 = load i64, i64* %_3528
  %_3536 = icmp sge i64 %_id_remainder3534, %_id_denominator3535
  br i1 %_3536, label %_body3543, label %_else3544
_body3543:
  %_id_quotient3537 = load i64, i64* %_3527
  %_3538 = add i64 %_id_quotient3537, 1
  store i64 %_3538, i64* %_3527
  %_id_denominator3540 = load i64, i64* %_denominator3515
  %_id_remainder3539 = load i64, i64* %_3528
  %_3541 = sub i64 %_id_remainder3539, %_id_denominator3540
  store i64 %_3541, i64* %_3528
  br label %_start3542
_else3544:
  br label %_start3552
_start3552:
  %_id_remainder3545 = load i64, i64* %_3528
  %_3546 = icmp eq i64 %_id_remainder3545, 0
  br i1 %_3546, label %_then3553, label %_else3554
_then3553:
  %_id_quotient3547 = load i64, i64* %_3527
  %_3548 = mul i64 %_id_quotient3547, -1
  ret i64 %_3548
_else3554:
  %_id_quotient3549 = load i64, i64* %_3527
  %_3550 = mul i64 %_id_quotient3549, -1
  %_3551 = sub i64 %_3550, 1
  ret i64 %_3551
_post3555:
  br label %_post3559
_else3558:
  br label %_post3559
_post3559:
  br label %_start3568
_start3568:
  %_id_denominator3561 = load i64, i64* %_denominator3515
  %_id_remainder3560 = load i64, i64* %_3528
  %_3562 = icmp sge i64 %_id_remainder3560, %_id_denominator3561
  br i1 %_3562, label %_body3569, label %_else3570
_body3569:
  %_id_quotient3563 = load i64, i64* %_3527
  %_3564 = add i64 %_id_quotient3563, 1
  store i64 %_3564, i64* %_3527
  %_id_denominator3566 = load i64, i64* %_denominator3515
  %_id_remainder3565 = load i64, i64* %_3528
  %_3567 = sub i64 %_id_remainder3565, %_id_denominator3566
  store i64 %_3567, i64* %_3528
  br label %_start3568
_else3570:
  %_id_quotient3571 = load i64, i64* %_3527
  ret i64 %_id_quotient3571
}

define i1 @binary_search({ i64, [0 x i64] }* %input, i64 %key, i64 %min, i64 %max) {
  %_input3466 = alloca { i64, [0 x i64] }*
  %_key3467 = alloca i64
  %_min3468 = alloca i64
  %_max3469 = alloca i64
  %_3477 = alloca i64
  store { i64, [0 x i64] }* %input, { i64, [0 x i64] }** %_input3466
  store i64 %key, i64* %_key3467
  store i64 %min, i64* %_min3468
  store i64 %max, i64* %_max3469
  br label %_start3473
_start3473:
  %_id_min3471 = load i64, i64* %_min3468
  %_id_max3470 = load i64, i64* %_max3469
  %_3472 = icmp slt i64 %_id_max3470, %_id_min3471
  br i1 %_3472, label %_then3474, label %_else3475
_then3474:
  ret i1 0
_else3475:
  br label %_post3476
_post3476:
  %_id_min3479 = load i64, i64* %_min3468
  %_id_max3478 = load i64, i64* %_max3469
  %_3480 = add i64 %_id_max3478, %_id_min3479
  %_3481 = call i64 @euclid_division(i64 %_3480, i64 2)
  store i64 %_3481, i64* %_3477
  br label %_start3494
_start3494:
  %_id_key3486 = load i64, i64* %_key3467
  %_id_input3482 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3466
  %_id_midpt3483 = load i64, i64* %_3477
  %_index_pointer3484 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_input3482, i32 0, i32 1, i64 %_id_midpt3483
  %_index_value3485 = load i64, i64* %_index_pointer3484
  %_3487 = icmp sgt i64 %_index_value3485, %_id_key3486
  br i1 %_3487, label %_then3495, label %_else3496
_then3495:
  %_id_input3488 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3466
  %_id_key3489 = load i64, i64* %_key3467
  %_id_min3490 = load i64, i64* %_min3468
  %_id_midpt3491 = load i64, i64* %_3477
  %_3492 = sub i64 %_id_midpt3491, 1
  %_3493 = call i1 @binary_search({ i64, [0 x i64] }* %_id_input3488, i64 %_id_key3489, i64 %_id_min3490, i64 %_3492)
  ret i1 %_3493
_else3496:
  br label %_post3497
_post3497:
  br label %_start3510
_start3510:
  %_id_key3502 = load i64, i64* %_key3467
  %_id_input3498 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3466
  %_id_midpt3499 = load i64, i64* %_3477
  %_index_pointer3500 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_input3498, i32 0, i32 1, i64 %_id_midpt3499
  %_index_value3501 = load i64, i64* %_index_pointer3500
  %_3503 = icmp slt i64 %_index_value3501, %_id_key3502
  br i1 %_3503, label %_then3511, label %_else3512
_then3511:
  %_id_input3504 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3466
  %_id_key3505 = load i64, i64* %_key3467
  %_id_midpt3506 = load i64, i64* %_3477
  %_3507 = add i64 %_id_midpt3506, 1
  %_id_max3508 = load i64, i64* %_max3469
  %_3509 = call i1 @binary_search({ i64, [0 x i64] }* %_id_input3504, i64 %_id_key3505, i64 %_3507, i64 %_id_max3508)
  ret i1 %_3509
_else3512:
  ret i1 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3426 = alloca i64
  %_argv3427 = alloca { i64, [0 x i8*] }*
  %_3428 = alloca { i64, [0 x i64] }*
  %_3431 = alloca i64
  %_3445 = alloca i1
  %_3448 = alloca i1
  store i64 %argc, i64* %_argc3426
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3427
  %_raw_array3429 = call i64* @oat_alloc_array(i64 100)
  %_array3430 = bitcast i64* %_raw_array3429 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3430, { i64, [0 x i64] }** %_3428
  store i64 0, i64* %_3431
  br label %_start3442
_start3442:
  %_id_i3432 = load i64, i64* %_3431
  %_3433 = icmp slt i64 %_id_i3432, 100
  br i1 %_3433, label %_body3443, label %_else3444
_body3443:
  %_id_i3434 = load i64, i64* %_3431
  %_3435 = mul i64 2, %_id_i3434
  %_3436 = add i64 %_3435, 1
  %_id_test_array3437 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3428
  %_id_i3438 = load i64, i64* %_3431
  %_3439 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_test_array3437, i32 0, i32 1, i64 %_id_i3438
  store i64 %_3436, i64* %_3439
  %_id_i3440 = load i64, i64* %_3431
  %_3441 = add i64 %_id_i3440, 1
  store i64 %_3441, i64* %_3431
  br label %_start3442
_else3444:
  %_id_test_array3446 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3428
  %_3447 = call i1 @binary_search({ i64, [0 x i64] }* %_id_test_array3446, i64 80, i64 0, i64 99)
  store i1 %_3447, i1* %_3445
  %_id_test_array3449 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3428
  %_3450 = call i1 @binary_search({ i64, [0 x i64] }* %_id_test_array3449, i64 81, i64 0, i64 99)
  store i1 %_3450, i1* %_3448
  br label %_start3462
_start3462:
  %_id_odd3456 = load i1, i1* %_3448
  %_id_even3455 = load i1, i1* %_3445
  %_3457 = or i1 %_id_even3455, %_id_odd3456
  %_id_odd3452 = load i1, i1* %_3448
  %_id_even3451 = load i1, i1* %_3445
  %_3453 = and i1 %_id_even3451, %_id_odd3452
  %_3454 = and i1 %_3453, 0
  %_3458 = and i1 %_3454, %_3457
  br i1 %_3458, label %_then3463, label %_else3464
_then3463:
  %_result_id3459 = bitcast [9 x i8]* @_raw_string3460 to i8*
  call void @print_string(i8* %_result_id3459)
  br label %_post3465
_else3464:
  br label %_post3465
_post3465:
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
