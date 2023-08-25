; generated from: hw4programs/count_sort.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string3931 = global [2 x i8] c"
\00"

define i64 @min({ i64, [0 x i64] }* %arr, i64 %len) {
  %_arr4060 = alloca { i64, [0 x i64] }*
  %_len4061 = alloca i64
  %_min4065 = alloca i64
  %_i4066 = alloca i64
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4060
  store i64 %len, i64* %_len4061
  %_id_arr4062 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4060
  %_index_pointer4064 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4062, i32 0, i32 1, i32 0
  %_index_value4063 = load i64, i64* %_index_pointer4064
  store i64 %_index_value4063, i64* %_min4065
  store i64 0, i64* %_i4066
  br label %_cond4087
_cond4087:
  %_id_i4067 = load i64, i64* %_i4066
  %_id_len4068 = load i64, i64* %_len4061
  %_bop4069 = icmp slt i64 %_id_i4067, %_id_len4068
  br i1 %_bop4069, label %_if4086, label %_merge4088
_if4086:
  br label %_begin_if4083
_begin_if4083:
  %_id_arr4070 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4060
  %_id_i4071 = load i64, i64* %_i4066
  %_index_pointer4073 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4070, i32 0, i32 1, i64 %_id_i4071
  %_index_value4072 = load i64, i64* %_index_pointer4073
  %_id_min4074 = load i64, i64* %_min4065
  %_bop4075 = icmp slt i64 %_index_value4072, %_id_min4074
  br i1 %_bop4075, label %_then_branch4082, label %_else_branch4081
_then_branch4082:
  %_id_arr4076 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4060
  %_id_i4077 = load i64, i64* %_i4066
  %_index_pointer4079 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4076, i32 0, i32 1, i64 %_id_i4077
  %_index_value4078 = load i64, i64* %_index_pointer4079
  store i64 %_index_value4078, i64* %_min4065
  br label %_end_if4080
_else_branch4081:
  br label %_end_if4080
_end_if4080:
  %_id_i4084 = load i64, i64* %_i4066
  %_bop4085 = add i64 %_id_i4084, 1
  store i64 %_bop4085, i64* %_i4066
  br label %_cond4087
_merge4088:
  %_id_min4089 = load i64, i64* %_min4065
  ret i64 %_id_min4089
}

define i64 @max({ i64, [0 x i64] }* %arr, i64 %len) {
  %_arr4030 = alloca { i64, [0 x i64] }*
  %_len4031 = alloca i64
  %_max4035 = alloca i64
  %_i4036 = alloca i64
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4030
  store i64 %len, i64* %_len4031
  %_id_arr4032 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4030
  %_index_pointer4034 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4032, i32 0, i32 1, i32 0
  %_index_value4033 = load i64, i64* %_index_pointer4034
  store i64 %_index_value4033, i64* %_max4035
  store i64 0, i64* %_i4036
  br label %_cond4057
_cond4057:
  %_id_i4037 = load i64, i64* %_i4036
  %_id_len4038 = load i64, i64* %_len4031
  %_bop4039 = icmp slt i64 %_id_i4037, %_id_len4038
  br i1 %_bop4039, label %_if4056, label %_merge4058
_if4056:
  br label %_begin_if4053
_begin_if4053:
  %_id_arr4040 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4030
  %_id_i4041 = load i64, i64* %_i4036
  %_index_pointer4043 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4040, i32 0, i32 1, i64 %_id_i4041
  %_index_value4042 = load i64, i64* %_index_pointer4043
  %_id_max4044 = load i64, i64* %_max4035
  %_bop4045 = icmp sgt i64 %_index_value4042, %_id_max4044
  br i1 %_bop4045, label %_then_branch4052, label %_else_branch4051
_then_branch4052:
  %_id_arr4046 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4030
  %_id_i4047 = load i64, i64* %_i4036
  %_index_pointer4049 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4046, i32 0, i32 1, i64 %_id_i4047
  %_index_value4048 = load i64, i64* %_index_pointer4049
  store i64 %_index_value4048, i64* %_max4035
  br label %_end_if4050
_else_branch4051:
  br label %_end_if4050
_end_if4050:
  %_id_i4054 = load i64, i64* %_i4036
  %_bop4055 = add i64 %_id_i4054, 1
  store i64 %_bop4055, i64* %_i4036
  br label %_cond4057
_merge4058:
  %_id_max4059 = load i64, i64* %_max4035
  ret i64 %_id_max4059
}

define { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %arr, i64 %len) {
  %_arr3941 = alloca { i64, [0 x i64] }*
  %_len3942 = alloca i64
  %_min3946 = alloca i64
  %_max3950 = alloca i64
  %_counts3957 = alloca { i64, [0 x i64] }*
  %_i3958 = alloca i64
  %_i3986 = alloca i64
  %_j3987 = alloca i64
  %_out3991 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr3941
  store i64 %len, i64* %_len3942
  %_id_arr3943 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3941
  %_id_len3944 = load i64, i64* %_len3942
  %_3945 = call i64 @min({ i64, [0 x i64] }* %_id_arr3943, i64 %_id_len3944)
  store i64 %_3945, i64* %_min3946
  %_id_arr3947 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3941
  %_id_len3948 = load i64, i64* %_len3942
  %_3949 = call i64 @max({ i64, [0 x i64] }* %_id_arr3947, i64 %_id_len3948)
  store i64 %_3949, i64* %_max3950
  %_id_max3951 = load i64, i64* %_max3950
  %_id_min3952 = load i64, i64* %_min3946
  %_bop3953 = sub i64 %_id_max3951, %_id_min3952
  %_bop3954 = add i64 %_bop3953, 1
  %_raw_array3955 = call i64* @oat_alloc_array(i64 %_bop3954)
  %_array3956 = bitcast i64* %_raw_array3955 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3956, { i64, [0 x i64] }** %_counts3957
  store i64 0, i64* %_i3958
  br label %_cond3983
_cond3983:
  %_id_i3959 = load i64, i64* %_i3958
  %_id_len3960 = load i64, i64* %_len3942
  %_bop3961 = icmp slt i64 %_id_i3959, %_id_len3960
  br i1 %_bop3961, label %_if3982, label %_merge3984
_if3982:
  %_id_counts3962 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts3957
  %_id_arr3963 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3941
  %_id_i3964 = load i64, i64* %_i3958
  %_index_pointer3966 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr3963, i32 0, i32 1, i64 %_id_i3964
  %_index_value3965 = load i64, i64* %_index_pointer3966
  %_id_min3967 = load i64, i64* %_min3946
  %_bop3968 = sub i64 %_index_value3965, %_id_min3967
  %_index_pointer3970 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_counts3962, i32 0, i32 1, i64 %_bop3968
  %_index_value3969 = load i64, i64* %_index_pointer3970
  %_bop3971 = add i64 %_index_value3969, 1
  %_id_counts3972 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts3957
  %_id_arr3973 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3941
  %_id_i3974 = load i64, i64* %_i3958
  %_index_pointer3976 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr3973, i32 0, i32 1, i64 %_id_i3974
  %_index_value3975 = load i64, i64* %_index_pointer3976
  %_id_min3977 = load i64, i64* %_min3946
  %_bop3978 = sub i64 %_index_value3975, %_id_min3977
  %_3979 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_counts3972, i32 0, i32 1, i64 %_bop3978
  store i64 %_bop3971, i64* %_3979
  %_id_i3980 = load i64, i64* %_i3958
  %_bop3981 = add i64 %_id_i3980, 1
  store i64 %_bop3981, i64* %_i3958
  br label %_cond3983
_merge3984:
  %_id_min3985 = load i64, i64* %_min3946
  store i64 %_id_min3985, i64* %_i3986
  store i64 0, i64* %_j3987
  %_id_len3988 = load i64, i64* %_len3942
  %_raw_array3989 = call i64* @oat_alloc_array(i64 %_id_len3988)
  %_array3990 = bitcast i64* %_raw_array3989 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3990, { i64, [0 x i64] }** %_out3991
  br label %_cond4027
_cond4027:
  %_id_i3992 = load i64, i64* %_i3986
  %_id_max3993 = load i64, i64* %_max3950
  %_bop3994 = icmp sle i64 %_id_i3992, %_id_max3993
  br i1 %_bop3994, label %_if4026, label %_merge4028
_if4026:
  br label %_begin_if4025
_begin_if4025:
  %_id_counts3995 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts3957
  %_id_i3996 = load i64, i64* %_i3986
  %_id_min3997 = load i64, i64* %_min3946
  %_bop3998 = sub i64 %_id_i3996, %_id_min3997
  %_index_pointer4000 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_counts3995, i32 0, i32 1, i64 %_bop3998
  %_index_value3999 = load i64, i64* %_index_pointer4000
  %_bop4001 = icmp sgt i64 %_index_value3999, 0
  br i1 %_bop4001, label %_then_branch4024, label %_else_branch4023
_then_branch4024:
  %_id_i4004 = load i64, i64* %_i3986
  %_id_out4005 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out3991
  %_id_j4006 = load i64, i64* %_j3987
  %_4007 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_out4005, i32 0, i32 1, i64 %_id_j4006
  store i64 %_id_i4004, i64* %_4007
  %_id_counts4008 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts3957
  %_id_i4009 = load i64, i64* %_i3986
  %_id_min4010 = load i64, i64* %_min3946
  %_bop4011 = sub i64 %_id_i4009, %_id_min4010
  %_index_pointer4013 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_counts4008, i32 0, i32 1, i64 %_bop4011
  %_index_value4012 = load i64, i64* %_index_pointer4013
  %_bop4014 = sub i64 %_index_value4012, 1
  %_id_counts4015 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts3957
  %_id_i4016 = load i64, i64* %_i3986
  %_id_min4017 = load i64, i64* %_min3946
  %_bop4018 = sub i64 %_id_i4016, %_id_min4017
  %_4019 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_counts4015, i32 0, i32 1, i64 %_bop4018
  store i64 %_bop4014, i64* %_4019
  %_id_j4020 = load i64, i64* %_j3987
  %_bop4021 = add i64 %_id_j4020, 1
  store i64 %_bop4021, i64* %_j3987
  br label %_end_if4022
_else_branch4023:
  %_id_i4002 = load i64, i64* %_i3986
  %_bop4003 = add i64 %_id_i4002, 1
  store i64 %_bop4003, i64* %_i3986
  br label %_end_if4022
_end_if4022:
  br label %_cond4027
_merge4028:
  %_id_out4029 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out3991
  ret { i64, [0 x i64] }* %_id_out4029
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3904 = alloca i64
  %_argv3905 = alloca { i64, [0 x i8*] }*
  %_arr3926 = alloca { i64, [0 x i64] }*
  %_len3927 = alloca i64
  %_sorted3937 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc3904
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3905
  %_raw_array3906 = call i64* @oat_alloc_array(i64 9)
  %_array3907 = bitcast i64* %_raw_array3906 to { i64, [0 x i64] }*
  %_3924 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3907, i32 0, i32 1, i32 8
  store i64 67, i64* %_3924
  %_3922 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3907, i32 0, i32 1, i32 7
  store i64 89, i64* %_3922
  %_3920 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3907, i32 0, i32 1, i32 6
  store i64 69, i64* %_3920
  %_3918 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3907, i32 0, i32 1, i32 5
  store i64 65, i64* %_3918
  %_3916 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3907, i32 0, i32 1, i32 4
  store i64 65, i64* %_3916
  %_3914 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3907, i32 0, i32 1, i32 3
  store i64 90, i64* %_3914
  %_3912 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3907, i32 0, i32 1, i32 2
  store i64 72, i64* %_3912
  %_3910 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3907, i32 0, i32 1, i32 1
  store i64 70, i64* %_3910
  %_3908 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3907, i32 0, i32 1, i32 0
  store i64 65, i64* %_3908
  store { i64, [0 x i64] }* %_array3907, { i64, [0 x i64] }** %_arr3926
  store i64 9, i64* %_len3927
  %_id_arr3928 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3926
  %_3929 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_arr3928)
  call void @print_string(i8* %_3929)
  %_string13932 = getelementptr [2 x i8], [2 x i8]* @_string3931, i32 0, i32 0
  call void @print_string(i8* %_string13932)
  %_id_arr3934 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3926
  %_id_len3935 = load i64, i64* %_len3927
  %_3936 = call { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_id_arr3934, i64 %_id_len3935)
  store { i64, [0 x i64] }* %_3936, { i64, [0 x i64] }** %_sorted3937
  %_id_sorted3938 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_sorted3937
  %_3939 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_sorted3938)
  call void @print_string(i8* %_3939)
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
