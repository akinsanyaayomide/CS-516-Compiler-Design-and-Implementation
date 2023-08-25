; generated from: hw4programs/xor_shift.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string3781 = global [2 x i8] c"
\00"

define i64 @xor(i64 %x, i64 %y) {
  %_x3819 = alloca i64
  %_y3820 = alloca i64
  store i64 %x, i64* %_x3819
  store i64 %y, i64* %_y3820
  %_id_y3827 = load i64, i64* %_y3820
  %_id_x3826 = load i64, i64* %_x3819
  %_3828 = or i64 %_id_x3826, %_id_y3827
  %_id_y3822 = load i64, i64* %_y3820
  %_id_x3821 = load i64, i64* %_x3819
  %_3823 = and i64 %_id_x3821, %_id_y3822
  %_3824 = mul i64 %_3823, -1
  %_3825 = add i64 %_3824, -1
  %_3829 = and i64 %_3825, %_3828
  ret i64 %_3829
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %s) {
  %_s3787 = alloca { i64, [0 x i64] }*
  %_3788 = alloca i64
  %_3792 = alloca i64
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_s3787
  %_id_s3789 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3787
  %_index_pointer3790 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_s3789, i32 0, i32 1, i32 0
  %_index_value3791 = load i64, i64* %_index_pointer3790
  store i64 %_index_value3791, i64* %_3788
  %_id_s3793 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3787
  %_index_pointer3794 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_s3793, i32 0, i32 1, i32 1
  %_index_value3795 = load i64, i64* %_index_pointer3794
  store i64 %_index_value3795, i64* %_3792
  %_id_y3796 = load i64, i64* %_3792
  %_id_s3797 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3787
  %_3798 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_s3797, i32 0, i32 1, i32 0
  store i64 %_id_y3796, i64* %_3798
  %_id_x3799 = load i64, i64* %_3788
  %_id_x3800 = load i64, i64* %_3788
  %_3801 = shl i64 %_id_x3800, 23
  %_3802 = call i64 @xor(i64 %_id_x3799, i64 %_3801)
  store i64 %_3802, i64* %_3788
  %_id_x3803 = load i64, i64* %_3788
  %_id_x3804 = load i64, i64* %_3788
  %_3805 = lshr i64 %_id_x3804, 17
  %_3806 = call i64 @xor(i64 %_id_x3803, i64 %_3805)
  store i64 %_3806, i64* %_3788
  %_id_x3807 = load i64, i64* %_3788
  %_id_y3808 = load i64, i64* %_3792
  %_id_y3809 = load i64, i64* %_3792
  %_3810 = lshr i64 %_id_y3809, 26
  %_3811 = call i64 @xor(i64 %_id_y3808, i64 %_3810)
  %_3812 = call i64 @xor(i64 %_id_x3807, i64 %_3811)
  store i64 %_3812, i64* %_3788
  %_id_x3813 = load i64, i64* %_3788
  %_id_s3814 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3787
  %_3815 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_s3814, i32 0, i32 1, i32 1
  store i64 %_id_x3813, i64* %_3815
  %_id_y3817 = load i64, i64* %_3792
  %_id_x3816 = load i64, i64* %_3788
  %_3818 = add i64 %_id_x3816, %_id_y3817
  ret i64 %_3818
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3759 = alloca i64
  %_argv3760 = alloca { i64, [0 x i8*] }*
  %_3761 = alloca { i64, [0 x i64] }*
  %_3764 = alloca i64
  store i64 %argc, i64* %_argc3759
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3760
  %_raw_array3762 = call i64* @oat_alloc_array(i64 2)
  %_array3763 = bitcast i64* %_raw_array3762 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3763, { i64, [0 x i64] }** %_3761
  store i64 0, i64* %_3764
  br label %_start3775
_start3775:
  %_id_i3765 = load i64, i64* %_3764
  %_3766 = icmp slt i64 %_id_i3765, 2
  br i1 %_3766, label %_body3776, label %_else3777
_body3776:
  %_id_i3767 = load i64, i64* %_3764
  %_3768 = add i64 %_id_i3767, 1
  %_3769 = mul i64 100, %_3768
  %_id_seed3770 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3761
  %_id_i3771 = load i64, i64* %_3764
  %_3772 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_seed3770, i32 0, i32 1, i64 %_id_i3771
  store i64 %_3769, i64* %_3772
  %_id_i3773 = load i64, i64* %_3764
  %_3774 = add i64 %_id_i3773, 1
  store i64 %_3774, i64* %_3764
  br label %_start3775
_else3777:
  %_id_seed3778 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3761
  %_3779 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_id_seed3778)
  call void @print_int(i64 %_3779)
  %_string13782 = getelementptr [2 x i8], [2 x i8]* @_string3781, i32 0, i32 0
  call void @print_string(i8* %_string13782)
  %_id_seed3784 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3761
  %_3785 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_id_seed3784)
  call void @print_int(i64 %_3785)
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
