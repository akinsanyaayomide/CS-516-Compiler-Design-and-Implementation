; generated from: hw4programs/sieve.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @sieve(i64 %n) {
  %_n3830 = alloca i64
  %_arr3834 = alloca { i64, [0 x i1] }*
  %_i3835 = alloca i64
  %_i3851 = alloca i64
  %_j3861 = alloca i64
  %_count3883 = alloca i64
  %_i3884 = alloca i64
  store i64 %n, i64* %_n3830
  %_id_n3831 = load i64, i64* %_n3830
  %_raw_array3832 = call i64* @oat_alloc_array(i64 %_id_n3831)
  %_array3833 = bitcast i64* %_raw_array3832 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array3833, { i64, [0 x i1] }** %_arr3834
  store i64 0, i64* %_i3835
  br label %_cond3845
_cond3845:
  %_id_i3836 = load i64, i64* %_i3835
  %_id_n3837 = load i64, i64* %_n3830
  %_bop3838 = icmp slt i64 %_id_i3836, %_id_n3837
  br i1 %_bop3838, label %_if3844, label %_merge3846
_if3844:
  %_id_arr3839 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr3834
  %_id_i3840 = load i64, i64* %_i3835
  %_3841 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr3839, i32 0, i32 1, i64 %_id_i3840
  store i1 1, i1* %_3841
  %_id_i3842 = load i64, i64* %_i3835
  %_bop3843 = add i64 %_id_i3842, 1
  store i64 %_bop3843, i64* %_i3835
  br label %_cond3845
_merge3846:
  %_id_arr3847 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr3834
  %_3848 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr3847, i32 0, i32 1, i32 0
  store i1 0, i1* %_3848
  %_id_arr3849 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr3834
  %_3850 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr3849, i32 0, i32 1, i32 1
  store i1 0, i1* %_3850
  store i64 0, i64* %_i3851
  br label %_cond3881
_cond3881:
  %_id_i3852 = load i64, i64* %_i3851
  %_id_n3853 = load i64, i64* %_n3830
  %_bop3854 = icmp slt i64 %_id_i3852, %_id_n3853
  br i1 %_bop3854, label %_if3880, label %_merge3882
_if3880:
  br label %_begin_if3874
_begin_if3874:
  %_id_arr3855 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr3834
  %_id_i3856 = load i64, i64* %_i3851
  %_index_pointer3858 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr3855, i32 0, i32 1, i64 %_id_i3856
  %_index_value3857 = load i1, i1* %_index_pointer3858
  br i1 %_index_value3857, label %_then_branch3875, label %_else_branch3876
_then_branch3875:
  %_id_i3859 = load i64, i64* %_i3851
  %_bop3860 = mul i64 %_id_i3859, 2
  store i64 %_bop3860, i64* %_j3861
  br label %_cond3872
_cond3872:
  %_id_j3862 = load i64, i64* %_j3861
  %_id_n3863 = load i64, i64* %_n3830
  %_bop3864 = icmp slt i64 %_id_j3862, %_id_n3863
  br i1 %_bop3864, label %_if3871, label %_merge3873
_if3871:
  %_id_arr3865 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr3834
  %_id_j3866 = load i64, i64* %_j3861
  %_3867 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr3865, i32 0, i32 1, i64 %_id_j3866
  store i1 0, i1* %_3867
  %_id_j3868 = load i64, i64* %_j3861
  %_id_i3869 = load i64, i64* %_i3851
  %_bop3870 = add i64 %_id_j3868, %_id_i3869
  store i64 %_bop3870, i64* %_j3861
  br label %_cond3872
_merge3873:
  br label %_end_if3877
_else_branch3876:
  br label %_end_if3877
_end_if3877:
  %_id_i3878 = load i64, i64* %_i3851
  %_bop3879 = add i64 %_id_i3878, 1
  store i64 %_bop3879, i64* %_i3851
  br label %_cond3881
_merge3882:
  store i64 0, i64* %_count3883
  store i64 0, i64* %_i3884
  br label %_cond3901
_cond3901:
  %_id_i3885 = load i64, i64* %_i3884
  %_id_n3886 = load i64, i64* %_n3830
  %_bop3887 = icmp slt i64 %_id_i3885, %_id_n3886
  br i1 %_bop3887, label %_if3900, label %_merge3902
_if3900:
  br label %_begin_if3894
_begin_if3894:
  %_id_arr3888 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr3834
  %_id_i3889 = load i64, i64* %_i3884
  %_index_pointer3891 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr3888, i32 0, i32 1, i64 %_id_i3889
  %_index_value3890 = load i1, i1* %_index_pointer3891
  br i1 %_index_value3890, label %_then_branch3895, label %_else_branch3896
_then_branch3895:
  %_id_count3892 = load i64, i64* %_count3883
  %_bop3893 = add i64 %_id_count3892, 1
  store i64 %_bop3893, i64* %_count3883
  br label %_end_if3897
_else_branch3896:
  br label %_end_if3897
_end_if3897:
  %_id_i3898 = load i64, i64* %_i3884
  %_bop3899 = add i64 %_id_i3898, 1
  store i64 %_bop3899, i64* %_i3884
  br label %_cond3901
_merge3902:
  %_id_count3903 = load i64, i64* %_count3883
  ret i64 %_id_count3903
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3825 = alloca i64
  %_argv3826 = alloca { i64, [0 x i8*] }*
  %_n3827 = alloca i64
  store i64 %argc, i64* %_argc3825
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3826
  store i64 100, i64* %_n3827
  %_id_n3828 = load i64, i64* %_n3827
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
