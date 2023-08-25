; generated from: hw4programs/sieve.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @sieve(i64 %n) {
  %_n3830 = alloca i64
  %_3831 = alloca { i64, [0 x i1] }*
  %_3835 = alloca i64
  %_3851 = alloca i64
  %_3859 = alloca i64
  %_3883 = alloca i64
  %_3884 = alloca i64
  store i64 %n, i64* %_n3830
  %_id_n3832 = load i64, i64* %_n3830
  %_raw_array3833 = call i64* @oat_alloc_array(i64 %_id_n3832)
  %_array3834 = bitcast i64* %_raw_array3833 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array3834, { i64, [0 x i1] }** %_3831
  store i64 0, i64* %_3835
  br label %_start3844
_start3844:
  %_id_n3837 = load i64, i64* %_n3830
  %_id_i3836 = load i64, i64* %_3835
  %_3838 = icmp slt i64 %_id_i3836, %_id_n3837
  br i1 %_3838, label %_body3845, label %_else3846
_body3845:
  %_id_arr3839 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3831
  %_id_i3840 = load i64, i64* %_3835
  %_3841 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr3839, i32 0, i32 1, i64 %_id_i3840
  store i1 1, i1* %_3841
  %_id_i3842 = load i64, i64* %_3835
  %_3843 = add i64 %_id_i3842, 1
  store i64 %_3843, i64* %_3835
  br label %_start3844
_else3846:
  %_id_arr3847 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3831
  %_3848 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr3847, i32 0, i32 1, i32 0
  store i1 0, i1* %_3848
  %_id_arr3849 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3831
  %_3850 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr3849, i32 0, i32 1, i32 1
  store i1 0, i1* %_3850
  store i64 0, i64* %_3851
  br label %_start3880
_start3880:
  %_id_n3853 = load i64, i64* %_n3830
  %_id_i3852 = load i64, i64* %_3851
  %_3854 = icmp slt i64 %_id_i3852, %_id_n3853
  br i1 %_3854, label %_body3881, label %_else3882
_body3881:
  br label %_start3874
_start3874:
  %_id_arr3855 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3831
  %_id_i3856 = load i64, i64* %_3851
  %_index_pointer3857 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr3855, i32 0, i32 1, i64 %_id_i3856
  %_index_value3858 = load i1, i1* %_index_pointer3857
  br i1 %_index_value3858, label %_then3875, label %_else3876
_then3875:
  %_id_i3860 = load i64, i64* %_3851
  %_3861 = mul i64 %_id_i3860, 2
  store i64 %_3861, i64* %_3859
  br label %_start3871
_start3871:
  %_id_n3863 = load i64, i64* %_n3830
  %_id_j3862 = load i64, i64* %_3859
  %_3864 = icmp slt i64 %_id_j3862, %_id_n3863
  br i1 %_3864, label %_body3872, label %_else3873
_body3872:
  %_id_arr3865 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3831
  %_id_j3866 = load i64, i64* %_3859
  %_3867 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr3865, i32 0, i32 1, i64 %_id_j3866
  store i1 0, i1* %_3867
  %_id_i3869 = load i64, i64* %_3851
  %_id_j3868 = load i64, i64* %_3859
  %_3870 = add i64 %_id_j3868, %_id_i3869
  store i64 %_3870, i64* %_3859
  br label %_start3871
_else3873:
  br label %_post3877
_else3876:
  br label %_post3877
_post3877:
  %_id_i3878 = load i64, i64* %_3851
  %_3879 = add i64 %_id_i3878, 1
  store i64 %_3879, i64* %_3851
  br label %_start3880
_else3882:
  store i64 0, i64* %_3883
  store i64 0, i64* %_3884
  br label %_start3900
_start3900:
  %_id_n3886 = load i64, i64* %_n3830
  %_id_i3885 = load i64, i64* %_3884
  %_3887 = icmp slt i64 %_id_i3885, %_id_n3886
  br i1 %_3887, label %_body3901, label %_else3902
_body3901:
  br label %_start3894
_start3894:
  %_id_arr3888 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3831
  %_id_i3889 = load i64, i64* %_3884
  %_index_pointer3890 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr3888, i32 0, i32 1, i64 %_id_i3889
  %_index_value3891 = load i1, i1* %_index_pointer3890
  br i1 %_index_value3891, label %_then3895, label %_else3896
_then3895:
  %_id_count3892 = load i64, i64* %_3883
  %_3893 = add i64 %_id_count3892, 1
  store i64 %_3893, i64* %_3883
  br label %_post3897
_else3896:
  br label %_post3897
_post3897:
  %_id_i3898 = load i64, i64* %_3884
  %_3899 = add i64 %_id_i3898, 1
  store i64 %_3899, i64* %_3884
  br label %_start3900
_else3902:
  %_id_count3903 = load i64, i64* %_3883
  ret i64 %_id_count3903
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3825 = alloca i64
  %_argv3826 = alloca { i64, [0 x i8*] }*
  %_3827 = alloca i64
  store i64 %argc, i64* %_argc3825
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3826
  store i64 100, i64* %_3827
  %_id_n3828 = load i64, i64* %_3827
  %_3829 = call i64 @sieve(i64 %_id_n3828)
  ret i64 %_3829
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
