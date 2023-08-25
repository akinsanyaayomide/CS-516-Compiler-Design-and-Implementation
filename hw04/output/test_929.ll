; generated from: hw4programs/sieve.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @sieve(i64 %n) {
  %_n3835 = alloca i64
  %_3836 = alloca { i64, [0 x i1] }*
  %_3840 = alloca i64
  %_3856 = alloca i64
  %_3864 = alloca i64
  %_3888 = alloca i64
  %_3889 = alloca i64
  store i64 %n, i64* %_n3835
  %_id_n3837 = load i64, i64* %_n3835
  %_raw_array3838 = call i64* @oat_alloc_array(i64 %_id_n3837)
  %_array3839 = bitcast i64* %_raw_array3838 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array3839, { i64, [0 x i1] }** %_3836
  store i64 0, i64* %_3840
  br label %_start3849
_start3849:
  %_id_n3842 = load i64, i64* %_n3835
  %_id_i3841 = load i64, i64* %_3840
  %_3843 = icmp slt i64 %_id_i3841, %_id_n3842
  br i1 %_3843, label %_body3850, label %_else3851
_body3850:
  %_id_arr3844 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3836
  %_id_i3845 = load i64, i64* %_3840
  %_3846 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr3844, i32 0, i32 1, i64 %_id_i3845
  store i1 1, i1* %_3846
  %_id_i3847 = load i64, i64* %_3840
  %_3848 = add i64 %_id_i3847, 1
  store i64 %_3848, i64* %_3840
  br label %_start3849
_else3851:
  %_id_arr3852 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3836
  %_3853 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr3852, i32 0, i32 1, i32 0
  store i1 0, i1* %_3853
  %_id_arr3854 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3836
  %_3855 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr3854, i32 0, i32 1, i32 1
  store i1 0, i1* %_3855
  store i64 0, i64* %_3856
  br label %_start3885
_start3885:
  %_id_n3858 = load i64, i64* %_n3835
  %_id_i3857 = load i64, i64* %_3856
  %_3859 = icmp slt i64 %_id_i3857, %_id_n3858
  br i1 %_3859, label %_body3886, label %_else3887
_body3886:
  br label %_start3879
_start3879:
  %_id_arr3860 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3836
  %_id_i3861 = load i64, i64* %_3856
  %_index_pointer3862 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr3860, i32 0, i32 1, i64 %_id_i3861
  %_index_value3863 = load i1, i1* %_index_pointer3862
  br i1 %_index_value3863, label %_then3880, label %_else3881
_then3880:
  %_id_i3865 = load i64, i64* %_3856
  %_3866 = mul i64 %_id_i3865, 2
  store i64 %_3866, i64* %_3864
  br label %_start3876
_start3876:
  %_id_n3868 = load i64, i64* %_n3835
  %_id_j3867 = load i64, i64* %_3864
  %_3869 = icmp slt i64 %_id_j3867, %_id_n3868
  br i1 %_3869, label %_body3877, label %_else3878
_body3877:
  %_id_arr3870 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3836
  %_id_j3871 = load i64, i64* %_3864
  %_3872 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr3870, i32 0, i32 1, i64 %_id_j3871
  store i1 0, i1* %_3872
  %_id_i3874 = load i64, i64* %_3856
  %_id_j3873 = load i64, i64* %_3864
  %_3875 = add i64 %_id_j3873, %_id_i3874
  store i64 %_3875, i64* %_3864
  br label %_start3876
_else3878:
  br label %_post3882
_else3881:
  br label %_post3882
_post3882:
  %_id_i3883 = load i64, i64* %_3856
  %_3884 = add i64 %_id_i3883, 1
  store i64 %_3884, i64* %_3856
  br label %_start3885
_else3887:
  store i64 0, i64* %_3888
  store i64 0, i64* %_3889
  br label %_start3905
_start3905:
  %_id_n3891 = load i64, i64* %_n3835
  %_id_i3890 = load i64, i64* %_3889
  %_3892 = icmp slt i64 %_id_i3890, %_id_n3891
  br i1 %_3892, label %_body3906, label %_else3907
_body3906:
  br label %_start3899
_start3899:
  %_id_arr3893 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3836
  %_id_i3894 = load i64, i64* %_3889
  %_index_pointer3895 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr3893, i32 0, i32 1, i64 %_id_i3894
  %_index_value3896 = load i1, i1* %_index_pointer3895
  br i1 %_index_value3896, label %_then3900, label %_else3901
_then3900:
  %_id_count3897 = load i64, i64* %_3888
  %_3898 = add i64 %_id_count3897, 1
  store i64 %_3898, i64* %_3888
  br label %_post3902
_else3901:
  br label %_post3902
_post3902:
  %_id_i3903 = load i64, i64* %_3889
  %_3904 = add i64 %_id_i3903, 1
  store i64 %_3904, i64* %_3889
  br label %_start3905
_else3907:
  %_id_count3908 = load i64, i64* %_3888
  ret i64 %_id_count3908
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3830 = alloca i64
  %_argv3831 = alloca { i64, [0 x i8*] }*
  %_3832 = alloca i64
  store i64 %argc, i64* %_argc3830
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3831
  store i64 100, i64* %_3832
  %_id_n3833 = load i64, i64* %_3832
  %_3834 = call i64 @sieve(i64 %_id_n3833)
  ret i64 %_3834
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
