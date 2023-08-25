; generated from: hw4programs/heap.oat
target triple = "x86_64-apple-macosx10.13.0"
define void @min_heapify({ i64, [0 x i64] }* %array, i64 %i, i64 %len) {
  %_array4067 = alloca { i64, [0 x i64] }*
  %_i4068 = alloca i64
  %_len4069 = alloca i64
  %_4070 = alloca i64
  %_4073 = alloca i64
  %_4076 = alloca i64
  %_4077 = alloca i64
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_array4067
  store i64 %i, i64* %_i4068
  store i64 %len, i64* %_len4069
  %_id_i4071 = load i64, i64* %_i4068
  %_4072 = mul i64 %_id_i4071, 2
  store i64 %_4072, i64* %_4070
  %_id_i4074 = load i64, i64* %_i4068
  %_4075 = add i64 %_id_i4074, 1
  store i64 %_4075, i64* %_4073
  store i64 0, i64* %_4076
  %_id_i4078 = load i64, i64* %_i4068
  store i64 %_id_i4078, i64* %_4077
  br label %_start4096
_start4096:
  %_id_len4080 = load i64, i64* %_len4069
  %_id_l4079 = load i64, i64* %_4070
  %_4081 = icmp slt i64 %_id_l4079, %_id_len4080
  br i1 %_4081, label %_then4097, label %_else4098
_then4097:
  br label %_start4092
_start4092:
  %_id_array4086 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4067
  %_id_m4087 = load i64, i64* %_4077
  %_index_pointer4088 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4086, i32 0, i32 1, i64 %_id_m4087
  %_index_value4089 = load i64, i64* %_index_pointer4088
  %_id_array4082 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4067
  %_id_l4083 = load i64, i64* %_4070
  %_index_pointer4084 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4082, i32 0, i32 1, i64 %_id_l4083
  %_index_value4085 = load i64, i64* %_index_pointer4084
  %_4090 = icmp sgt i64 %_index_value4085, %_index_value4089
  br i1 %_4090, label %_then4093, label %_else4094
_then4093:
  %_id_l4091 = load i64, i64* %_4070
  store i64 %_id_l4091, i64* %_4077
  br label %_post4095
_else4094:
  br label %_post4095
_post4095:
  br label %_post4099
_else4098:
  br label %_post4099
_post4099:
  br label %_start4117
_start4117:
  %_id_len4101 = load i64, i64* %_len4069
  %_id_r4100 = load i64, i64* %_4073
  %_4102 = icmp slt i64 %_id_r4100, %_id_len4101
  br i1 %_4102, label %_then4118, label %_else4119
_then4118:
  br label %_start4113
_start4113:
  %_id_array4107 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4067
  %_id_m4108 = load i64, i64* %_4077
  %_index_pointer4109 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4107, i32 0, i32 1, i64 %_id_m4108
  %_index_value4110 = load i64, i64* %_index_pointer4109
  %_id_array4103 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4067
  %_id_r4104 = load i64, i64* %_4073
  %_index_pointer4105 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4103, i32 0, i32 1, i64 %_id_r4104
  %_index_value4106 = load i64, i64* %_index_pointer4105
  %_4111 = icmp sgt i64 %_index_value4106, %_index_value4110
  br i1 %_4111, label %_then4114, label %_else4115
_then4114:
  %_id_r4112 = load i64, i64* %_4073
  store i64 %_id_r4112, i64* %_4077
  br label %_post4116
_else4115:
  br label %_post4116
_post4116:
  br label %_post4120
_else4119:
  br label %_post4120
_post4120:
  br label %_start4143
_start4143:
  %_id_i4122 = load i64, i64* %_i4068
  %_id_m4121 = load i64, i64* %_4077
  %_4123 = icmp ne i64 %_id_m4121, %_id_i4122
  br i1 %_4123, label %_then4144, label %_else4145
_then4144:
  %_id_array4124 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4067
  %_id_i4125 = load i64, i64* %_i4068
  %_index_pointer4126 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4124, i32 0, i32 1, i64 %_id_i4125
  %_index_value4127 = load i64, i64* %_index_pointer4126
  store i64 %_index_value4127, i64* %_4076
  %_id_array4128 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4067
  %_id_m4129 = load i64, i64* %_4077
  %_index_pointer4130 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4128, i32 0, i32 1, i64 %_id_m4129
  %_index_value4131 = load i64, i64* %_index_pointer4130
  %_id_array4132 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4067
  %_id_i4133 = load i64, i64* %_i4068
  %_4134 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4132, i32 0, i32 1, i64 %_id_i4133
  store i64 %_index_value4131, i64* %_4134
  %_id_tmp4135 = load i64, i64* %_4076
  %_id_array4136 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4067
  %_id_m4137 = load i64, i64* %_4077
  %_4138 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4136, i32 0, i32 1, i64 %_id_m4137
  store i64 %_id_tmp4135, i64* %_4138
  %_id_array4139 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4067
  %_id_m4140 = load i64, i64* %_4077
  %_id_len4141 = load i64, i64* %_len4069
  call void @min_heapify({ i64, [0 x i64] }* %_id_array4139, i64 %_id_m4140, i64 %_id_len4141)
  br label %_post4146
_else4145:
  br label %_post4146
_post4146:
  ret void
}

define void @make_min_heap({ i64, [0 x i64] }* %array, i64 %len) {
  %_array4052 = alloca { i64, [0 x i64] }*
  %_len4053 = alloca i64
  %_4054 = alloca i64
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_array4052
  store i64 %len, i64* %_len4053
  %_id_len4055 = load i64, i64* %_len4053
  store i64 %_id_len4055, i64* %_4054
  br label %_start4064
_start4064:
  %_id_i4056 = load i64, i64* %_4054
  %_4057 = icmp sge i64 %_id_i4056, 1
  br i1 %_4057, label %_body4065, label %_else4066
_body4065:
  %_id_array4058 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4052
  %_id_i4059 = load i64, i64* %_4054
  %_id_len4060 = load i64, i64* %_len4053
  call void @min_heapify({ i64, [0 x i64] }* %_id_array4058, i64 %_id_i4059, i64 %_id_len4060)
  %_id_i4062 = load i64, i64* %_4054
  %_4063 = sub i64 %_id_i4062, 1
  store i64 %_4063, i64* %_4054
  br label %_start4064
_else4066:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3975 = alloca i64
  %_argv3976 = alloca { i64, [0 x i8*] }*
  %_3977 = alloca { i64, [0 x i64] }*
  %_4002 = alloca { i64, [0 x i64] }*
  %_4029 = alloca i64
  %_4030 = alloca i64
  store i64 %argc, i64* %_argc3975
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3976
  %_raw_array3978 = call i64* @oat_alloc_array(i64 11)
  %_array3979 = bitcast i64* %_raw_array3978 to { i64, [0 x i64] }*
  %_4000 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3979, i32 0, i32 1, i32 10
  store i64 5, i64* %_4000
  %_3998 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3979, i32 0, i32 1, i32 9
  store i64 4, i64* %_3998
  %_3996 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3979, i32 0, i32 1, i32 8
  store i64 6, i64* %_3996
  %_3994 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3979, i32 0, i32 1, i32 7
  store i64 3, i64* %_3994
  %_3992 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3979, i32 0, i32 1, i32 6
  store i64 7, i64* %_3992
  %_3990 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3979, i32 0, i32 1, i32 5
  store i64 10, i64* %_3990
  %_3988 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3979, i32 0, i32 1, i32 4
  store i64 8, i64* %_3988
  %_3986 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3979, i32 0, i32 1, i32 3
  store i64 2, i64* %_3986
  %_3984 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3979, i32 0, i32 1, i32 2
  store i64 1, i64* %_3984
  %_3982 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3979, i32 0, i32 1, i32 1
  store i64 9, i64* %_3982
  %_3980 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3979, i32 0, i32 1, i32 0
  store i64 0, i64* %_3980
  store { i64, [0 x i64] }* %_array3979, { i64, [0 x i64] }** %_3977
  %_raw_array4003 = call i64* @oat_alloc_array(i64 11)
  %_array4004 = bitcast i64* %_raw_array4003 to { i64, [0 x i64] }*
  %_4025 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4004, i32 0, i32 1, i32 10
  store i64 10, i64* %_4025
  %_4023 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4004, i32 0, i32 1, i32 9
  store i64 9, i64* %_4023
  %_4021 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4004, i32 0, i32 1, i32 8
  store i64 6, i64* %_4021
  %_4019 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4004, i32 0, i32 1, i32 7
  store i64 3, i64* %_4019
  %_4017 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4004, i32 0, i32 1, i32 6
  store i64 7, i64* %_4017
  %_4015 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4004, i32 0, i32 1, i32 5
  store i64 5, i64* %_4015
  %_4013 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4004, i32 0, i32 1, i32 4
  store i64 8, i64* %_4013
  %_4011 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4004, i32 0, i32 1, i32 3
  store i64 2, i64* %_4011
  %_4009 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4004, i32 0, i32 1, i32 2
  store i64 4, i64* %_4009
  %_4007 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4004, i32 0, i32 1, i32 1
  store i64 1, i64* %_4007
  %_4005 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4004, i32 0, i32 1, i32 0
  store i64 0, i64* %_4005
  store { i64, [0 x i64] }* %_array4004, { i64, [0 x i64] }** %_4002
  %_id_array4027 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3977
  call void @make_min_heap({ i64, [0 x i64] }* %_id_array4027, i64 10)
  store i64 0, i64* %_4029
  store i64 0, i64* %_4030
  br label %_start4048
_start4048:
  %_id_i4031 = load i64, i64* %_4030
  %_4032 = icmp slt i64 %_id_i4031, 11
  br i1 %_4032, label %_body4049, label %_else4050
_body4049:
  br label %_start4042
_start4042:
  %_id_end_result4037 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4002
  %_id_i4038 = load i64, i64* %_4030
  %_index_pointer4039 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_end_result4037, i32 0, i32 1, i64 %_id_i4038
  %_index_value4040 = load i64, i64* %_index_pointer4039
  %_id_array4033 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3977
  %_id_i4034 = load i64, i64* %_4030
  %_index_pointer4035 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4033, i32 0, i32 1, i64 %_id_i4034
  %_index_value4036 = load i64, i64* %_index_pointer4035
  %_4041 = icmp ne i64 %_index_value4036, %_index_value4040
  br i1 %_4041, label %_then4043, label %_else4044
_then4043:
  store i64 1, i64* %_4029
  br label %_post4045
_else4044:
  br label %_post4045
_post4045:
  %_id_i4046 = load i64, i64* %_4030
  %_4047 = add i64 %_id_i4046, 1
  store i64 %_4047, i64* %_4030
  br label %_start4048
_else4050:
  %_id_same4051 = load i64, i64* %_4029
  ret i64 %_id_same4051
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
