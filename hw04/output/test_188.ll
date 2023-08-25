; generated from: hw4programs/xor_shift.oat
target triple = "x86_64-apple-macosx10.13.0"
@_raw_string3595 = global [2 x i8] c"
\00"

define i64 @xor(i64 %x, i64 %y) {
  %_x3632 = alloca i64
  %_y3633 = alloca i64
  store i64 %x, i64* %_x3632
  store i64 %y, i64* %_y3633
  %_id_y3640 = load i64, i64* %_y3633
  %_id_x3639 = load i64, i64* %_x3632
  %_3641 = or i64 %_id_x3639, %_id_y3640
  %_id_y3635 = load i64, i64* %_y3633
  %_id_x3634 = load i64, i64* %_x3632
  %_3636 = and i64 %_id_x3634, %_id_y3635
  %_3637 = mul i64 %_3636, -1
  %_3638 = add i64 %_3637, -1
  %_3642 = and i64 %_3638, %_3641
  ret i64 %_3642
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %s) {
  %_s3600 = alloca { i64, [0 x i64] }*
  %_3601 = alloca i64
  %_3605 = alloca i64
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_s3600
  %_id_s3602 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3600
  %_index_pointer3603 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_s3602, i32 0, i32 1, i32 0
  %_index_value3604 = load i64, i64* %_index_pointer3603
  store i64 %_index_value3604, i64* %_3601
  %_id_s3606 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3600
  %_index_pointer3607 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_s3606, i32 0, i32 1, i32 1
  %_index_value3608 = load i64, i64* %_index_pointer3607
  store i64 %_index_value3608, i64* %_3605
  %_id_y3609 = load i64, i64* %_3605
  %_id_s3610 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3600
  %_3611 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_s3610, i32 0, i32 1, i32 0
  store i64 %_id_y3609, i64* %_3611
  %_id_x3612 = load i64, i64* %_3601
  %_id_x3613 = load i64, i64* %_3601
  %_3614 = shl i64 %_id_x3613, 23
  %_3615 = call i64 @xor(i64 %_id_x3612, i64 %_3614)
  store i64 %_3615, i64* %_3601
  %_id_x3616 = load i64, i64* %_3601
  %_id_x3617 = load i64, i64* %_3601
  %_3618 = lshr i64 %_id_x3617, 17
  %_3619 = call i64 @xor(i64 %_id_x3616, i64 %_3618)
  store i64 %_3619, i64* %_3601
  %_id_x3620 = load i64, i64* %_3601
  %_id_y3621 = load i64, i64* %_3605
  %_id_y3622 = load i64, i64* %_3605
  %_3623 = lshr i64 %_id_y3622, 26
  %_3624 = call i64 @xor(i64 %_id_y3621, i64 %_3623)
  %_3625 = call i64 @xor(i64 %_id_x3620, i64 %_3624)
  store i64 %_3625, i64* %_3601
  %_id_x3626 = load i64, i64* %_3601
  %_id_s3627 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3600
  %_3628 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_s3627, i32 0, i32 1, i32 1
  store i64 %_id_x3626, i64* %_3628
  %_id_y3630 = load i64, i64* %_3605
  %_id_x3629 = load i64, i64* %_3601
  %_3631 = add i64 %_id_x3629, %_id_y3630
  ret i64 %_3631
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3572 = alloca i64
  %_argv3573 = alloca { i64, [0 x i8*] }*
  %_3574 = alloca { i64, [0 x i64] }*
  %_3577 = alloca i64
  store i64 %argc, i64* %_argc3572
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3573
  %_raw_array3575 = call i64* @oat_alloc_array(i64 2)
  %_array3576 = bitcast i64* %_raw_array3575 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3576, { i64, [0 x i64] }** %_3574
  store i64 0, i64* %_3577
  br label %_start3588
_start3588:
  %_id_i3578 = load i64, i64* %_3577
  %_3579 = icmp slt i64 %_id_i3578, 2
  br i1 %_3579, label %_body3589, label %_else3590
_body3589:
  %_id_i3580 = load i64, i64* %_3577
  %_3581 = add i64 %_id_i3580, 1
  %_3582 = mul i64 100, %_3581
  %_id_seed3583 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3574
  %_id_i3584 = load i64, i64* %_3577
  %_3585 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_seed3583, i32 0, i32 1, i64 %_id_i3584
  store i64 %_3582, i64* %_3585
  %_id_i3586 = load i64, i64* %_3577
  %_3587 = add i64 %_id_i3586, 1
  store i64 %_3587, i64* %_3577
  br label %_start3588
_else3590:
  %_id_seed3591 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3574
  %_3592 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_id_seed3591)
  call void @print_int(i64 %_3592)
  %_result_id3594 = bitcast [2 x i8]* @_raw_string3595 to i8*
  call void @print_string(i8* %_result_id3594)
  %_id_seed3597 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3574
  %_3598 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_id_seed3597)
  call void @print_int(i64 %_3598)
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
