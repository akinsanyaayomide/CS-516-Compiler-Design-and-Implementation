; generated from: hw4programs/count_sort.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string3936 = global [2 x i8] c"
\00"

define i64 @min({ i64, [0 x i64] }* %arr, i64 %len) {
  %_arr4065 = alloca { i64, [0 x i64] }*
  %_len4066 = alloca i64
  %_4067 = alloca i64
  %_4071 = alloca i64
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4065
  store i64 %len, i64* %_len4066
  %_id_arr4068 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4065
  %_index_pointer4069 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4068, i32 0, i32 1, i32 0
  %_index_value4070 = load i64, i64* %_index_pointer4069
  store i64 %_index_value4070, i64* %_4067
  store i64 0, i64* %_4071
  br label %_start4091
_start4091:
  %_id_len4073 = load i64, i64* %_len4066
  %_id_i4072 = load i64, i64* %_4071
  %_4074 = icmp slt i64 %_id_i4072, %_id_len4073
  br i1 %_4074, label %_body4092, label %_else4093
_body4092:
  br label %_start4085
_start4085:
  %_id_min4079 = load i64, i64* %_4067
  %_id_arr4075 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4065
  %_id_i4076 = load i64, i64* %_4071
  %_index_pointer4077 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4075, i32 0, i32 1, i64 %_id_i4076
  %_index_value4078 = load i64, i64* %_index_pointer4077
  %_4080 = icmp slt i64 %_index_value4078, %_id_min4079
  br i1 %_4080, label %_then4086, label %_else4087
_then4086:
  %_id_arr4081 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4065
  %_id_i4082 = load i64, i64* %_4071
  %_index_pointer4083 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4081, i32 0, i32 1, i64 %_id_i4082
  %_index_value4084 = load i64, i64* %_index_pointer4083
  store i64 %_index_value4084, i64* %_4067
  br label %_post4088
_else4087:
  br label %_post4088
_post4088:
  %_id_i4089 = load i64, i64* %_4071
  %_4090 = add i64 %_id_i4089, 1
  store i64 %_4090, i64* %_4071
  br label %_start4091
_else4093:
  %_id_min4094 = load i64, i64* %_4067
  ret i64 %_id_min4094
}

define i64 @max({ i64, [0 x i64] }* %arr, i64 %len) {
  %_arr4035 = alloca { i64, [0 x i64] }*
  %_len4036 = alloca i64
  %_4037 = alloca i64
  %_4041 = alloca i64
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4035
  store i64 %len, i64* %_len4036
  %_id_arr4038 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4035
  %_index_pointer4039 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4038, i32 0, i32 1, i32 0
  %_index_value4040 = load i64, i64* %_index_pointer4039
  store i64 %_index_value4040, i64* %_4037
  store i64 0, i64* %_4041
  br label %_start4061
_start4061:
  %_id_len4043 = load i64, i64* %_len4036
  %_id_i4042 = load i64, i64* %_4041
  %_4044 = icmp slt i64 %_id_i4042, %_id_len4043
  br i1 %_4044, label %_body4062, label %_else4063
_body4062:
  br label %_start4055
_start4055:
  %_id_max4049 = load i64, i64* %_4037
  %_id_arr4045 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4035
  %_id_i4046 = load i64, i64* %_4041
  %_index_pointer4047 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4045, i32 0, i32 1, i64 %_id_i4046
  %_index_value4048 = load i64, i64* %_index_pointer4047
  %_4050 = icmp sgt i64 %_index_value4048, %_id_max4049
  br i1 %_4050, label %_then4056, label %_else4057
_then4056:
  %_id_arr4051 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4035
  %_id_i4052 = load i64, i64* %_4041
  %_index_pointer4053 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4051, i32 0, i32 1, i64 %_id_i4052
  %_index_value4054 = load i64, i64* %_index_pointer4053
  store i64 %_index_value4054, i64* %_4037
  br label %_post4058
_else4057:
  br label %_post4058
_post4058:
  %_id_i4059 = load i64, i64* %_4041
  %_4060 = add i64 %_id_i4059, 1
  store i64 %_4060, i64* %_4041
  br label %_start4061
_else4063:
  %_id_max4064 = load i64, i64* %_4037
  ret i64 %_id_max4064
}

define { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %arr, i64 %len) {
  %_arr3946 = alloca { i64, [0 x i64] }*
  %_len3947 = alloca i64
  %_3948 = alloca i64
  %_3952 = alloca i64
  %_3956 = alloca { i64, [0 x i64] }*
  %_3963 = alloca i64
  %_3990 = alloca i64
  %_3992 = alloca i64
  %_3993 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr3946
  store i64 %len, i64* %_len3947
  %_id_arr3949 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3946
  %_id_len3950 = load i64, i64* %_len3947
  %_3951 = call i64 @min({ i64, [0 x i64] }* %_id_arr3949, i64 %_id_len3950)
  store i64 %_3951, i64* %_3948
  %_id_arr3953 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3946
  %_id_len3954 = load i64, i64* %_len3947
  %_3955 = call i64 @max({ i64, [0 x i64] }* %_id_arr3953, i64 %_id_len3954)
  store i64 %_3955, i64* %_3952
  %_id_min3958 = load i64, i64* %_3948
  %_id_max3957 = load i64, i64* %_3952
  %_3959 = sub i64 %_id_max3957, %_id_min3958
  %_3960 = add i64 %_3959, 1
  %_raw_array3961 = call i64* @oat_alloc_array(i64 %_3960)
  %_array3962 = bitcast i64* %_raw_array3961 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3962, { i64, [0 x i64] }** %_3956
  store i64 0, i64* %_3963
  br label %_start3987
_start3987:
  %_id_len3965 = load i64, i64* %_len3947
  %_id_i3964 = load i64, i64* %_3963
  %_3966 = icmp slt i64 %_id_i3964, %_id_len3965
  br i1 %_3966, label %_body3988, label %_else3989
_body3988:
  %_id_counts3967 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3956
  %_id_min3972 = load i64, i64* %_3948
  %_id_arr3968 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3946
  %_id_i3969 = load i64, i64* %_3963
  %_index_pointer3970 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr3968, i32 0, i32 1, i64 %_id_i3969
  %_index_value3971 = load i64, i64* %_index_pointer3970
  %_3973 = sub i64 %_index_value3971, %_id_min3972
  %_index_pointer3974 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_counts3967, i32 0, i32 1, i64 %_3973
  %_index_value3975 = load i64, i64* %_index_pointer3974
  %_3976 = add i64 %_index_value3975, 1
  %_id_counts3977 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3956
  %_id_min3982 = load i64, i64* %_3948
  %_id_arr3978 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3946
  %_id_i3979 = load i64, i64* %_3963
  %_index_pointer3980 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr3978, i32 0, i32 1, i64 %_id_i3979
  %_index_value3981 = load i64, i64* %_index_pointer3980
  %_3983 = sub i64 %_index_value3981, %_id_min3982
  %_3984 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_counts3977, i32 0, i32 1, i64 %_3983
  store i64 %_3976, i64* %_3984
  %_id_i3985 = load i64, i64* %_3963
  %_3986 = add i64 %_id_i3985, 1
  store i64 %_3986, i64* %_3963
  br label %_start3987
_else3989:
  %_id_min3991 = load i64, i64* %_3948
  store i64 %_id_min3991, i64* %_3990
  store i64 0, i64* %_3992
  %_id_len3994 = load i64, i64* %_len3947
  %_raw_array3995 = call i64* @oat_alloc_array(i64 %_id_len3994)
  %_array3996 = bitcast i64* %_raw_array3995 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3996, { i64, [0 x i64] }** %_3993
  br label %_start4031
_start4031:
  %_id_max3998 = load i64, i64* %_3952
  %_id_i3997 = load i64, i64* %_3990
  %_3999 = icmp sle i64 %_id_i3997, %_id_max3998
  br i1 %_3999, label %_body4032, label %_else4033
_body4032:
  br label %_start4027
_start4027:
  %_id_counts4000 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3956
  %_id_min4002 = load i64, i64* %_3948
  %_id_i4001 = load i64, i64* %_3990
  %_4003 = sub i64 %_id_i4001, %_id_min4002
  %_index_pointer4004 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_counts4000, i32 0, i32 1, i64 %_4003
  %_index_value4005 = load i64, i64* %_index_pointer4004
  %_4006 = icmp sgt i64 %_index_value4005, 0
  br i1 %_4006, label %_then4028, label %_else4029
_then4028:
  %_id_i4007 = load i64, i64* %_3990
  %_id_out4008 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3993
  %_id_j4009 = load i64, i64* %_3992
  %_4010 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_out4008, i32 0, i32 1, i64 %_id_j4009
  store i64 %_id_i4007, i64* %_4010
  %_id_counts4011 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3956
  %_id_min4013 = load i64, i64* %_3948
  %_id_i4012 = load i64, i64* %_3990
  %_4014 = sub i64 %_id_i4012, %_id_min4013
  %_index_pointer4015 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_counts4011, i32 0, i32 1, i64 %_4014
  %_index_value4016 = load i64, i64* %_index_pointer4015
  %_4017 = sub i64 %_index_value4016, 1
  %_id_counts4018 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3956
  %_id_min4020 = load i64, i64* %_3948
  %_id_i4019 = load i64, i64* %_3990
  %_4021 = sub i64 %_id_i4019, %_id_min4020
  %_4022 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_counts4018, i32 0, i32 1, i64 %_4021
  store i64 %_4017, i64* %_4022
  %_id_j4023 = load i64, i64* %_3992
  %_4024 = add i64 %_id_j4023, 1
  store i64 %_4024, i64* %_3992
  br label %_post4030
_else4029:
  %_id_i4025 = load i64, i64* %_3990
  %_4026 = add i64 %_id_i4025, 1
  store i64 %_4026, i64* %_3990
  br label %_post4030
_post4030:
  br label %_start4031
_else4033:
  %_id_out4034 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3993
  ret { i64, [0 x i64] }* %_id_out4034
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3909 = alloca i64
  %_argv3910 = alloca { i64, [0 x i8*] }*
  %_3911 = alloca { i64, [0 x i64] }*
  %_3932 = alloca i64
  %_3939 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc3909
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3910
  %_raw_array3912 = call i64* @oat_alloc_array(i64 9)
  %_array3913 = bitcast i64* %_raw_array3912 to { i64, [0 x i64] }*
  %_3930 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3913, i32 0, i32 1, i32 8
  store i64 67, i64* %_3930
  %_3928 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3913, i32 0, i32 1, i32 7
  store i64 89, i64* %_3928
  %_3926 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3913, i32 0, i32 1, i32 6
  store i64 69, i64* %_3926
  %_3924 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3913, i32 0, i32 1, i32 5
  store i64 65, i64* %_3924
  %_3922 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3913, i32 0, i32 1, i32 4
  store i64 65, i64* %_3922
  %_3920 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3913, i32 0, i32 1, i32 3
  store i64 90, i64* %_3920
  %_3918 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3913, i32 0, i32 1, i32 2
  store i64 72, i64* %_3918
  %_3916 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3913, i32 0, i32 1, i32 1
  store i64 70, i64* %_3916
  %_3914 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3913, i32 0, i32 1, i32 0
  store i64 65, i64* %_3914
  store { i64, [0 x i64] }* %_array3913, { i64, [0 x i64] }** %_3911
  store i64 9, i64* %_3932
  %_id_arr3933 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3911
  %_3934 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_arr3933)
  call void @print_string(i8* %_3934)
  %_string13937 = getelementptr [2 x i8], [2 x i8]* @_string3936, i32 0, i32 0
  call void @print_string(i8* %_string13937)
  %_id_arr3940 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3911
  %_id_len3941 = load i64, i64* %_3932
  %_3942 = call { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_id_arr3940, i64 %_id_len3941)
  store { i64, [0 x i64] }* %_3942, { i64, [0 x i64] }** %_3939
  %_id_sorted3943 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3939
  %_3944 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_sorted3943)
  call void @print_string(i8* %_3944)
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
