; generated from: hw4programs/count_sort.oat
target triple = "x86_64-apple-macosx10.13.0"
@_raw_string3750 = global [2 x i8] c"
\00"

define i64 @min({ i64, [0 x i64] }* %arr, i64 %len) {
  %_arr3878 = alloca { i64, [0 x i64] }*
  %_len3879 = alloca i64
  %_3880 = alloca i64
  %_3884 = alloca i64
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr3878
  store i64 %len, i64* %_len3879
  %_id_arr3881 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3878
  %_index_pointer3882 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr3881, i32 0, i32 1, i32 0
  %_index_value3883 = load i64, i64* %_index_pointer3882
  store i64 %_index_value3883, i64* %_3880
  store i64 0, i64* %_3884
  br label %_start3904
_start3904:
  %_id_len3886 = load i64, i64* %_len3879
  %_id_i3885 = load i64, i64* %_3884
  %_3887 = icmp slt i64 %_id_i3885, %_id_len3886
  br i1 %_3887, label %_body3905, label %_else3906
_body3905:
  br label %_start3898
_start3898:
  %_id_min3892 = load i64, i64* %_3880
  %_id_arr3888 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3878
  %_id_i3889 = load i64, i64* %_3884
  %_index_pointer3890 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr3888, i32 0, i32 1, i64 %_id_i3889
  %_index_value3891 = load i64, i64* %_index_pointer3890
  %_3893 = icmp slt i64 %_index_value3891, %_id_min3892
  br i1 %_3893, label %_then3899, label %_else3900
_then3899:
  %_id_arr3894 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3878
  %_id_i3895 = load i64, i64* %_3884
  %_index_pointer3896 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr3894, i32 0, i32 1, i64 %_id_i3895
  %_index_value3897 = load i64, i64* %_index_pointer3896
  store i64 %_index_value3897, i64* %_3880
  br label %_post3901
_else3900:
  br label %_post3901
_post3901:
  %_id_i3902 = load i64, i64* %_3884
  %_3903 = add i64 %_id_i3902, 1
  store i64 %_3903, i64* %_3884
  br label %_start3904
_else3906:
  %_id_min3907 = load i64, i64* %_3880
  ret i64 %_id_min3907
}

define i64 @max({ i64, [0 x i64] }* %arr, i64 %len) {
  %_arr3848 = alloca { i64, [0 x i64] }*
  %_len3849 = alloca i64
  %_3850 = alloca i64
  %_3854 = alloca i64
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr3848
  store i64 %len, i64* %_len3849
  %_id_arr3851 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3848
  %_index_pointer3852 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr3851, i32 0, i32 1, i32 0
  %_index_value3853 = load i64, i64* %_index_pointer3852
  store i64 %_index_value3853, i64* %_3850
  store i64 0, i64* %_3854
  br label %_start3874
_start3874:
  %_id_len3856 = load i64, i64* %_len3849
  %_id_i3855 = load i64, i64* %_3854
  %_3857 = icmp slt i64 %_id_i3855, %_id_len3856
  br i1 %_3857, label %_body3875, label %_else3876
_body3875:
  br label %_start3868
_start3868:
  %_id_max3862 = load i64, i64* %_3850
  %_id_arr3858 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3848
  %_id_i3859 = load i64, i64* %_3854
  %_index_pointer3860 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr3858, i32 0, i32 1, i64 %_id_i3859
  %_index_value3861 = load i64, i64* %_index_pointer3860
  %_3863 = icmp sgt i64 %_index_value3861, %_id_max3862
  br i1 %_3863, label %_then3869, label %_else3870
_then3869:
  %_id_arr3864 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3848
  %_id_i3865 = load i64, i64* %_3854
  %_index_pointer3866 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr3864, i32 0, i32 1, i64 %_id_i3865
  %_index_value3867 = load i64, i64* %_index_pointer3866
  store i64 %_index_value3867, i64* %_3850
  br label %_post3871
_else3870:
  br label %_post3871
_post3871:
  %_id_i3872 = load i64, i64* %_3854
  %_3873 = add i64 %_id_i3872, 1
  store i64 %_3873, i64* %_3854
  br label %_start3874
_else3876:
  %_id_max3877 = load i64, i64* %_3850
  ret i64 %_id_max3877
}

define { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %arr, i64 %len) {
  %_arr3759 = alloca { i64, [0 x i64] }*
  %_len3760 = alloca i64
  %_3761 = alloca i64
  %_3765 = alloca i64
  %_3769 = alloca { i64, [0 x i64] }*
  %_3776 = alloca i64
  %_3803 = alloca i64
  %_3805 = alloca i64
  %_3806 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr3759
  store i64 %len, i64* %_len3760
  %_id_arr3762 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3759
  %_id_len3763 = load i64, i64* %_len3760
  %_3764 = call i64 @min({ i64, [0 x i64] }* %_id_arr3762, i64 %_id_len3763)
  store i64 %_3764, i64* %_3761
  %_id_arr3766 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3759
  %_id_len3767 = load i64, i64* %_len3760
  %_3768 = call i64 @max({ i64, [0 x i64] }* %_id_arr3766, i64 %_id_len3767)
  store i64 %_3768, i64* %_3765
  %_id_min3771 = load i64, i64* %_3761
  %_id_max3770 = load i64, i64* %_3765
  %_3772 = sub i64 %_id_max3770, %_id_min3771
  %_3773 = add i64 %_3772, 1
  %_raw_array3774 = call i64* @oat_alloc_array(i64 %_3773)
  %_array3775 = bitcast i64* %_raw_array3774 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3775, { i64, [0 x i64] }** %_3769
  store i64 0, i64* %_3776
  br label %_start3800
_start3800:
  %_id_len3778 = load i64, i64* %_len3760
  %_id_i3777 = load i64, i64* %_3776
  %_3779 = icmp slt i64 %_id_i3777, %_id_len3778
  br i1 %_3779, label %_body3801, label %_else3802
_body3801:
  %_id_counts3780 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3769
  %_id_min3785 = load i64, i64* %_3761
  %_id_arr3781 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3759
  %_id_i3782 = load i64, i64* %_3776
  %_index_pointer3783 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr3781, i32 0, i32 1, i64 %_id_i3782
  %_index_value3784 = load i64, i64* %_index_pointer3783
  %_3786 = sub i64 %_index_value3784, %_id_min3785
  %_index_pointer3787 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_counts3780, i32 0, i32 1, i64 %_3786
  %_index_value3788 = load i64, i64* %_index_pointer3787
  %_3789 = add i64 %_index_value3788, 1
  %_id_counts3790 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3769
  %_id_min3795 = load i64, i64* %_3761
  %_id_arr3791 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3759
  %_id_i3792 = load i64, i64* %_3776
  %_index_pointer3793 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr3791, i32 0, i32 1, i64 %_id_i3792
  %_index_value3794 = load i64, i64* %_index_pointer3793
  %_3796 = sub i64 %_index_value3794, %_id_min3795
  %_3797 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_counts3790, i32 0, i32 1, i64 %_3796
  store i64 %_3789, i64* %_3797
  %_id_i3798 = load i64, i64* %_3776
  %_3799 = add i64 %_id_i3798, 1
  store i64 %_3799, i64* %_3776
  br label %_start3800
_else3802:
  %_id_min3804 = load i64, i64* %_3761
  store i64 %_id_min3804, i64* %_3803
  store i64 0, i64* %_3805
  %_id_len3807 = load i64, i64* %_len3760
  %_raw_array3808 = call i64* @oat_alloc_array(i64 %_id_len3807)
  %_array3809 = bitcast i64* %_raw_array3808 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3809, { i64, [0 x i64] }** %_3806
  br label %_start3844
_start3844:
  %_id_max3811 = load i64, i64* %_3765
  %_id_i3810 = load i64, i64* %_3803
  %_3812 = icmp sle i64 %_id_i3810, %_id_max3811
  br i1 %_3812, label %_body3845, label %_else3846
_body3845:
  br label %_start3840
_start3840:
  %_id_counts3813 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3769
  %_id_min3815 = load i64, i64* %_3761
  %_id_i3814 = load i64, i64* %_3803
  %_3816 = sub i64 %_id_i3814, %_id_min3815
  %_index_pointer3817 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_counts3813, i32 0, i32 1, i64 %_3816
  %_index_value3818 = load i64, i64* %_index_pointer3817
  %_3819 = icmp sgt i64 %_index_value3818, 0
  br i1 %_3819, label %_then3841, label %_else3842
_then3841:
  %_id_i3820 = load i64, i64* %_3803
  %_id_out3821 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3806
  %_id_j3822 = load i64, i64* %_3805
  %_3823 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_out3821, i32 0, i32 1, i64 %_id_j3822
  store i64 %_id_i3820, i64* %_3823
  %_id_counts3824 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3769
  %_id_min3826 = load i64, i64* %_3761
  %_id_i3825 = load i64, i64* %_3803
  %_3827 = sub i64 %_id_i3825, %_id_min3826
  %_index_pointer3828 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_counts3824, i32 0, i32 1, i64 %_3827
  %_index_value3829 = load i64, i64* %_index_pointer3828
  %_3830 = sub i64 %_index_value3829, 1
  %_id_counts3831 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3769
  %_id_min3833 = load i64, i64* %_3761
  %_id_i3832 = load i64, i64* %_3803
  %_3834 = sub i64 %_id_i3832, %_id_min3833
  %_3835 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_counts3831, i32 0, i32 1, i64 %_3834
  store i64 %_3830, i64* %_3835
  %_id_j3836 = load i64, i64* %_3805
  %_3837 = add i64 %_id_j3836, 1
  store i64 %_3837, i64* %_3805
  br label %_post3843
_else3842:
  %_id_i3838 = load i64, i64* %_3803
  %_3839 = add i64 %_id_i3838, 1
  store i64 %_3839, i64* %_3803
  br label %_post3843
_post3843:
  br label %_start3844
_else3846:
  %_id_out3847 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3806
  ret { i64, [0 x i64] }* %_id_out3847
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3722 = alloca i64
  %_argv3723 = alloca { i64, [0 x i8*] }*
  %_3724 = alloca { i64, [0 x i64] }*
  %_3745 = alloca i64
  %_3752 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc3722
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3723
  %_raw_array3725 = call i64* @oat_alloc_array(i64 9)
  %_array3726 = bitcast i64* %_raw_array3725 to { i64, [0 x i64] }*
  %_3743 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3726, i32 0, i32 1, i32 8
  store i64 67, i64* %_3743
  %_3741 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3726, i32 0, i32 1, i32 7
  store i64 89, i64* %_3741
  %_3739 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3726, i32 0, i32 1, i32 6
  store i64 69, i64* %_3739
  %_3737 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3726, i32 0, i32 1, i32 5
  store i64 65, i64* %_3737
  %_3735 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3726, i32 0, i32 1, i32 4
  store i64 65, i64* %_3735
  %_3733 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3726, i32 0, i32 1, i32 3
  store i64 90, i64* %_3733
  %_3731 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3726, i32 0, i32 1, i32 2
  store i64 72, i64* %_3731
  %_3729 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3726, i32 0, i32 1, i32 1
  store i64 70, i64* %_3729
  %_3727 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3726, i32 0, i32 1, i32 0
  store i64 65, i64* %_3727
  store { i64, [0 x i64] }* %_array3726, { i64, [0 x i64] }** %_3724
  store i64 9, i64* %_3745
  %_id_arr3746 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3724
  %_3747 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_arr3746)
  call void @print_string(i8* %_3747)
  %_result_id3749 = bitcast [2 x i8]* @_raw_string3750 to i8*
  call void @print_string(i8* %_result_id3749)
  %_id_arr3753 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3724
  %_id_len3754 = load i64, i64* %_3745
  %_3755 = call { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_id_arr3753, i64 %_id_len3754)
  store { i64, [0 x i64] }* %_3755, { i64, [0 x i64] }** %_3752
  %_id_sorted3756 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3752
  %_3757 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_sorted3756)
  call void @print_string(i8* %_3757)
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
