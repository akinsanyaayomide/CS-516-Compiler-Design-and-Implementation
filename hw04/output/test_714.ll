; generated from: hw4programs/matrixmult.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string3377 = global [2 x i8] c" \00"
@_string3385 = global [2 x i8] c"	\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3510 = alloca i64
  %_argv3511 = alloca { i64, [0 x i8*] }*
  %_3512 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3535 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3574 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc3510
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3511
  %_raw_array3523 = call i64* @oat_alloc_array(i64 3)
  %_array3524 = bitcast i64* %_raw_array3523 to { i64, [0 x i64] }*
  %_3529 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3524, i32 0, i32 1, i32 2
  store i64 1, i64* %_3529
  %_3527 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3524, i32 0, i32 1, i32 1
  store i64 0, i64* %_3527
  %_3525 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3524, i32 0, i32 1, i32 0
  store i64 2, i64* %_3525
  %_raw_array3515 = call i64* @oat_alloc_array(i64 3)
  %_array3516 = bitcast i64* %_raw_array3515 to { i64, [0 x i64] }*
  %_3521 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3516, i32 0, i32 1, i32 2
  store i64 4, i64* %_3521
  %_3519 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3516, i32 0, i32 1, i32 1
  store i64 3, i64* %_3519
  %_3517 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3516, i32 0, i32 1, i32 0
  store i64 1, i64* %_3517
  %_raw_array3513 = call i64* @oat_alloc_array(i64 2)
  %_array3514 = bitcast i64* %_raw_array3513 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_3533 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3514, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3524, { i64, [0 x i64] }** %_3533
  %_3531 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3514, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3516, { i64, [0 x i64] }** %_3531
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3514, { i64, [0 x { i64, [0 x i64] }*] }** %_3512
  %_raw_array3558 = call i64* @oat_alloc_array(i64 4)
  %_array3559 = bitcast i64* %_raw_array3558 to { i64, [0 x i64] }*
  %_3566 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3559, i32 0, i32 1, i32 3
  store i64 4, i64* %_3566
  %_3564 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3559, i32 0, i32 1, i32 2
  store i64 1, i64* %_3564
  %_3562 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3559, i32 0, i32 1, i32 1
  store i64 2, i64* %_3562
  %_3560 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3559, i32 0, i32 1, i32 0
  store i64 3, i64* %_3560
  %_raw_array3548 = call i64* @oat_alloc_array(i64 4)
  %_array3549 = bitcast i64* %_raw_array3548 to { i64, [0 x i64] }*
  %_3556 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3549, i32 0, i32 1, i32 3
  store i64 2, i64* %_3556
  %_3554 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3549, i32 0, i32 1, i32 2
  store i64 2, i64* %_3554
  %_3552 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3549, i32 0, i32 1, i32 1
  store i64 2, i64* %_3552
  %_3550 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3549, i32 0, i32 1, i32 0
  store i64 2, i64* %_3550
  %_raw_array3538 = call i64* @oat_alloc_array(i64 4)
  %_array3539 = bitcast i64* %_raw_array3538 to { i64, [0 x i64] }*
  %_3546 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3539, i32 0, i32 1, i32 3
  store i64 1, i64* %_3546
  %_3544 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3539, i32 0, i32 1, i32 2
  store i64 3, i64* %_3544
  %_3542 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3539, i32 0, i32 1, i32 1
  store i64 2, i64* %_3542
  %_3540 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3539, i32 0, i32 1, i32 0
  store i64 1, i64* %_3540
  %_raw_array3536 = call i64* @oat_alloc_array(i64 3)
  %_array3537 = bitcast i64* %_raw_array3536 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_3572 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3537, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3559, { i64, [0 x i64] }** %_3572
  %_3570 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3537, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3549, { i64, [0 x i64] }** %_3570
  %_3568 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3537, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3539, { i64, [0 x i64] }** %_3568
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3537, { i64, [0 x { i64, [0 x i64] }*] }** %_3535
  %_raw_array3587 = call i64* @oat_alloc_array(i64 4)
  %_array3588 = bitcast i64* %_raw_array3587 to { i64, [0 x i64] }*
  %_3595 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3588, i32 0, i32 1, i32 3
  store i64 0, i64* %_3595
  %_3593 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3588, i32 0, i32 1, i32 2
  store i64 0, i64* %_3593
  %_3591 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3588, i32 0, i32 1, i32 1
  store i64 0, i64* %_3591
  %_3589 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3588, i32 0, i32 1, i32 0
  store i64 0, i64* %_3589
  %_raw_array3577 = call i64* @oat_alloc_array(i64 4)
  %_array3578 = bitcast i64* %_raw_array3577 to { i64, [0 x i64] }*
  %_3585 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3578, i32 0, i32 1, i32 3
  store i64 0, i64* %_3585
  %_3583 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3578, i32 0, i32 1, i32 2
  store i64 0, i64* %_3583
  %_3581 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3578, i32 0, i32 1, i32 1
  store i64 0, i64* %_3581
  %_3579 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3578, i32 0, i32 1, i32 0
  store i64 0, i64* %_3579
  %_raw_array3575 = call i64* @oat_alloc_array(i64 2)
  %_array3576 = bitcast i64* %_raw_array3575 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_3599 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3576, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3588, { i64, [0 x i64] }** %_3599
  %_3597 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3576, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3578, { i64, [0 x i64] }** %_3597
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3576, { i64, [0 x { i64, [0 x i64] }*] }** %_3574
  %_id_a3601 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3512
  %_id_b3602 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3535
  %_id_c3603 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3574
  call void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_id_a3601, { i64, [0 x { i64, [0 x i64] }*] }* %_id_b3602, { i64, [0 x { i64, [0 x i64] }*] }* %_id_c3603)
  %_id_c3605 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3574
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_id_c3605, i64 2)
  %_id_a3607 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3512
  %_id_b3608 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3535
  %_id_c3609 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3574
  call void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_id_a3607, { i64, [0 x { i64, [0 x i64] }*] }* %_id_b3608, { i64, [0 x { i64, [0 x i64] }*] }* %_id_c3609)
  %_id_c3611 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3574
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_id_c3611, i64 2)
  ret i64 0
}

define void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_a13454 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23455 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a33456 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3457 = alloca i64
  %_3460 = alloca i64
  %_3463 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a13454
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a23455
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_a33456
  store i64 0, i64* %_3457
  br label %_start3507
_start3507:
  %_id_i3458 = load i64, i64* %_3457
  %_3459 = icmp slt i64 %_id_i3458, 2
  br i1 %_3459, label %_body3508, label %_else3509
_body3508:
  store i64 0, i64* %_3460
  br label %_start3502
_start3502:
  %_id_j3461 = load i64, i64* %_3460
  %_3462 = icmp slt i64 %_id_j3461, 4
  br i1 %_3462, label %_body3503, label %_else3504
_body3503:
  store i64 0, i64* %_3463
  br label %_start3497
_start3497:
  %_id_k3464 = load i64, i64* %_3463
  %_3465 = icmp slt i64 %_id_k3464, 3
  br i1 %_3465, label %_body3498, label %_else3499
_body3498:
  %_id_a23480 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23455
  %_id_k3481 = load i64, i64* %_3463
  %_index_pointer3482 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a23480, i32 0, i32 1, i64 %_id_k3481
  %_index_value3483 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3482
  %_id_j3484 = load i64, i64* %_3460
  %_index_pointer3485 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3483, i32 0, i32 1, i64 %_id_j3484
  %_index_value3486 = load i64, i64* %_index_pointer3485
  %_id_a13473 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13454
  %_id_i3474 = load i64, i64* %_3457
  %_index_pointer3475 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a13473, i32 0, i32 1, i64 %_id_i3474
  %_index_value3476 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3475
  %_id_k3477 = load i64, i64* %_3463
  %_index_pointer3478 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3476, i32 0, i32 1, i64 %_id_k3477
  %_index_value3479 = load i64, i64* %_index_pointer3478
  %_3487 = mul i64 %_index_value3479, %_index_value3486
  %_id_a33466 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33456
  %_id_i3467 = load i64, i64* %_3457
  %_index_pointer3468 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a33466, i32 0, i32 1, i64 %_id_i3467
  %_index_value3469 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3468
  %_id_j3470 = load i64, i64* %_3460
  %_index_pointer3471 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3469, i32 0, i32 1, i64 %_id_j3470
  %_index_value3472 = load i64, i64* %_index_pointer3471
  %_3488 = add i64 %_index_value3472, %_3487
  %_id_a33489 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33456
  %_id_i3490 = load i64, i64* %_3457
  %_index_pointer3491 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a33489, i32 0, i32 1, i64 %_id_i3490
  %_index_value3492 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3491
  %_id_j3493 = load i64, i64* %_3460
  %_3494 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3492, i32 0, i32 1, i64 %_id_j3493
  store i64 %_3488, i64* %_3494
  %_id_k3495 = load i64, i64* %_3463
  %_3496 = add i64 %_id_k3495, 1
  store i64 %_3496, i64* %_3463
  br label %_start3497
_else3499:
  %_id_j3500 = load i64, i64* %_3460
  %_3501 = add i64 %_id_j3500, 1
  store i64 %_3501, i64* %_3460
  br label %_start3502
_else3504:
  %_id_i3505 = load i64, i64* %_3457
  %_3506 = add i64 %_id_i3505, 1
  store i64 %_3506, i64* %_3457
  br label %_start3507
_else3509:
  ret void
}

define void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_a13424 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23425 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a33426 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3427 = alloca i64
  %_3430 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a13424
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a23425
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_a33426
  store i64 0, i64* %_3427
  br label %_start3451
_start3451:
  %_id_i3428 = load i64, i64* %_3427
  %_3429 = icmp slt i64 %_id_i3428, 2
  br i1 %_3429, label %_body3452, label %_else3453
_body3452:
  store i64 0, i64* %_3430
  br label %_start3446
_start3446:
  %_id_j3431 = load i64, i64* %_3430
  %_3432 = icmp slt i64 %_id_j3431, 4
  br i1 %_3432, label %_body3447, label %_else3448
_body3447:
  %_id_a13433 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13424
  %_id_a23434 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23425
  %_id_i3435 = load i64, i64* %_3427
  %_id_j3436 = load i64, i64* %_3430
  %_3437 = call i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_id_a13433, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a23434, i64 %_id_i3435, i64 %_id_j3436)
  %_id_a33438 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33426
  %_id_i3439 = load i64, i64* %_3427
  %_index_pointer3440 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a33438, i32 0, i32 1, i64 %_id_i3439
  %_index_value3441 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3440
  %_id_j3442 = load i64, i64* %_3430
  %_3443 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3441, i32 0, i32 1, i64 %_id_j3442
  store i64 %_3437, i64* %_3443
  %_id_j3444 = load i64, i64* %_3430
  %_3445 = add i64 %_id_j3444, 1
  store i64 %_3445, i64* %_3430
  br label %_start3446
_else3448:
  %_id_i3449 = load i64, i64* %_3427
  %_3450 = add i64 %_id_i3449, 1
  store i64 %_3450, i64* %_3427
  br label %_start3451
_else3453:
  ret void
}

define i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, i64 %row, i64 %col) {
  %_a13393 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23394 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_row3395 = alloca i64
  %_col3396 = alloca i64
  %_3397 = alloca i64
  %_3398 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a13393
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a23394
  store i64 %row, i64* %_row3395
  store i64 %col, i64* %_col3396
  store i64 0, i64* %_3397
  store i64 0, i64* %_3398
  br label %_start3420
_start3420:
  %_id_k3399 = load i64, i64* %_3398
  %_3400 = icmp slt i64 %_id_k3399, 3
  br i1 %_3400, label %_body3421, label %_else3422
_body3421:
  %_id_a23409 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23394
  %_id_k3410 = load i64, i64* %_3398
  %_index_pointer3411 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a23409, i32 0, i32 1, i64 %_id_k3410
  %_index_value3412 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3411
  %_id_col3413 = load i64, i64* %_col3396
  %_index_pointer3414 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3412, i32 0, i32 1, i64 %_id_col3413
  %_index_value3415 = load i64, i64* %_index_pointer3414
  %_id_a13402 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13393
  %_id_row3403 = load i64, i64* %_row3395
  %_index_pointer3404 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a13402, i32 0, i32 1, i64 %_id_row3403
  %_index_value3405 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3404
  %_id_k3406 = load i64, i64* %_3398
  %_index_pointer3407 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3405, i32 0, i32 1, i64 %_id_k3406
  %_index_value3408 = load i64, i64* %_index_pointer3407
  %_3416 = mul i64 %_index_value3408, %_index_value3415
  %_id_sum3401 = load i64, i64* %_3397
  %_3417 = add i64 %_id_sum3401, %_3416
  store i64 %_3417, i64* %_3397
  %_id_k3418 = load i64, i64* %_3398
  %_3419 = add i64 %_id_k3418, 1
  store i64 %_3419, i64* %_3398
  br label %_start3420
_else3422:
  %_id_sum3423 = load i64, i64* %_3397
  ret i64 %_id_sum3423
}

define void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %ar, i64 %n) {
  %_ar3360 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_n3361 = alloca i64
  %_3362 = alloca i64
  %_3366 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %ar, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3360
  store i64 %n, i64* %_n3361
  store i64 0, i64* %_3362
  br label %_start3390
_start3390:
  %_id_n3364 = load i64, i64* %_n3361
  %_id_i3363 = load i64, i64* %_3362
  %_3365 = icmp slt i64 %_id_i3363, %_id_n3364
  br i1 %_3365, label %_body3391, label %_else3392
_body3391:
  store i64 0, i64* %_3366
  br label %_start3382
_start3382:
  %_id_j3367 = load i64, i64* %_3366
  %_3368 = icmp slt i64 %_id_j3367, 4
  br i1 %_3368, label %_body3383, label %_else3384
_body3383:
  %_id_ar3369 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3360
  %_id_i3370 = load i64, i64* %_3362
  %_index_pointer3371 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_ar3369, i32 0, i32 1, i64 %_id_i3370
  %_index_value3372 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3371
  %_id_j3373 = load i64, i64* %_3366
  %_index_pointer3374 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3372, i32 0, i32 1, i64 %_id_j3373
  %_index_value3375 = load i64, i64* %_index_pointer3374
  call void @print_int(i64 %_index_value3375)
  %_str3378 = getelementptr [2 x i8], [2 x i8]* @_string3377, i32 0, i32 0
  call void @print_string(i8* %_str3378)
  %_id_j3380 = load i64, i64* %_3366
  %_3381 = add i64 %_id_j3380, 1
  store i64 %_3381, i64* %_3366
  br label %_start3382
_else3384:
  %_str3386 = getelementptr [2 x i8], [2 x i8]* @_string3385, i32 0, i32 0
  call void @print_string(i8* %_str3386)
  %_id_i3388 = load i64, i64* %_3362
  %_3389 = add i64 %_id_i3388, 1
  store i64 %_3389, i64* %_3362
  br label %_start3390
_else3392:
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
