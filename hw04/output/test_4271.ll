; generated from: hw4programs/msort2.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string3637 = global [2 x i8] c" \00"
@_string3643 = global [2 x i8] c" \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3596 = alloca i64
  %_argv3597 = alloca { i64, [0 x i8*] }*
  %_3598 = alloca { i64, [0 x i64] }*
  %_3631 = alloca i64
  store i64 %argc, i64* %_argc3596
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3597
  %_raw_array3599 = call i64* @oat_alloc_array(i64 10)
  %_array3600 = bitcast i64* %_raw_array3599 to { i64, [0 x i64] }*
  %_3630 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3600, i32 0, i32 1, i32 9
  store i64 117, i64* %_3628
  %_3627 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3600, i32 0, i32 1, i32 8
  store i64 118, i64* %_3625
  %_3624 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3600, i32 0, i32 1, i32 7
  store i64 119, i64* %_3622
  %_3621 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3600, i32 0, i32 1, i32 6
  store i64 120, i64* %_3619
  %_3618 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3600, i32 0, i32 1, i32 5
  store i64 121, i64* %_3616
  %_3615 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3600, i32 0, i32 1, i32 4
  store i64 122, i64* %_3613
  %_3612 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3600, i32 0, i32 1, i32 3
  store i64 123, i64* %_3610
  %_3609 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3600, i32 0, i32 1, i32 2
  store i64 124, i64* %_3607
  %_3606 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3600, i32 0, i32 1, i32 1
  store i64 125, i64* %_3604
  %_3603 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3600, i32 0, i32 1, i32 0
  store i64 126, i64* %_3601
  store { i64, [0 x i64] }* %_array3600, { i64, [0 x i64] }** %_3598
  store i64 0, i64* %_3631
  %_id_a3632 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3598
  %_3633 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a3632)
  call void @print_string(i8* %_3633)
  %_id_a3635 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3598
  call void @oat_mergesort({ i64, [0 x i64] }* %_id_a3635, i64 0, i64 9)
  %_string13638 = getelementptr [2 x i8], [2 x i8]* @_string3637, i32 0, i32 0
  call void @print_string(i8* %_string13638)
  %_id_a3640 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3598
  %_3641 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a3640)
  call void @print_string(i8* %_3641)
  %_string13644 = getelementptr [2 x i8], [2 x i8]* @_string3643, i32 0, i32 0
  call void @print_string(i8* %_string13644)
  %_id_i3646 = load i64, i64* %_3631
  ret i64 %_id_i3646
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_a3567 = alloca { i64, [0 x i64] }*
  %_low3568 = alloca i64
  %_high3569 = alloca i64
  %_3570 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3567
  store i64 %low, i64* %_low3568
  store i64 %high, i64* %_high3569
  store i64 0, i64* %_3570
  br label %_begin_if3592
_begin_if3592:
  %_id_low3571 = load i64, i64* %_low3568
  %_id_high3572 = load i64, i64* %_high3569
  %_bop3573 = icmp slt i64 %_id_low3571, %_id_high3572
  br i1 %_bop3573, label %_then_branch3593, label %_else_branch3594
_then_branch3593:
  %_id_low3574 = load i64, i64* %_low3568
  %_id_high3575 = load i64, i64* %_high3569
  %_bop3576 = add i64 %_id_low3574, %_id_high3575
  %_bop3577 = lshr i64 %_bop3576, 1
  store i64 %_bop3577, i64* %_3570
  %_id_a3578 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3567
  %_id_low3579 = load i64, i64* %_low3568
  %_id_mid3580 = load i64, i64* %_3570
  call void @oat_mergesort({ i64, [0 x i64] }* %_id_a3578, i64 %_id_low3579, i64 %_id_mid3580)
  %_id_a3582 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3567
  %_id_mid3583 = load i64, i64* %_3570
  %_bop3584 = add i64 %_id_mid3583, 1
  %_id_high3585 = load i64, i64* %_high3569
  call void @oat_mergesort({ i64, [0 x i64] }* %_id_a3582, i64 %_bop3584, i64 %_id_high3585)
  %_id_a3587 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3567
  %_id_low3588 = load i64, i64* %_low3568
  %_id_high3589 = load i64, i64* %_high3569
  %_id_mid3590 = load i64, i64* %_3570
  call void @merge({ i64, [0 x i64] }* %_id_a3587, i64 %_id_low3588, i64 %_id_high3589, i64 %_id_mid3590)
  br label %_end_if3595
_else_branch3594:
  br label %_end_if3595
_end_if3595:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_a3458 = alloca { i64, [0 x i64] }*
  %_low3459 = alloca i64
  %_high3460 = alloca i64
  %_mid3461 = alloca i64
  %_3462 = alloca i64
  %_3463 = alloca i64
  %_3464 = alloca i64
  %_3465 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3458
  store i64 %low, i64* %_low3459
  store i64 %high, i64* %_high3460
  store i64 %mid, i64* %_mid3461
  store i64 0, i64* %_3462
  store i64 0, i64* %_3463
  store i64 0, i64* %_3464
  %_raw_array3466 = call i64* @oat_alloc_array(i64 50)
  %_array3467 = bitcast i64* %_raw_array3466 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3467, { i64, [0 x i64] }** %_3465
  %_id_low3468 = load i64, i64* %_low3459
  store i64 %_id_low3468, i64* %_3462
  %_id_mid3469 = load i64, i64* %_mid3461
  %_bop3470 = add i64 %_id_mid3469, 1
  store i64 %_bop3470, i64* %_3463
  %_id_low3471 = load i64, i64* %_low3459
  store i64 %_id_low3471, i64* %_3464
  br label %_cond3515
_cond3515:
  %_id_i3472 = load i64, i64* %_3462
  %_id_mid3473 = load i64, i64* %_mid3461
  %_bop3474 = icmp sle i64 %_id_i3472, %_id_mid3473
  %_id_j3475 = load i64, i64* %_3463
  %_id_high3476 = load i64, i64* %_high3460
  %_bop3477 = icmp sle i64 %_id_j3475, %_id_high3476
  %_bop3478 = and i1 %_bop3474, %_bop3477
  br i1 %_bop3478, label %_if3514, label %_merge3516
_if3514:
  br label %_begin_if3510
_begin_if3510:
  %_id_a3479 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3458
  %_id_i3480 = load i64, i64* %_3462
  %_index_pointer3482 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3479, i32 0, i32 1, i64 %_id_i3480
  %_index_value3481 = load i64, i64* %_index_pointer3482
  %_id_a3483 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3458
  %_id_j3484 = load i64, i64* %_3463
  %_index_pointer3486 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3483, i32 0, i32 1, i64 %_id_j3484
  %_index_value3485 = load i64, i64* %_index_pointer3486
  %_bop3487 = icmp slt i64 %_index_value3481, %_index_value3485
  br i1 %_bop3487, label %_then_branch3511, label %_else_branch3512
_then_branch3511:
  %_id_a3488 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3458
  %_id_i3489 = load i64, i64* %_3462
  %_index_pointer3491 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3488, i32 0, i32 1, i64 %_id_i3489
  %_index_value3490 = load i64, i64* %_index_pointer3491
  %_id_c3492 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3465
  %_id_k3493 = load i64, i64* %_3464
  %_3494 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c3492, i32 0, i32 1, i64 %_id_k3493
  store i64 %_index_value3490, i64* %_3494
  %_id_k3495 = load i64, i64* %_3464
  %_bop3496 = add i64 %_id_k3495, 1
  store i64 %_bop3496, i64* %_3464
  %_id_i3497 = load i64, i64* %_3462
  %_bop3498 = add i64 %_id_i3497, 1
  store i64 %_bop3498, i64* %_3462
  br label %_end_if3513
_else_branch3512:
  %_id_a3499 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3458
  %_id_j3500 = load i64, i64* %_3463
  %_index_pointer3502 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3499, i32 0, i32 1, i64 %_id_j3500
  %_index_value3501 = load i64, i64* %_index_pointer3502
  %_id_c3503 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3465
  %_id_k3504 = load i64, i64* %_3464
  %_3505 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c3503, i32 0, i32 1, i64 %_id_k3504
  store i64 %_index_value3501, i64* %_3505
  %_id_k3506 = load i64, i64* %_3464
  %_bop3507 = add i64 %_id_k3506, 1
  store i64 %_bop3507, i64* %_3464
  %_id_j3508 = load i64, i64* %_3463
  %_bop3509 = add i64 %_id_j3508, 1
  store i64 %_bop3509, i64* %_3463
  br label %_end_if3513
_end_if3513:
  br label %_cond3515
_merge3516:
  br label %_cond3532
_cond3532:
  %_id_i3517 = load i64, i64* %_3462
  %_id_mid3518 = load i64, i64* %_mid3461
  %_bop3519 = icmp sle i64 %_id_i3517, %_id_mid3518
  br i1 %_bop3519, label %_if3531, label %_merge3533
_if3531:
  %_id_a3520 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3458
  %_id_i3521 = load i64, i64* %_3462
  %_index_pointer3523 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3520, i32 0, i32 1, i64 %_id_i3521
  %_index_value3522 = load i64, i64* %_index_pointer3523
  %_id_c3524 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3465
  %_id_k3525 = load i64, i64* %_3464
  %_3526 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c3524, i32 0, i32 1, i64 %_id_k3525
  store i64 %_index_value3522, i64* %_3526
  %_id_k3527 = load i64, i64* %_3464
  %_bop3528 = add i64 %_id_k3527, 1
  store i64 %_bop3528, i64* %_3464
  %_id_i3529 = load i64, i64* %_3462
  %_bop3530 = add i64 %_id_i3529, 1
  store i64 %_bop3530, i64* %_3462
  br label %_cond3532
_merge3533:
  br label %_cond3549
_cond3549:
  %_id_j3534 = load i64, i64* %_3463
  %_id_high3535 = load i64, i64* %_high3460
  %_bop3536 = icmp sle i64 %_id_j3534, %_id_high3535
  br i1 %_bop3536, label %_if3548, label %_merge3550
_if3548:
  %_id_a3537 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3458
  %_id_j3538 = load i64, i64* %_3463
  %_index_pointer3540 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3537, i32 0, i32 1, i64 %_id_j3538
  %_index_value3539 = load i64, i64* %_index_pointer3540
  %_id_c3541 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3465
  %_id_k3542 = load i64, i64* %_3464
  %_3543 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c3541, i32 0, i32 1, i64 %_id_k3542
  store i64 %_index_value3539, i64* %_3543
  %_id_k3544 = load i64, i64* %_3464
  %_bop3545 = add i64 %_id_k3544, 1
  store i64 %_bop3545, i64* %_3464
  %_id_j3546 = load i64, i64* %_3463
  %_bop3547 = add i64 %_id_j3546, 1
  store i64 %_bop3547, i64* %_3463
  br label %_cond3549
_merge3550:
  %_id_low3551 = load i64, i64* %_low3459
  store i64 %_id_low3551, i64* %_3462
  br label %_cond3565
_cond3565:
  %_id_i3552 = load i64, i64* %_3462
  %_id_k3553 = load i64, i64* %_3464
  %_bop3554 = icmp slt i64 %_id_i3552, %_id_k3553
  br i1 %_bop3554, label %_if3564, label %_merge3566
_if3564:
  %_id_c3555 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3465
  %_id_i3556 = load i64, i64* %_3462
  %_index_pointer3558 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_c3555, i32 0, i32 1, i64 %_id_i3556
  %_index_value3557 = load i64, i64* %_index_pointer3558
  %_id_a3559 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3458
  %_id_i3560 = load i64, i64* %_3462
  %_3561 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3559, i32 0, i32 1, i64 %_id_i3560
  store i64 %_index_value3557, i64* %_3561
  %_id_i3562 = load i64, i64* %_3462
  %_bop3563 = add i64 %_id_i3562, 1
  store i64 %_bop3563, i64* %_3462
  br label %_cond3565
_merge3566:
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
