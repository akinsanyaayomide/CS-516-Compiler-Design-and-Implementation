; generated from: hw4programs/matrixmult.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string3776 = global [2 x i8] c" \00"
@_string3784 = global [2 x i8] c"	\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3909 = alloca i64
  %_argv3910 = alloca { i64, [0 x i8*] }*
  %_3911 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3942 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3996 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc3909
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3910
  %_raw_array3925 = call i64* @oat_alloc_array(i64 3)
  %_array3926 = bitcast i64* %_raw_array3925 to { i64, [0 x i64] }*
  %_3935 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3926, i32 0, i32 1, i32 2
  store i64 1, i64* %_3933
  %_3932 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3926, i32 0, i32 1, i32 1
  store i64 0, i64* %_3930
  %_3929 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3926, i32 0, i32 1, i32 0
  store i64 2, i64* %_3927
  %_raw_array3914 = call i64* @oat_alloc_array(i64 3)
  %_array3915 = bitcast i64* %_raw_array3914 to { i64, [0 x i64] }*
  %_3924 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3915, i32 0, i32 1, i32 2
  store i64 4, i64* %_3922
  %_3921 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3915, i32 0, i32 1, i32 1
  store i64 3, i64* %_3919
  %_3918 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3915, i32 0, i32 1, i32 0
  store i64 1, i64* %_3916
  %_raw_array3912 = call i64* @oat_alloc_array(i64 2)
  %_array3913 = bitcast i64* %_raw_array3912 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_3941 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3913, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3926, { i64, [0 x i64] }** %_3939
  %_3938 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3913, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3915, { i64, [0 x i64] }** %_3936
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3913, { i64, [0 x { i64, [0 x i64] }*] }** %_3911
  %_raw_array3973 = call i64* @oat_alloc_array(i64 4)
  %_array3974 = bitcast i64* %_raw_array3973 to { i64, [0 x i64] }*
  %_3986 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3974, i32 0, i32 1, i32 3
  store i64 4, i64* %_3984
  %_3983 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3974, i32 0, i32 1, i32 2
  store i64 1, i64* %_3981
  %_3980 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3974, i32 0, i32 1, i32 1
  store i64 2, i64* %_3978
  %_3977 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3974, i32 0, i32 1, i32 0
  store i64 3, i64* %_3975
  %_raw_array3959 = call i64* @oat_alloc_array(i64 4)
  %_array3960 = bitcast i64* %_raw_array3959 to { i64, [0 x i64] }*
  %_3972 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3960, i32 0, i32 1, i32 3
  store i64 2, i64* %_3970
  %_3969 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3960, i32 0, i32 1, i32 2
  store i64 2, i64* %_3967
  %_3966 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3960, i32 0, i32 1, i32 1
  store i64 2, i64* %_3964
  %_3963 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3960, i32 0, i32 1, i32 0
  store i64 2, i64* %_3961
  %_raw_array3945 = call i64* @oat_alloc_array(i64 4)
  %_array3946 = bitcast i64* %_raw_array3945 to { i64, [0 x i64] }*
  %_3958 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3946, i32 0, i32 1, i32 3
  store i64 1, i64* %_3956
  %_3955 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3946, i32 0, i32 1, i32 2
  store i64 3, i64* %_3953
  %_3952 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3946, i32 0, i32 1, i32 1
  store i64 2, i64* %_3950
  %_3949 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3946, i32 0, i32 1, i32 0
  store i64 1, i64* %_3947
  %_raw_array3943 = call i64* @oat_alloc_array(i64 3)
  %_array3944 = bitcast i64* %_raw_array3943 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_3995 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3944, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3974, { i64, [0 x i64] }** %_3993
  %_3992 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3944, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3960, { i64, [0 x i64] }** %_3990
  %_3989 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3944, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3946, { i64, [0 x i64] }** %_3987
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3944, { i64, [0 x { i64, [0 x i64] }*] }** %_3942
  %_raw_array4013 = call i64* @oat_alloc_array(i64 4)
  %_array4014 = bitcast i64* %_raw_array4013 to { i64, [0 x i64] }*
  %_4026 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4014, i32 0, i32 1, i32 3
  store i64 0, i64* %_4024
  %_4023 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4014, i32 0, i32 1, i32 2
  store i64 0, i64* %_4021
  %_4020 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4014, i32 0, i32 1, i32 1
  store i64 0, i64* %_4018
  %_4017 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4014, i32 0, i32 1, i32 0
  store i64 0, i64* %_4015
  %_raw_array3999 = call i64* @oat_alloc_array(i64 4)
  %_array4000 = bitcast i64* %_raw_array3999 to { i64, [0 x i64] }*
  %_4012 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4000, i32 0, i32 1, i32 3
  store i64 0, i64* %_4010
  %_4009 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4000, i32 0, i32 1, i32 2
  store i64 0, i64* %_4007
  %_4006 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4000, i32 0, i32 1, i32 1
  store i64 0, i64* %_4004
  %_4003 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4000, i32 0, i32 1, i32 0
  store i64 0, i64* %_4001
  %_raw_array3997 = call i64* @oat_alloc_array(i64 2)
  %_array3998 = bitcast i64* %_raw_array3997 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_4032 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3998, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4014, { i64, [0 x i64] }** %_4030
  %_4029 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3998, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4000, { i64, [0 x i64] }** %_4027
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3998, { i64, [0 x { i64, [0 x i64] }*] }** %_3996
  %_id_a4033 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3911
  %_id_b4034 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3942
  %_id_c4035 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3996
  call void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_id_a4033, { i64, [0 x { i64, [0 x i64] }*] }* %_id_b4034, { i64, [0 x { i64, [0 x i64] }*] }* %_id_c4035)
  %_id_c4037 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3996
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_id_c4037, i64 2)
  %_id_a4039 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3911
  %_id_b4040 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3942
  %_id_c4041 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3996
  call void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_id_a4039, { i64, [0 x { i64, [0 x i64] }*] }* %_id_b4040, { i64, [0 x { i64, [0 x i64] }*] }* %_id_c4041)
  %_id_c4043 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3996
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_id_c4043, i64 2)
  ret i64 0
}

define void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_a13853 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23854 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a33855 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3856 = alloca i64
  %_3859 = alloca i64
  %_3862 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a13853
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a23854
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_a33855
  store i64 0, i64* %_3856
  br label %_cond3907
_cond3907:
  %_id_i3857 = load i64, i64* %_3856
  %_bop3858 = icmp slt i64 %_id_i3857, 2
  br i1 %_bop3858, label %_if3906, label %_merge3908
_if3906:
  store i64 0, i64* %_3859
  br label %_cond3902
_cond3902:
  %_id_j3860 = load i64, i64* %_3859
  %_bop3861 = icmp slt i64 %_id_j3860, 4
  br i1 %_bop3861, label %_if3901, label %_merge3903
_if3901:
  store i64 0, i64* %_3862
  br label %_cond3897
_cond3897:
  %_id_k3863 = load i64, i64* %_3862
  %_bop3864 = icmp slt i64 %_id_k3863, 3
  br i1 %_bop3864, label %_if3896, label %_merge3898
_if3896:
  %_id_a33865 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33855
  %_id_i3866 = load i64, i64* %_3856
  %_index_pointer3868 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a33865, i32 0, i32 1, i64 %_id_i3866
  %_index_value3867 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3868
  %_id_j3869 = load i64, i64* %_3859
  %_index_pointer3871 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3867, i32 0, i32 1, i64 %_id_j3869
  %_index_value3870 = load i64, i64* %_index_pointer3871
  %_id_a13872 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13853
  %_id_i3873 = load i64, i64* %_3856
  %_index_pointer3875 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a13872, i32 0, i32 1, i64 %_id_i3873
  %_index_value3874 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3875
  %_id_k3876 = load i64, i64* %_3862
  %_index_pointer3878 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3874, i32 0, i32 1, i64 %_id_k3876
  %_index_value3877 = load i64, i64* %_index_pointer3878
  %_id_a23879 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23854
  %_id_k3880 = load i64, i64* %_3862
  %_index_pointer3882 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a23879, i32 0, i32 1, i64 %_id_k3880
  %_index_value3881 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3882
  %_id_j3883 = load i64, i64* %_3859
  %_index_pointer3885 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3881, i32 0, i32 1, i64 %_id_j3883
  %_index_value3884 = load i64, i64* %_index_pointer3885
  %_bop3886 = mul i64 %_index_value3877, %_index_value3884
  %_bop3887 = add i64 %_index_value3870, %_bop3886
  %_id_a33888 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33855
  %_id_i3889 = load i64, i64* %_3856
  %_index_pointer3891 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a33888, i32 0, i32 1, i64 %_id_i3889
  %_index_value3890 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3891
  %_id_j3892 = load i64, i64* %_3859
  %_3893 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3890, i32 0, i32 1, i64 %_id_j3892
  store i64 %_bop3887, i64* %_3893
  %_id_k3894 = load i64, i64* %_3862
  %_bop3895 = add i64 %_id_k3894, 1
  store i64 %_bop3895, i64* %_3862
  br label %_cond3897
_merge3898:
  %_id_j3899 = load i64, i64* %_3859
  %_bop3900 = add i64 %_id_j3899, 1
  store i64 %_bop3900, i64* %_3859
  br label %_cond3902
_merge3903:
  %_id_i3904 = load i64, i64* %_3856
  %_bop3905 = add i64 %_id_i3904, 1
  store i64 %_bop3905, i64* %_3856
  br label %_cond3907
_merge3908:
  ret void
}

define void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_a13823 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23824 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a33825 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3826 = alloca i64
  %_3829 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a13823
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a23824
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_a33825
  store i64 0, i64* %_3826
  br label %_cond3851
_cond3851:
  %_id_i3827 = load i64, i64* %_3826
  %_bop3828 = icmp slt i64 %_id_i3827, 2
  br i1 %_bop3828, label %_if3850, label %_merge3852
_if3850:
  store i64 0, i64* %_3829
  br label %_cond3846
_cond3846:
  %_id_j3830 = load i64, i64* %_3829
  %_bop3831 = icmp slt i64 %_id_j3830, 4
  br i1 %_bop3831, label %_if3845, label %_merge3847
_if3845:
  %_id_a13832 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13823
  %_id_a23833 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23824
  %_id_i3834 = load i64, i64* %_3826
  %_id_j3835 = load i64, i64* %_3829
  %_3836 = call i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_id_a13832, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a23833, i64 %_id_i3834, i64 %_id_j3835)
  %_id_a33837 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33825
  %_id_i3838 = load i64, i64* %_3826
  %_index_pointer3840 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a33837, i32 0, i32 1, i64 %_id_i3838
  %_index_value3839 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3840
  %_id_j3841 = load i64, i64* %_3829
  %_3842 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3839, i32 0, i32 1, i64 %_id_j3841
  store i64 %_3836, i64* %_3842
  %_id_j3843 = load i64, i64* %_3829
  %_bop3844 = add i64 %_id_j3843, 1
  store i64 %_bop3844, i64* %_3829
  br label %_cond3846
_merge3847:
  %_id_i3848 = load i64, i64* %_3826
  %_bop3849 = add i64 %_id_i3848, 1
  store i64 %_bop3849, i64* %_3826
  br label %_cond3851
_merge3852:
  ret void
}

define i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, i64 %row, i64 %col) {
  %_a13792 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23793 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_row3794 = alloca i64
  %_col3795 = alloca i64
  %_3796 = alloca i64
  %_3797 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a13792
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a23793
  store i64 %row, i64* %_row3794
  store i64 %col, i64* %_col3795
  store i64 0, i64* %_3796
  store i64 0, i64* %_3797
  br label %_cond3820
_cond3820:
  %_id_k3798 = load i64, i64* %_3797
  %_bop3799 = icmp slt i64 %_id_k3798, 3
  br i1 %_bop3799, label %_if3819, label %_merge3821
_if3819:
  %_id_sum3800 = load i64, i64* %_3796
  %_id_a13801 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13792
  %_id_row3802 = load i64, i64* %_row3794
  %_index_pointer3804 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a13801, i32 0, i32 1, i64 %_id_row3802
  %_index_value3803 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3804
  %_id_k3805 = load i64, i64* %_3797
  %_index_pointer3807 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3803, i32 0, i32 1, i64 %_id_k3805
  %_index_value3806 = load i64, i64* %_index_pointer3807
  %_id_a23808 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23793
  %_id_k3809 = load i64, i64* %_3797
  %_index_pointer3811 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a23808, i32 0, i32 1, i64 %_id_k3809
  %_index_value3810 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3811
  %_id_col3812 = load i64, i64* %_col3795
  %_index_pointer3814 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3810, i32 0, i32 1, i64 %_id_col3812
  %_index_value3813 = load i64, i64* %_index_pointer3814
  %_bop3815 = mul i64 %_index_value3806, %_index_value3813
  %_bop3816 = add i64 %_id_sum3800, %_bop3815
  store i64 %_bop3816, i64* %_3796
  %_id_k3817 = load i64, i64* %_3797
  %_bop3818 = add i64 %_id_k3817, 1
  store i64 %_bop3818, i64* %_3797
  br label %_cond3820
_merge3821:
  %_id_sum3822 = load i64, i64* %_3796
  ret i64 %_id_sum3822
}

define void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %ar, i64 %n) {
  %_ar3759 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_n3760 = alloca i64
  %_3761 = alloca i64
  %_3765 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %ar, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3759
  store i64 %n, i64* %_n3760
  store i64 0, i64* %_3761
  br label %_cond3790
_cond3790:
  %_id_i3762 = load i64, i64* %_3761
  %_id_n3763 = load i64, i64* %_n3760
  %_bop3764 = icmp slt i64 %_id_i3762, %_id_n3763
  br i1 %_bop3764, label %_if3789, label %_merge3791
_if3789:
  store i64 0, i64* %_3765
  br label %_cond3782
_cond3782:
  %_id_j3766 = load i64, i64* %_3765
  %_bop3767 = icmp slt i64 %_id_j3766, 4
  br i1 %_bop3767, label %_if3781, label %_merge3783
_if3781:
  %_id_ar3768 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3759
  %_id_i3769 = load i64, i64* %_3761
  %_index_pointer3771 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_ar3768, i32 0, i32 1, i64 %_id_i3769
  %_index_value3770 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3771
  %_id_j3772 = load i64, i64* %_3765
  %_index_pointer3774 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3770, i32 0, i32 1, i64 %_id_j3772
  %_index_value3773 = load i64, i64* %_index_pointer3774
  call void @print_int(i64 %_index_value3773)
  %_string13777 = getelementptr [2 x i8], [2 x i8]* @_string3776, i32 0, i32 0
  call void @print_string(i8* %_string13777)
  %_id_j3779 = load i64, i64* %_3765
  %_bop3780 = add i64 %_id_j3779, 1
  store i64 %_bop3780, i64* %_3765
  br label %_cond3782
_merge3783:
  %_string13785 = getelementptr [2 x i8], [2 x i8]* @_string3784, i32 0, i32 0
  call void @print_string(i8* %_string13785)
  %_id_i3787 = load i64, i64* %_3761
  %_bop3788 = add i64 %_id_i3787, 1
  store i64 %_bop3788, i64* %_3761
  br label %_cond3790
_merge3791:
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
