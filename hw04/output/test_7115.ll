; generated from: hw4programs/matrixmult.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string3373 = global [2 x i8] c" \00"
@_string3381 = global [2 x i8] c"	\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3506 = alloca i64
  %_argv3507 = alloca { i64, [0 x i8*] }*
  %_a3530 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b3569 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_c3596 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc3506
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3507
  %_raw_array3518 = call i64* @oat_alloc_array(i64 3)
  %_array3519 = bitcast i64* %_raw_array3518 to { i64, [0 x i64] }*
  %_3524 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3519, i32 0, i32 1, i32 2
  store i64 1, i64* %_3524
  %_3522 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3519, i32 0, i32 1, i32 1
  store i64 0, i64* %_3522
  %_3520 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3519, i32 0, i32 1, i32 0
  store i64 2, i64* %_3520
  %_raw_array3510 = call i64* @oat_alloc_array(i64 3)
  %_array3511 = bitcast i64* %_raw_array3510 to { i64, [0 x i64] }*
  %_3516 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3511, i32 0, i32 1, i32 2
  store i64 4, i64* %_3516
  %_3514 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3511, i32 0, i32 1, i32 1
  store i64 3, i64* %_3514
  %_3512 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3511, i32 0, i32 1, i32 0
  store i64 1, i64* %_3512
  %_raw_array3508 = call i64* @oat_alloc_array(i64 2)
  %_array3509 = bitcast i64* %_raw_array3508 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_3528 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3509, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3519, { i64, [0 x i64] }** %_3528
  %_3526 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3509, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3511, { i64, [0 x i64] }** %_3526
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3509, { i64, [0 x { i64, [0 x i64] }*] }** %_a3530
  %_raw_array3553 = call i64* @oat_alloc_array(i64 4)
  %_array3554 = bitcast i64* %_raw_array3553 to { i64, [0 x i64] }*
  %_3561 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3554, i32 0, i32 1, i32 3
  store i64 4, i64* %_3561
  %_3559 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3554, i32 0, i32 1, i32 2
  store i64 1, i64* %_3559
  %_3557 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3554, i32 0, i32 1, i32 1
  store i64 2, i64* %_3557
  %_3555 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3554, i32 0, i32 1, i32 0
  store i64 3, i64* %_3555
  %_raw_array3543 = call i64* @oat_alloc_array(i64 4)
  %_array3544 = bitcast i64* %_raw_array3543 to { i64, [0 x i64] }*
  %_3551 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3544, i32 0, i32 1, i32 3
  store i64 2, i64* %_3551
  %_3549 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3544, i32 0, i32 1, i32 2
  store i64 2, i64* %_3549
  %_3547 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3544, i32 0, i32 1, i32 1
  store i64 2, i64* %_3547
  %_3545 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3544, i32 0, i32 1, i32 0
  store i64 2, i64* %_3545
  %_raw_array3533 = call i64* @oat_alloc_array(i64 4)
  %_array3534 = bitcast i64* %_raw_array3533 to { i64, [0 x i64] }*
  %_3541 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3534, i32 0, i32 1, i32 3
  store i64 1, i64* %_3541
  %_3539 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3534, i32 0, i32 1, i32 2
  store i64 3, i64* %_3539
  %_3537 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3534, i32 0, i32 1, i32 1
  store i64 2, i64* %_3537
  %_3535 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3534, i32 0, i32 1, i32 0
  store i64 1, i64* %_3535
  %_raw_array3531 = call i64* @oat_alloc_array(i64 3)
  %_array3532 = bitcast i64* %_raw_array3531 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_3567 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3532, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3554, { i64, [0 x i64] }** %_3567
  %_3565 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3532, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3544, { i64, [0 x i64] }** %_3565
  %_3563 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3532, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3534, { i64, [0 x i64] }** %_3563
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3532, { i64, [0 x { i64, [0 x i64] }*] }** %_b3569
  %_raw_array3582 = call i64* @oat_alloc_array(i64 4)
  %_array3583 = bitcast i64* %_raw_array3582 to { i64, [0 x i64] }*
  %_3590 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3583, i32 0, i32 1, i32 3
  store i64 0, i64* %_3590
  %_3588 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3583, i32 0, i32 1, i32 2
  store i64 0, i64* %_3588
  %_3586 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3583, i32 0, i32 1, i32 1
  store i64 0, i64* %_3586
  %_3584 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3583, i32 0, i32 1, i32 0
  store i64 0, i64* %_3584
  %_raw_array3572 = call i64* @oat_alloc_array(i64 4)
  %_array3573 = bitcast i64* %_raw_array3572 to { i64, [0 x i64] }*
  %_3580 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3573, i32 0, i32 1, i32 3
  store i64 0, i64* %_3580
  %_3578 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3573, i32 0, i32 1, i32 2
  store i64 0, i64* %_3578
  %_3576 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3573, i32 0, i32 1, i32 1
  store i64 0, i64* %_3576
  %_3574 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3573, i32 0, i32 1, i32 0
  store i64 0, i64* %_3574
  %_raw_array3570 = call i64* @oat_alloc_array(i64 2)
  %_array3571 = bitcast i64* %_raw_array3570 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_3594 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3571, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3583, { i64, [0 x i64] }** %_3594
  %_3592 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3571, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3573, { i64, [0 x i64] }** %_3592
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3571, { i64, [0 x { i64, [0 x i64] }*] }** %_c3596
  %_id_a3597 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3530
  %_id_b3598 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b3569
  %_id_c3599 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3596
  call void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_id_a3597, { i64, [0 x { i64, [0 x i64] }*] }* %_id_b3598, { i64, [0 x { i64, [0 x i64] }*] }* %_id_c3599)
  %_id_c3601 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3596
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_id_c3601, i64 2)
  %_id_a3603 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3530
  %_id_b3604 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b3569
  %_id_c3605 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3596
  call void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_id_a3603, { i64, [0 x { i64, [0 x i64] }*] }* %_id_b3604, { i64, [0 x { i64, [0 x i64] }*] }* %_id_c3605)
  %_id_c3607 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3596
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_id_c3607, i64 2)
  ret i64 0
}

define void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_a13450 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23451 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a33452 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i3453 = alloca i64
  %_j3456 = alloca i64
  %_k3459 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a13450
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a23451
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_a33452
  store i64 0, i64* %_i3453
  br label %_cond3504
_cond3504:
  %_id_i3454 = load i64, i64* %_i3453
  %_bop3455 = icmp slt i64 %_id_i3454, 2
  br i1 %_bop3455, label %_if3505, label %_merge3503
_if3505:
  store i64 0, i64* %_j3456
  br label %_cond3499
_cond3499:
  %_id_j3457 = load i64, i64* %_j3456
  %_bop3458 = icmp slt i64 %_id_j3457, 4
  br i1 %_bop3458, label %_if3500, label %_merge3498
_if3500:
  store i64 0, i64* %_k3459
  br label %_cond3494
_cond3494:
  %_id_k3460 = load i64, i64* %_k3459
  %_bop3461 = icmp slt i64 %_id_k3460, 3
  br i1 %_bop3461, label %_if3495, label %_merge3493
_if3495:
  %_id_a33462 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33452
  %_id_i3463 = load i64, i64* %_i3453
  %_index_pointer3465 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a33462, i32 0, i32 1, i64 %_id_i3463
  %_index_value3464 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3465
  %_id_j3466 = load i64, i64* %_j3456
  %_index_pointer3468 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3464, i32 0, i32 1, i64 %_id_j3466
  %_index_value3467 = load i64, i64* %_index_pointer3468
  %_id_a13469 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13450
  %_id_i3470 = load i64, i64* %_i3453
  %_index_pointer3472 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a13469, i32 0, i32 1, i64 %_id_i3470
  %_index_value3471 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3472
  %_id_k3473 = load i64, i64* %_k3459
  %_index_pointer3475 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3471, i32 0, i32 1, i64 %_id_k3473
  %_index_value3474 = load i64, i64* %_index_pointer3475
  %_id_a23476 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23451
  %_id_k3477 = load i64, i64* %_k3459
  %_index_pointer3479 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a23476, i32 0, i32 1, i64 %_id_k3477
  %_index_value3478 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3479
  %_id_j3480 = load i64, i64* %_j3456
  %_index_pointer3482 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3478, i32 0, i32 1, i64 %_id_j3480
  %_index_value3481 = load i64, i64* %_index_pointer3482
  %_bop3483 = mul i64 %_index_value3474, %_index_value3481
  %_bop3484 = add i64 %_index_value3467, %_bop3483
  %_id_a33485 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33452
  %_id_i3486 = load i64, i64* %_i3453
  %_index_pointer3488 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a33485, i32 0, i32 1, i64 %_id_i3486
  %_index_value3487 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3488
  %_id_j3489 = load i64, i64* %_j3456
  %_3490 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3487, i32 0, i32 1, i64 %_id_j3489
  store i64 %_bop3484, i64* %_3490
  %_id_k3491 = load i64, i64* %_k3459
  %_bop3492 = add i64 %_id_k3491, 1
  store i64 %_bop3492, i64* %_k3459
  br label %_cond3494
_merge3493:
  %_id_j3496 = load i64, i64* %_j3456
  %_bop3497 = add i64 %_id_j3496, 1
  store i64 %_bop3497, i64* %_j3456
  br label %_cond3499
_merge3498:
  %_id_i3501 = load i64, i64* %_i3453
  %_bop3502 = add i64 %_id_i3501, 1
  store i64 %_bop3502, i64* %_i3453
  br label %_cond3504
_merge3503:
  ret void
}

define void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_a13420 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23421 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a33422 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i3423 = alloca i64
  %_j3426 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a13420
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a23421
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_a33422
  store i64 0, i64* %_i3423
  br label %_cond3448
_cond3448:
  %_id_i3424 = load i64, i64* %_i3423
  %_bop3425 = icmp slt i64 %_id_i3424, 2
  br i1 %_bop3425, label %_if3449, label %_merge3447
_if3449:
  store i64 0, i64* %_j3426
  br label %_cond3443
_cond3443:
  %_id_j3427 = load i64, i64* %_j3426
  %_bop3428 = icmp slt i64 %_id_j3427, 4
  br i1 %_bop3428, label %_if3444, label %_merge3442
_if3444:
  %_id_a13429 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13420
  %_id_a23430 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23421
  %_id_i3431 = load i64, i64* %_i3423
  %_id_j3432 = load i64, i64* %_j3426
  %_3433 = call i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_id_a13429, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a23430, i64 %_id_i3431, i64 %_id_j3432)
  %_id_a33434 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33422
  %_id_i3435 = load i64, i64* %_i3423
  %_index_pointer3437 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a33434, i32 0, i32 1, i64 %_id_i3435
  %_index_value3436 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3437
  %_id_j3438 = load i64, i64* %_j3426
  %_3439 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3436, i32 0, i32 1, i64 %_id_j3438
  store i64 %_3433, i64* %_3439
  %_id_j3440 = load i64, i64* %_j3426
  %_bop3441 = add i64 %_id_j3440, 1
  store i64 %_bop3441, i64* %_j3426
  br label %_cond3443
_merge3442:
  %_id_i3445 = load i64, i64* %_i3423
  %_bop3446 = add i64 %_id_i3445, 1
  store i64 %_bop3446, i64* %_i3423
  br label %_cond3448
_merge3447:
  ret void
}

define i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, i64 %row, i64 %col) {
  %_a13389 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23390 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_row3391 = alloca i64
  %_col3392 = alloca i64
  %_sum3393 = alloca i64
  %_k3394 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a13389
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a23390
  store i64 %row, i64* %_row3391
  store i64 %col, i64* %_col3392
  store i64 0, i64* %_sum3393
  store i64 0, i64* %_k3394
  br label %_cond3417
_cond3417:
  %_id_k3395 = load i64, i64* %_k3394
  %_bop3396 = icmp slt i64 %_id_k3395, 3
  br i1 %_bop3396, label %_if3418, label %_merge3416
_if3418:
  %_id_sum3397 = load i64, i64* %_sum3393
  %_id_a13398 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13389
  %_id_row3399 = load i64, i64* %_row3391
  %_index_pointer3401 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a13398, i32 0, i32 1, i64 %_id_row3399
  %_index_value3400 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3401
  %_id_k3402 = load i64, i64* %_k3394
  %_index_pointer3404 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3400, i32 0, i32 1, i64 %_id_k3402
  %_index_value3403 = load i64, i64* %_index_pointer3404
  %_id_a23405 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23390
  %_id_k3406 = load i64, i64* %_k3394
  %_index_pointer3408 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a23405, i32 0, i32 1, i64 %_id_k3406
  %_index_value3407 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3408
  %_id_col3409 = load i64, i64* %_col3392
  %_index_pointer3411 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3407, i32 0, i32 1, i64 %_id_col3409
  %_index_value3410 = load i64, i64* %_index_pointer3411
  %_bop3412 = mul i64 %_index_value3403, %_index_value3410
  %_bop3413 = add i64 %_id_sum3397, %_bop3412
  store i64 %_bop3413, i64* %_sum3393
  %_id_k3414 = load i64, i64* %_k3394
  %_bop3415 = add i64 %_id_k3414, 1
  store i64 %_bop3415, i64* %_k3394
  br label %_cond3417
_merge3416:
  %_id_sum3419 = load i64, i64* %_sum3393
  ret i64 %_id_sum3419
}

define void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %ar, i64 %n) {
  %_ar3356 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_n3357 = alloca i64
  %_i3358 = alloca i64
  %_j3362 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %ar, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3356
  store i64 %n, i64* %_n3357
  store i64 0, i64* %_i3358
  br label %_cond3387
_cond3387:
  %_id_i3359 = load i64, i64* %_i3358
  %_id_n3360 = load i64, i64* %_n3357
  %_bop3361 = icmp slt i64 %_id_i3359, %_id_n3360
  br i1 %_bop3361, label %_if3388, label %_merge3386
_if3388:
  store i64 0, i64* %_j3362
  br label %_cond3379
_cond3379:
  %_id_j3363 = load i64, i64* %_j3362
  %_bop3364 = icmp slt i64 %_id_j3363, 4
  br i1 %_bop3364, label %_if3380, label %_merge3378
_if3380:
  %_id_ar3365 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3356
  %_id_i3366 = load i64, i64* %_i3358
  %_index_pointer3368 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_ar3365, i32 0, i32 1, i64 %_id_i3366
  %_index_value3367 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3368
  %_id_j3369 = load i64, i64* %_j3362
  %_index_pointer3371 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3367, i32 0, i32 1, i64 %_id_j3369
  %_index_value3370 = load i64, i64* %_index_pointer3371
  call void @print_int(i64 %_index_value3370)
  %_string13374 = getelementptr [2 x i8], [2 x i8]* @_string3373, i32 0, i32 0
  call void @print_string(i8* %_string13374)
  %_id_j3376 = load i64, i64* %_j3362
  %_bop3377 = add i64 %_id_j3376, 1
  store i64 %_bop3377, i64* %_j3362
  br label %_cond3379
_merge3378:
  %_string13382 = getelementptr [2 x i8], [2 x i8]* @_string3381, i32 0, i32 0
  call void @print_string(i8* %_string13382)
  %_id_i3384 = load i64, i64* %_i3358
  %_bop3385 = add i64 %_id_i3384, 1
  store i64 %_bop3385, i64* %_i3358
  br label %_cond3387
_merge3386:
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
