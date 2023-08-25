; generated from: hw4programs/matrixmult.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string3373 = global [2 x i8] c" \00"
@_string3381 = global [2 x i8] c"	\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3506 = alloca i64
  %_argv3507 = alloca { i64, [0 x i8*] }*
  %_3508 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3531 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3570 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc3506
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3507
  %_raw_array3519 = call i64* @oat_alloc_array(i64 3)
  %_array3520 = bitcast i64* %_raw_array3519 to { i64, [0 x i64] }*
  %_3525 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3520, i32 0, i32 1, i32 2
  store i64 1, i64* %_3525
  %_3523 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3520, i32 0, i32 1, i32 1
  store i64 0, i64* %_3523
  %_3521 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3520, i32 0, i32 1, i32 0
  store i64 2, i64* %_3521
  %_raw_array3511 = call i64* @oat_alloc_array(i64 3)
  %_array3512 = bitcast i64* %_raw_array3511 to { i64, [0 x i64] }*
  %_3517 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3512, i32 0, i32 1, i32 2
  store i64 4, i64* %_3517
  %_3515 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3512, i32 0, i32 1, i32 1
  store i64 3, i64* %_3515
  %_3513 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3512, i32 0, i32 1, i32 0
  store i64 1, i64* %_3513
  %_raw_array3509 = call i64* @oat_alloc_array(i64 2)
  %_array3510 = bitcast i64* %_raw_array3509 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_3529 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3510, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3520, { i64, [0 x i64] }** %_3529
  %_3527 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3510, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3512, { i64, [0 x i64] }** %_3527
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3510, { i64, [0 x { i64, [0 x i64] }*] }** %_3508
  %_raw_array3554 = call i64* @oat_alloc_array(i64 4)
  %_array3555 = bitcast i64* %_raw_array3554 to { i64, [0 x i64] }*
  %_3562 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3555, i32 0, i32 1, i32 3
  store i64 4, i64* %_3562
  %_3560 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3555, i32 0, i32 1, i32 2
  store i64 1, i64* %_3560
  %_3558 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3555, i32 0, i32 1, i32 1
  store i64 2, i64* %_3558
  %_3556 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3555, i32 0, i32 1, i32 0
  store i64 3, i64* %_3556
  %_raw_array3544 = call i64* @oat_alloc_array(i64 4)
  %_array3545 = bitcast i64* %_raw_array3544 to { i64, [0 x i64] }*
  %_3552 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3545, i32 0, i32 1, i32 3
  store i64 2, i64* %_3552
  %_3550 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3545, i32 0, i32 1, i32 2
  store i64 2, i64* %_3550
  %_3548 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3545, i32 0, i32 1, i32 1
  store i64 2, i64* %_3548
  %_3546 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3545, i32 0, i32 1, i32 0
  store i64 2, i64* %_3546
  %_raw_array3534 = call i64* @oat_alloc_array(i64 4)
  %_array3535 = bitcast i64* %_raw_array3534 to { i64, [0 x i64] }*
  %_3542 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3535, i32 0, i32 1, i32 3
  store i64 1, i64* %_3542
  %_3540 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3535, i32 0, i32 1, i32 2
  store i64 3, i64* %_3540
  %_3538 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3535, i32 0, i32 1, i32 1
  store i64 2, i64* %_3538
  %_3536 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3535, i32 0, i32 1, i32 0
  store i64 1, i64* %_3536
  %_raw_array3532 = call i64* @oat_alloc_array(i64 3)
  %_array3533 = bitcast i64* %_raw_array3532 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_3568 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3533, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3555, { i64, [0 x i64] }** %_3568
  %_3566 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3533, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3545, { i64, [0 x i64] }** %_3566
  %_3564 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3533, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3535, { i64, [0 x i64] }** %_3564
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3533, { i64, [0 x { i64, [0 x i64] }*] }** %_3531
  %_raw_array3583 = call i64* @oat_alloc_array(i64 4)
  %_array3584 = bitcast i64* %_raw_array3583 to { i64, [0 x i64] }*
  %_3591 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3584, i32 0, i32 1, i32 3
  store i64 0, i64* %_3591
  %_3589 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3584, i32 0, i32 1, i32 2
  store i64 0, i64* %_3589
  %_3587 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3584, i32 0, i32 1, i32 1
  store i64 0, i64* %_3587
  %_3585 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3584, i32 0, i32 1, i32 0
  store i64 0, i64* %_3585
  %_raw_array3573 = call i64* @oat_alloc_array(i64 4)
  %_array3574 = bitcast i64* %_raw_array3573 to { i64, [0 x i64] }*
  %_3581 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3574, i32 0, i32 1, i32 3
  store i64 0, i64* %_3581
  %_3579 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3574, i32 0, i32 1, i32 2
  store i64 0, i64* %_3579
  %_3577 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3574, i32 0, i32 1, i32 1
  store i64 0, i64* %_3577
  %_3575 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3574, i32 0, i32 1, i32 0
  store i64 0, i64* %_3575
  %_raw_array3571 = call i64* @oat_alloc_array(i64 2)
  %_array3572 = bitcast i64* %_raw_array3571 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_3595 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3572, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3584, { i64, [0 x i64] }** %_3595
  %_3593 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3572, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3574, { i64, [0 x i64] }** %_3593
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3572, { i64, [0 x { i64, [0 x i64] }*] }** %_3570
  %_id_a3597 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3508
  %_id_b3598 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3531
  %_id_c3599 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3570
  call void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_id_a3597, { i64, [0 x { i64, [0 x i64] }*] }* %_id_b3598, { i64, [0 x { i64, [0 x i64] }*] }* %_id_c3599)
  %_id_c3601 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3570
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_id_c3601, i64 2)
  %_id_a3603 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3508
  %_id_b3604 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3531
  %_id_c3605 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3570
  call void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_id_a3603, { i64, [0 x { i64, [0 x i64] }*] }* %_id_b3604, { i64, [0 x { i64, [0 x i64] }*] }* %_id_c3605)
  %_id_c3607 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3570
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_id_c3607, i64 2)
  ret i64 0
}

define void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_a13450 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23451 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a33452 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3453 = alloca i64
  %_3456 = alloca i64
  %_3459 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a13450
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a23451
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_a33452
  store i64 0, i64* %_3453
  br label %_cond3504
_cond3504:
  %_id_i3454 = load i64, i64* %_3453
  %_bop3455 = icmp slt i64 %_id_i3454, 2
  br i1 %_bop3455, label %_if3503, label %_merge3505
_if3503:
  store i64 0, i64* %_3456
  br label %_cond3499
_cond3499:
  %_id_j3457 = load i64, i64* %_3456
  %_bop3458 = icmp slt i64 %_id_j3457, 4
  br i1 %_bop3458, label %_if3498, label %_merge3500
_if3498:
  store i64 0, i64* %_3459
  br label %_cond3494
_cond3494:
  %_id_k3460 = load i64, i64* %_3459
  %_bop3461 = icmp slt i64 %_id_k3460, 3
  br i1 %_bop3461, label %_if3493, label %_merge3495
_if3493:
  %_id_a33462 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33452
  %_id_i3463 = load i64, i64* %_3453
  %_index_pointer3464 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a33462, i32 0, i32 1, i64 %_id_i3463
  %_index_value3465 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3464
  %_id_j3466 = load i64, i64* %_3456
  %_index_pointer3467 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3465, i32 0, i32 1, i64 %_id_j3466
  %_index_value3468 = load i64, i64* %_index_pointer3467
  %_id_a13469 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13450
  %_id_i3470 = load i64, i64* %_3453
  %_index_pointer3471 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a13469, i32 0, i32 1, i64 %_id_i3470
  %_index_value3472 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3471
  %_id_k3473 = load i64, i64* %_3459
  %_index_pointer3474 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3472, i32 0, i32 1, i64 %_id_k3473
  %_index_value3475 = load i64, i64* %_index_pointer3474
  %_id_a23476 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23451
  %_id_k3477 = load i64, i64* %_3459
  %_index_pointer3478 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a23476, i32 0, i32 1, i64 %_id_k3477
  %_index_value3479 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3478
  %_id_j3480 = load i64, i64* %_3456
  %_index_pointer3481 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3479, i32 0, i32 1, i64 %_id_j3480
  %_index_value3482 = load i64, i64* %_index_pointer3481
  %_bop3483 = mul i64 %_index_value3475, %_index_value3482
  %_bop3484 = add i64 %_index_value3468, %_bop3483
  %_id_a33485 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33452
  %_id_i3486 = load i64, i64* %_3453
  %_index_pointer3487 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a33485, i32 0, i32 1, i64 %_id_i3486
  %_index_value3488 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3487
  %_id_j3489 = load i64, i64* %_3456
  %_3490 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3488, i32 0, i32 1, i64 %_id_j3489
  store i64 %_bop3484, i64* %_3490
  %_id_k3491 = load i64, i64* %_3459
  %_bop3492 = add i64 %_id_k3491, 1
  store i64 %_bop3492, i64* %_3459
  br label %_cond3494
_merge3495:
  %_id_j3496 = load i64, i64* %_3456
  %_bop3497 = add i64 %_id_j3496, 1
  store i64 %_bop3497, i64* %_3456
  br label %_cond3499
_merge3500:
  %_id_i3501 = load i64, i64* %_3453
  %_bop3502 = add i64 %_id_i3501, 1
  store i64 %_bop3502, i64* %_3453
  br label %_cond3504
_merge3505:
  ret void
}

define void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_a13420 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23421 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a33422 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3423 = alloca i64
  %_3426 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a13420
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a23421
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_a33422
  store i64 0, i64* %_3423
  br label %_cond3448
_cond3448:
  %_id_i3424 = load i64, i64* %_3423
  %_bop3425 = icmp slt i64 %_id_i3424, 2
  br i1 %_bop3425, label %_if3447, label %_merge3449
_if3447:
  store i64 0, i64* %_3426
  br label %_cond3443
_cond3443:
  %_id_j3427 = load i64, i64* %_3426
  %_bop3428 = icmp slt i64 %_id_j3427, 4
  br i1 %_bop3428, label %_if3442, label %_merge3444
_if3442:
  %_id_a13429 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13420
  %_id_a23430 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23421
  %_id_i3431 = load i64, i64* %_3423
  %_id_j3432 = load i64, i64* %_3426
  %_3433 = call i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_id_a13429, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a23430, i64 %_id_i3431, i64 %_id_j3432)
  %_id_a33434 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33422
  %_id_i3435 = load i64, i64* %_3423
  %_index_pointer3436 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a33434, i32 0, i32 1, i64 %_id_i3435
  %_index_value3437 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3436
  %_id_j3438 = load i64, i64* %_3426
  %_3439 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3437, i32 0, i32 1, i64 %_id_j3438
  store i64 %_3433, i64* %_3439
  %_id_j3440 = load i64, i64* %_3426
  %_bop3441 = add i64 %_id_j3440, 1
  store i64 %_bop3441, i64* %_3426
  br label %_cond3443
_merge3444:
  %_id_i3445 = load i64, i64* %_3423
  %_bop3446 = add i64 %_id_i3445, 1
  store i64 %_bop3446, i64* %_3423
  br label %_cond3448
_merge3449:
  ret void
}

define i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, i64 %row, i64 %col) {
  %_a13389 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23390 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_row3391 = alloca i64
  %_col3392 = alloca i64
  %_3393 = alloca i64
  %_3394 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a13389
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a23390
  store i64 %row, i64* %_row3391
  store i64 %col, i64* %_col3392
  store i64 0, i64* %_3393
  store i64 0, i64* %_3394
  br label %_cond3417
_cond3417:
  %_id_k3395 = load i64, i64* %_3394
  %_bop3396 = icmp slt i64 %_id_k3395, 3
  br i1 %_bop3396, label %_if3416, label %_merge3418
_if3416:
  %_id_sum3397 = load i64, i64* %_3393
  %_id_a13398 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13389
  %_id_row3399 = load i64, i64* %_row3391
  %_index_pointer3400 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a13398, i32 0, i32 1, i64 %_id_row3399
  %_index_value3401 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3400
  %_id_k3402 = load i64, i64* %_3394
  %_index_pointer3403 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3401, i32 0, i32 1, i64 %_id_k3402
  %_index_value3404 = load i64, i64* %_index_pointer3403
  %_id_a23405 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23390
  %_id_k3406 = load i64, i64* %_3394
  %_index_pointer3407 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a23405, i32 0, i32 1, i64 %_id_k3406
  %_index_value3408 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3407
  %_id_col3409 = load i64, i64* %_col3392
  %_index_pointer3410 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3408, i32 0, i32 1, i64 %_id_col3409
  %_index_value3411 = load i64, i64* %_index_pointer3410
  %_bop3412 = mul i64 %_index_value3404, %_index_value3411
  %_bop3413 = add i64 %_id_sum3397, %_bop3412
  store i64 %_bop3413, i64* %_3393
  %_id_k3414 = load i64, i64* %_3394
  %_bop3415 = add i64 %_id_k3414, 1
  store i64 %_bop3415, i64* %_3394
  br label %_cond3417
_merge3418:
  %_id_sum3419 = load i64, i64* %_3393
  ret i64 %_id_sum3419
}

define void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %ar, i64 %n) {
  %_ar3356 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_n3357 = alloca i64
  %_3358 = alloca i64
  %_3362 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %ar, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3356
  store i64 %n, i64* %_n3357
  store i64 0, i64* %_3358
  br label %_cond3387
_cond3387:
  %_id_i3359 = load i64, i64* %_3358
  %_id_n3360 = load i64, i64* %_n3357
  %_bop3361 = icmp slt i64 %_id_i3359, %_id_n3360
  br i1 %_bop3361, label %_if3386, label %_merge3388
_if3386:
  store i64 0, i64* %_3362
  br label %_cond3379
_cond3379:
  %_id_j3363 = load i64, i64* %_3362
  %_bop3364 = icmp slt i64 %_id_j3363, 4
  br i1 %_bop3364, label %_if3378, label %_merge3380
_if3378:
  %_id_ar3365 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3356
  %_id_i3366 = load i64, i64* %_3358
  %_index_pointer3367 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_ar3365, i32 0, i32 1, i64 %_id_i3366
  %_index_value3368 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3367
  %_id_j3369 = load i64, i64* %_3362
  %_index_pointer3370 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3368, i32 0, i32 1, i64 %_id_j3369
  %_index_value3371 = load i64, i64* %_index_pointer3370
  call void @print_int(i64 %_index_value3371)
  %_string13374 = getelementptr [2 x i8], [2 x i8]* @_string3373, i32 0, i32 0
  call void @print_string(i8* %_string13374)
  %_id_j3376 = load i64, i64* %_3362
  %_bop3377 = add i64 %_id_j3376, 1
  store i64 %_bop3377, i64* %_3362
  br label %_cond3379
_merge3380:
  %_string13382 = getelementptr [2 x i8], [2 x i8]* @_string3381, i32 0, i32 0
  call void @print_string(i8* %_string13382)
  %_id_i3384 = load i64, i64* %_3358
  %_bop3385 = add i64 %_id_i3384, 1
  store i64 %_bop3385, i64* %_3358
  br label %_cond3387
_merge3388:
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
