; generated from: hw4programs/xor_shift.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string3777 = global [2 x i8] c"
\00"

define i64 @xor(i64 %x, i64 %y) {
  %_x3815 = alloca i64
  %_y3816 = alloca i64
  store i64 %x, i64* %_x3815
  store i64 %y, i64* %_y3816
  %_id_x3817 = load i64, i64* %_x3815
  %_id_y3818 = load i64, i64* %_y3816
  %_bop3819 = and i64 %_id_x3817, %_id_y3818
  %_unop3820 = xor i64 %_bop3819, -1
  %_id_x3821 = load i64, i64* %_x3815
  %_id_y3822 = load i64, i64* %_y3816
  %_bop3823 = or i64 %_id_x3821, %_id_y3822
  %_bop3824 = and i64 %_unop3820, %_bop3823
  ret i64 %_bop3824
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %s) {
  %_s3783 = alloca { i64, [0 x i64] }*
  %_x3787 = alloca i64
  %_y3791 = alloca i64
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_s3783
  %_id_s3784 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3783
  %_index_pointer3786 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_s3784, i32 0, i32 1, i32 0
  %_index_value3785 = load i64, i64* %_index_pointer3786
  store i64 %_index_value3785, i64* %_x3787
  %_id_s3788 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3783
  %_index_pointer3790 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_s3788, i32 0, i32 1, i32 1
  %_index_value3789 = load i64, i64* %_index_pointer3790
  store i64 %_index_value3789, i64* %_y3791
  %_id_y3792 = load i64, i64* %_y3791
  %_id_s3793 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3783
  %_3794 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_s3793, i32 0, i32 1, i32 0
  store i64 %_id_y3792, i64* %_3794
  %_id_x3795 = load i64, i64* %_x3787
  %_id_x3796 = load i64, i64* %_x3787
  %_bop3797 = shl i64 %_id_x3796, 23
  %_3798 = call i64 @xor(i64 %_id_x3795, i64 %_bop3797)
  store i64 %_3798, i64* %_x3787
  %_id_x3799 = load i64, i64* %_x3787
  %_id_x3800 = load i64, i64* %_x3787
  %_bop3801 = lshr i64 %_id_x3800, 17
  %_3802 = call i64 @xor(i64 %_id_x3799, i64 %_bop3801)
  store i64 %_3802, i64* %_x3787
  %_id_x3803 = load i64, i64* %_x3787
  %_id_y3804 = load i64, i64* %_y3791
  %_id_y3805 = load i64, i64* %_y3791
  %_bop3806 = lshr i64 %_id_y3805, 26
  %_3807 = call i64 @xor(i64 %_id_y3804, i64 %_bop3806)
  %_3808 = call i64 @xor(i64 %_id_x3803, i64 %_3807)
  store i64 %_3808, i64* %_x3787
  %_id_x3809 = load i64, i64* %_x3787
  %_id_s3810 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3783
  %_3811 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_s3810, i32 0, i32 1, i32 1
  store i64 %_id_x3809, i64* %_3811
  %_id_x3812 = load i64, i64* %_x3787
  %_id_y3813 = load i64, i64* %_y3791
  %_bop3814 = add i64 %_id_x3812, %_id_y3813
  ret i64 %_bop3814
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3755 = alloca i64
  %_argv3756 = alloca { i64, [0 x i8*] }*
  %_seed3759 = alloca { i64, [0 x i64] }*
  %_i3760 = alloca i64
  store i64 %argc, i64* %_argc3755
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3756
  %_raw_array3757 = call i64* @oat_alloc_array(i64 2)
  %_array3758 = bitcast i64* %_raw_array3757 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3758, { i64, [0 x i64] }** %_seed3759
  store i64 0, i64* %_i3760
  br label %_cond3772
_cond3772:
  %_id_i3761 = load i64, i64* %_i3760
  %_bop3762 = icmp slt i64 %_id_i3761, 2
  br i1 %_bop3762, label %_if3773, label %_merge3771
_if3773:
  %_id_i3763 = load i64, i64* %_i3760
  %_bop3764 = add i64 %_id_i3763, 1
  %_bop3765 = mul i64 100, %_bop3764
  %_id_seed3766 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed3759
  %_id_i3767 = load i64, i64* %_i3760
  %_3768 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_seed3766, i32 0, i32 1, i64 %_id_i3767
  store i64 %_bop3765, i64* %_3768
  %_id_i3769 = load i64, i64* %_i3760
  %_bop3770 = add i64 %_id_i3769, 1
  store i64 %_bop3770, i64* %_i3760
  br label %_cond3772
_merge3771:
  %_id_seed3774 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed3759
  %_3775 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_id_seed3774)
  call void @print_int(i64 %_3775)
  %_string13778 = getelementptr [2 x i8], [2 x i8]* @_string3777, i32 0, i32 0
  call void @print_string(i8* %_string13778)
  %_id_seed3780 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed3759
  %_3781 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_id_seed3780)
  call void @print_int(i64 %_3781)
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
