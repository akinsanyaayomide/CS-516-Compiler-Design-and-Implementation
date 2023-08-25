; generated from: hw4programs/maxsubsequence.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @maxsum({ i64, [0 x i64] }* %arr, i64 %size) {
  %_arr3512 = alloca { i64, [0 x i64] }*
  %_size3513 = alloca i64
  %_3514 = alloca { i64, [0 x i64] }*
  %_3518 = alloca i64
  %_3524 = alloca i64
  %_3528 = alloca i64
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr3512
  store i64 %size, i64* %_size3513
  %_id_size3515 = load i64, i64* %_size3513
  %_raw_array3516 = call i64* @oat_alloc_array(i64 %_id_size3515)
  %_array3517 = bitcast i64* %_raw_array3516 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3517, { i64, [0 x i64] }** %_3514
  store i64 0, i64* %_3518
  %_id_arr3519 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3512
  %_index_pointer3520 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr3519, i32 0, i32 1, i32 0
  %_index_value3521 = load i64, i64* %_index_pointer3520
  %_id_maxarr3522 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3514
  %_3523 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr3522, i32 0, i32 1, i32 0
  store i64 %_index_value3521, i64* %_3523
  store i64 0, i64* %_3524
  br label %_cond3590
_cond3590:
  %_id_size3526 = load i64, i64* %_size3513
  %_id_i3525 = load i64, i64* %_3524
  %_3527 = icmp slt i64 %_id_i3525, %_id_size3526
  br i1 %_3527, label %_if3589, label %_merge3591
_if3589:
  store i64 0, i64* %_3528
  br label %_cond3573
_cond3573:
  %_id_i3530 = load i64, i64* %_3524
  %_id_j3529 = load i64, i64* %_3528
  %_3531 = icmp slt i64 %_id_j3529, %_id_i3530
  br i1 %_3531, label %_if3572, label %_merge3574
_if3572:
  %_id_arr3549 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3512
  %_id_i3550 = load i64, i64* %_3524
  %_index_pointer3551 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr3549, i32 0, i32 1, i64 %_id_i3550
  %_index_value3552 = load i64, i64* %_index_pointer3551
  %_id_maxarr3545 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3514
  %_id_j3546 = load i64, i64* %_3528
  %_index_pointer3547 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr3545, i32 0, i32 1, i64 %_id_j3546
  %_index_value3548 = load i64, i64* %_index_pointer3547
  %_3553 = add i64 %_index_value3548, %_index_value3552
  %_id_maxarr3541 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3514
  %_id_i3542 = load i64, i64* %_3524
  %_index_pointer3543 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr3541, i32 0, i32 1, i64 %_id_i3542
  %_index_value3544 = load i64, i64* %_index_pointer3543
  %_3554 = icmp slt i64 %_index_value3544, %_3553
  %_id_arr3536 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3512
  %_id_j3537 = load i64, i64* %_3528
  %_index_pointer3538 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr3536, i32 0, i32 1, i64 %_id_j3537
  %_index_value3539 = load i64, i64* %_index_pointer3538
  %_id_arr3532 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3512
  %_id_i3533 = load i64, i64* %_3524
  %_index_pointer3534 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr3532, i32 0, i32 1, i64 %_id_i3533
  %_index_value3535 = load i64, i64* %_index_pointer3534
  %_3540 = icmp sgt i64 %_index_value3535, %_index_value3539
  %_3555 = and i1 %_3540, %_3554
  br i1 %_3555, label %_if3568, label %_merge3569
_if3568:
  %_id_arr3560 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3512
  %_id_i3561 = load i64, i64* %_3524
  %_index_pointer3562 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr3560, i32 0, i32 1, i64 %_id_i3561
  %_index_value3563 = load i64, i64* %_index_pointer3562
  %_id_maxarr3556 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3514
  %_id_j3557 = load i64, i64* %_3528
  %_index_pointer3558 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr3556, i32 0, i32 1, i64 %_id_j3557
  %_index_value3559 = load i64, i64* %_index_pointer3558
  %_3564 = add i64 %_index_value3559, %_index_value3563
  %_id_maxarr3565 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3514
  %_id_i3566 = load i64, i64* %_3524
  %_3567 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr3565, i32 0, i32 1, i64 %_id_i3566
  store i64 %_3564, i64* %_3567
  br label %_merge3569
_merge3569:
  %_id_j3570 = load i64, i64* %_3528
  %_3571 = add i64 %_id_j3570, 1
  store i64 %_3571, i64* %_3528
  br label %_cond3573
_merge3574:
  %_id_maxarr3576 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3514
  %_id_i3577 = load i64, i64* %_3524
  %_index_pointer3578 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr3576, i32 0, i32 1, i64 %_id_i3577
  %_index_value3579 = load i64, i64* %_index_pointer3578
  %_id_maxs3575 = load i64, i64* %_3518
  %_3580 = icmp slt i64 %_id_maxs3575, %_index_value3579
  br i1 %_3580, label %_if3585, label %_merge3586
_if3585:
  %_id_maxarr3581 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3514
  %_id_i3582 = load i64, i64* %_3524
  %_index_pointer3583 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr3581, i32 0, i32 1, i64 %_id_i3582
  %_index_value3584 = load i64, i64* %_index_pointer3583
  store i64 %_index_value3584, i64* %_3518
  br label %_merge3586
_merge3586:
  %_id_i3587 = load i64, i64* %_3524
  %_3588 = add i64 %_id_i3587, 1
  store i64 %_3588, i64* %_3524
  br label %_cond3590
_merge3591:
  %_id_maxs3592 = load i64, i64* %_3518
  ret i64 %_id_maxs3592
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3489 = alloca i64
  %_argv3490 = alloca { i64, [0 x i8*] }*
  %_3491 = alloca { i64, [0 x i64] }*
  %_3508 = alloca i64
  store i64 %argc, i64* %_argc3489
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3490
  %_raw_array3492 = call i64* @oat_alloc_array(i64 7)
  %_array3493 = bitcast i64* %_raw_array3492 to { i64, [0 x i64] }*
  %_3506 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3493, i32 0, i32 1, i32 6
  store i64 5, i64* %_3506
  %_3504 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3493, i32 0, i32 1, i32 5
  store i64 4, i64* %_3504
  %_3502 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3493, i32 0, i32 1, i32 4
  store i64 101, i64* %_3502
  %_3500 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3493, i32 0, i32 1, i32 3
  store i64 3, i64* %_3500
  %_3498 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3493, i32 0, i32 1, i32 2
  store i64 2, i64* %_3498
  %_3496 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3493, i32 0, i32 1, i32 1
  store i64 101, i64* %_3496
  %_3494 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3493, i32 0, i32 1, i32 0
  store i64 1, i64* %_3494
  store { i64, [0 x i64] }* %_array3493, { i64, [0 x i64] }** %_3491
  %_id_array3509 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3491
  %_3510 = call i64 @maxsum({ i64, [0 x i64] }* %_id_array3509, i64 7)
  store i64 %_3510, i64* %_3508
  %_id_max_ans3511 = load i64, i64* %_3508
  ret i64 %_id_max_ans3511
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
