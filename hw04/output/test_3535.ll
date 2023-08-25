; generated from: hw4programs/count_sort.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string3931 = global [2 x i8] c"
\00"

define i64 @min({ i64, [0 x i64] }* %arr, i64 %len) {
  %_arr4060 = alloca { i64, [0 x i64] }*
  %_len4061 = alloca i64
  %_4062 = alloca i64
  %_4066 = alloca i64
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4060
  store i64 %len, i64* %_len4061
  %_id_arr4063 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4060
  %_index_pointer4064 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4063, i32 0, i32 1, i32 0
  %_index_value4065 = load i64, i64* %_index_pointer4064
  store i64 %_index_value4065, i64* %_4062
  store i64 0, i64* %_4066
  br label %_cond4087
_cond4087:
  %_id_i4067 = load i64, i64* %_4066
  %_id_len4068 = load i64, i64* %_len4061
  %_bop4069 = icmp slt i64 %_id_i4067, %_id_len4068
  br i1 %_bop4069, label %_if4086, label %_merge4088
_if4086:
  br label %_begin_if4080
_begin_if4080:
  %_id_arr4070 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4060
  %_id_i4071 = load i64, i64* %_4066
  %_index_pointer4072 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4070, i32 0, i32 1, i64 %_id_i4071
  %_index_value4073 = load i64, i64* %_index_pointer4072
  %_id_min4074 = load i64, i64* %_4062
  %_bop4075 = icmp slt i64 %_index_value4073, %_id_min4074
  br i1 %_bop4075, label %_then_branch4081, label %_else_branch4082
_then_branch4081:
  %_id_arr4076 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4060
  %_id_i4077 = load i64, i64* %_4066
  %_index_pointer4078 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4076, i32 0, i32 1, i64 %_id_i4077
  %_index_value4079 = load i64, i64* %_index_pointer4078
  store i64 %_index_value4079, i64* %_4062
  br label %_end_if4083
_else_branch4082:
  br label %_end_if4083
_end_if4083:
  %_id_i4084 = load i64, i64* %_4066
  %_bop4085 = add i64 %_id_i4084, 1
  store i64 %_bop4085, i64* %_4066
  br label %_cond4087
_merge4088:
  %_id_min4089 = load i64, i64* %_4062
  ret i64 %_id_min4089
}

define i64 @max({ i64, [0 x i64] }* %arr, i64 %len) {
  %_arr4030 = alloca { i64, [0 x i64] }*
  %_len4031 = alloca i64
  %_4032 = alloca i64
  %_4036 = alloca i64
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4030
  store i64 %len, i64* %_len4031
  %_id_arr4033 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4030
  %_index_pointer4034 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4033, i32 0, i32 1, i32 0
  %_index_value4035 = load i64, i64* %_index_pointer4034
  store i64 %_index_value4035, i64* %_4032
  store i64 0, i64* %_4036
  br label %_cond4057
_cond4057:
  %_id_i4037 = load i64, i64* %_4036
  %_id_len4038 = load i64, i64* %_len4031
  %_bop4039 = icmp slt i64 %_id_i4037, %_id_len4038
  br i1 %_bop4039, label %_if4056, label %_merge4058
_if4056:
  br label %_begin_if4050
_begin_if4050:
  %_id_arr4040 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4030
  %_id_i4041 = load i64, i64* %_4036
  %_index_pointer4042 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4040, i32 0, i32 1, i64 %_id_i4041
  %_index_value4043 = load i64, i64* %_index_pointer4042
  %_id_max4044 = load i64, i64* %_4032
  %_bop4045 = icmp sgt i64 %_index_value4043, %_id_max4044
  br i1 %_bop4045, label %_then_branch4051, label %_else_branch4052
_then_branch4051:
  %_id_arr4046 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4030
  %_id_i4047 = load i64, i64* %_4036
  %_index_pointer4048 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4046, i32 0, i32 1, i64 %_id_i4047
  %_index_value4049 = load i64, i64* %_index_pointer4048
  store i64 %_index_value4049, i64* %_4032
  br label %_end_if4053
_else_branch4052:
  br label %_end_if4053
_end_if4053:
  %_id_i4054 = load i64, i64* %_4036
  %_bop4055 = add i64 %_id_i4054, 1
  store i64 %_bop4055, i64* %_4036
  br label %_cond4057
_merge4058:
  %_id_max4059 = load i64, i64* %_4032
  ret i64 %_id_max4059
}

define { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %arr, i64 %len) {
  %_arr3941 = alloca { i64, [0 x i64] }*
  %_len3942 = alloca i64
  %_3943 = alloca i64
  %_3947 = alloca i64
  %_3951 = alloca { i64, [0 x i64] }*
  %_3958 = alloca i64
  %_3985 = alloca i64
  %_3987 = alloca i64
  %_3988 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr3941
  store i64 %len, i64* %_len3942
  %_id_arr3944 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3941
  %_id_len3945 = load i64, i64* %_len3942
  %_3946 = call i64 @min({ i64, [0 x i64] }* %_id_arr3944, i64 %_id_len3945)
  store i64 %_3946, i64* %_3943
  %_id_arr3948 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3941
  %_id_len3949 = load i64, i64* %_len3942
  %_3950 = call i64 @max({ i64, [0 x i64] }* %_id_arr3948, i64 %_id_len3949)
  store i64 %_3950, i64* %_3947
  %_id_max3952 = load i64, i64* %_3947
  %_id_min3953 = load i64, i64* %_3943
  %_bop3954 = sub i64 %_id_max3952, %_id_min3953
  %_bop3955 = add i64 %_bop3954, 1
  %_raw_array3956 = call i64* @oat_alloc_array(i64 %_bop3955)
  %_array3957 = bitcast i64* %_raw_array3956 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3957, { i64, [0 x i64] }** %_3951
  store i64 0, i64* %_3958
  br label %_cond3983
_cond3983:
  %_id_i3959 = load i64, i64* %_3958
  %_id_len3960 = load i64, i64* %_len3942
  %_bop3961 = icmp slt i64 %_id_i3959, %_id_len3960
  br i1 %_bop3961, label %_if3982, label %_merge3984
_if3982:
  %_id_counts3962 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3951
  %_id_arr3963 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3941
  %_id_i3964 = load i64, i64* %_3958
  %_index_pointer3965 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr3963, i32 0, i32 1, i64 %_id_i3964
  %_index_value3966 = load i64, i64* %_index_pointer3965
  %_id_min3967 = load i64, i64* %_3943
  %_bop3968 = sub i64 %_index_value3966, %_id_min3967
  %_index_pointer3969 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_counts3962, i32 0, i32 1, i64 %_bop3968
  %_index_value3970 = load i64, i64* %_index_pointer3969
  %_bop3971 = add i64 %_index_value3970, 1
  %_id_counts3972 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3951
  %_id_arr3973 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3941
  %_id_i3974 = load i64, i64* %_3958
  %_index_pointer3975 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr3973, i32 0, i32 1, i64 %_id_i3974
  %_index_value3976 = load i64, i64* %_index_pointer3975
  %_id_min3977 = load i64, i64* %_3943
  %_bop3978 = sub i64 %_index_value3976, %_id_min3977
  %_3979 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_counts3972, i32 0, i32 1, i64 %_bop3978
  store i64 %_bop3971, i64* %_3979
  %_id_i3980 = load i64, i64* %_3958
  %_bop3981 = add i64 %_id_i3980, 1
  store i64 %_bop3981, i64* %_3958
  br label %_cond3983
_merge3984:
  %_id_min3986 = load i64, i64* %_3943
  store i64 %_id_min3986, i64* %_3985
  store i64 0, i64* %_3987
  %_id_len3989 = load i64, i64* %_len3942
  %_raw_array3990 = call i64* @oat_alloc_array(i64 %_id_len3989)
  %_array3991 = bitcast i64* %_raw_array3990 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3991, { i64, [0 x i64] }** %_3988
  br label %_cond4027
_cond4027:
  %_id_i3992 = load i64, i64* %_3985
  %_id_max3993 = load i64, i64* %_3947
  %_bop3994 = icmp sle i64 %_id_i3992, %_id_max3993
  br i1 %_bop3994, label %_if4026, label %_merge4028
_if4026:
  br label %_begin_if4022
_begin_if4022:
  %_id_counts3995 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3951
  %_id_i3996 = load i64, i64* %_3985
  %_id_min3997 = load i64, i64* %_3943
  %_bop3998 = sub i64 %_id_i3996, %_id_min3997
  %_index_pointer3999 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_counts3995, i32 0, i32 1, i64 %_bop3998
  %_index_value4000 = load i64, i64* %_index_pointer3999
  %_bop4001 = icmp sgt i64 %_index_value4000, 0
  br i1 %_bop4001, label %_then_branch4023, label %_else_branch4024
_then_branch4023:
  %_id_i4002 = load i64, i64* %_3985
  %_id_out4003 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3988
  %_id_j4004 = load i64, i64* %_3987
  %_4005 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_out4003, i32 0, i32 1, i64 %_id_j4004
  store i64 %_id_i4002, i64* %_4005
  %_id_counts4006 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3951
  %_id_i4007 = load i64, i64* %_3985
  %_id_min4008 = load i64, i64* %_3943
  %_bop4009 = sub i64 %_id_i4007, %_id_min4008
  %_index_pointer4010 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_counts4006, i32 0, i32 1, i64 %_bop4009
  %_index_value4011 = load i64, i64* %_index_pointer4010
  %_bop4012 = sub i64 %_index_value4011, 1
  %_id_counts4013 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3951
  %_id_i4014 = load i64, i64* %_3985
  %_id_min4015 = load i64, i64* %_3943
  %_bop4016 = sub i64 %_id_i4014, %_id_min4015
  %_4017 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_counts4013, i32 0, i32 1, i64 %_bop4016
  store i64 %_bop4012, i64* %_4017
  %_id_j4018 = load i64, i64* %_3987
  %_bop4019 = add i64 %_id_j4018, 1
  store i64 %_bop4019, i64* %_3987
  br label %_end_if4025
_else_branch4024:
  %_id_i4020 = load i64, i64* %_3985
  %_bop4021 = add i64 %_id_i4020, 1
  store i64 %_bop4021, i64* %_3985
  br label %_end_if4025
_end_if4025:
  br label %_cond4027
_merge4028:
  %_id_out4029 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3988
  ret { i64, [0 x i64] }* %_id_out4029
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3904 = alloca i64
  %_argv3905 = alloca { i64, [0 x i8*] }*
  %_3906 = alloca { i64, [0 x i64] }*
  %_3927 = alloca i64
  %_3934 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc3904
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3905
  %_raw_array3907 = call i64* @oat_alloc_array(i64 9)
  %_array3908 = bitcast i64* %_raw_array3907 to { i64, [0 x i64] }*
  %_3925 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3908, i32 0, i32 1, i32 8
  store i64 67, i64* %_3925
  %_3923 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3908, i32 0, i32 1, i32 7
  store i64 89, i64* %_3923
  %_3921 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3908, i32 0, i32 1, i32 6
  store i64 69, i64* %_3921
  %_3919 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3908, i32 0, i32 1, i32 5
  store i64 65, i64* %_3919
  %_3917 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3908, i32 0, i32 1, i32 4
  store i64 65, i64* %_3917
  %_3915 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3908, i32 0, i32 1, i32 3
  store i64 90, i64* %_3915
  %_3913 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3908, i32 0, i32 1, i32 2
  store i64 72, i64* %_3913
  %_3911 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3908, i32 0, i32 1, i32 1
  store i64 70, i64* %_3911
  %_3909 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3908, i32 0, i32 1, i32 0
  store i64 65, i64* %_3909
  store { i64, [0 x i64] }* %_array3908, { i64, [0 x i64] }** %_3906
  store i64 9, i64* %_3927
  %_id_arr3928 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3906
  %_3929 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_arr3928)
  call void @print_string(i8* %_3929)
  %_string13932 = getelementptr [2 x i8], [2 x i8]* @_string3931, i32 0, i32 0
  call void @print_string(i8* %_string13932)
  %_id_arr3935 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3906
  %_id_len3936 = load i64, i64* %_3927
  %_3937 = call { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_id_arr3935, i64 %_id_len3936)
  store { i64, [0 x i64] }* %_3937, { i64, [0 x i64] }** %_3934
  %_id_sorted3938 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3934
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
