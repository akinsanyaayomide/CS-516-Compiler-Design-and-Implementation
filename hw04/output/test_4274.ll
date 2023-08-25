; generated from: hw4programs/binary_search.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string4078 = global [9 x i8] c"Correct!\00"

define i64 @euclid_division(i64 %numerator, i64 %denominator) {
  %_numerator4133 = alloca i64
  %_denominator4134 = alloca i64
  %_4146 = alloca i64
  %_4147 = alloca i64
  store i64 %numerator, i64* %_numerator4133
  store i64 %denominator, i64* %_denominator4134
  br label %_begin_if4142
_begin_if4142:
  %_id_denominator4135 = load i64, i64* %_denominator4134
  %_bop4136 = icmp slt i64 %_id_denominator4135, 0
  br i1 %_bop4136, label %_then_branch4143, label %_else_branch4144
_then_branch4143:
  %_id_numerator4137 = load i64, i64* %_numerator4133
  %_id_denominator4138 = load i64, i64* %_denominator4134
  %_unop4139 = sub i64 0, %_id_denominator4138
  %_4140 = call i64 @euclid_division(i64 %_id_numerator4137, i64 %_unop4139)
  %_unop4141 = sub i64 0, %_4140
  ret i64 %_unop4141
_else_branch4144:
  br label %_end_if4145
_end_if4145:
  store i64 0, i64* %_4146
  %_id_numerator4148 = load i64, i64* %_numerator4133
  store i64 %_id_numerator4148, i64* %_4147
  br label %_begin_if4175
_begin_if4175:
  %_id_numerator4149 = load i64, i64* %_numerator4133
  %_bop4150 = icmp slt i64 %_id_numerator4149, 0
  br i1 %_bop4150, label %_then_branch4176, label %_else_branch4177
_then_branch4176:
  %_id_numerator4151 = load i64, i64* %_numerator4133
  %_unop4152 = sub i64 0, %_id_numerator4151
  store i64 %_unop4152, i64* %_4147
  br label %_cond4162
_cond4162:
  %_id_remainder4153 = load i64, i64* %_4147
  %_id_denominator4154 = load i64, i64* %_denominator4134
  %_bop4155 = icmp sge i64 %_id_remainder4153, %_id_denominator4154
  br i1 %_bop4155, label %_if4161, label %_merge4163
_if4161:
  %_id_quotient4156 = load i64, i64* %_4146
  %_bop4157 = add i64 %_id_quotient4156, 1
  store i64 %_bop4157, i64* %_4146
  %_id_remainder4158 = load i64, i64* %_4147
  %_id_denominator4159 = load i64, i64* %_denominator4134
  %_bop4160 = sub i64 %_id_remainder4158, %_id_denominator4159
  store i64 %_bop4160, i64* %_4147
  br label %_cond4162
_merge4163:
  br label %_begin_if4171
_begin_if4171:
  %_id_remainder4164 = load i64, i64* %_4147
  %_bop4165 = icmp eq i64 %_id_remainder4164, 0
  br i1 %_bop4165, label %_then_branch4172, label %_else_branch4173
_then_branch4172:
  %_id_quotient4166 = load i64, i64* %_4146
  %_unop4167 = sub i64 0, %_id_quotient4166
  ret i64 %_unop4167
_else_branch4173:
  %_id_quotient4168 = load i64, i64* %_4146
  %_unop4169 = sub i64 0, %_id_quotient4168
  %_bop4170 = sub i64 %_unop4169, 1
  ret i64 %_bop4170
_end_if4174:
  br label %_end_if4178
_else_branch4177:
  br label %_end_if4178
_end_if4178:
  br label %_cond4188
_cond4188:
  %_id_remainder4179 = load i64, i64* %_4147
  %_id_denominator4180 = load i64, i64* %_denominator4134
  %_bop4181 = icmp sge i64 %_id_remainder4179, %_id_denominator4180
  br i1 %_bop4181, label %_if4187, label %_merge4189
_if4187:
  %_id_quotient4182 = load i64, i64* %_4146
  %_bop4183 = add i64 %_id_quotient4182, 1
  store i64 %_bop4183, i64* %_4146
  %_id_remainder4184 = load i64, i64* %_4147
  %_id_denominator4185 = load i64, i64* %_denominator4134
  %_bop4186 = sub i64 %_id_remainder4184, %_id_denominator4185
  store i64 %_bop4186, i64* %_4147
  br label %_cond4188
_merge4189:
  %_id_quotient4190 = load i64, i64* %_4146
  ret i64 %_id_quotient4190
}

define i1 @binary_search({ i64, [0 x i64] }* %input, i64 %key, i64 %min, i64 %max) {
  %_input4085 = alloca { i64, [0 x i64] }*
  %_key4086 = alloca i64
  %_min4087 = alloca i64
  %_max4088 = alloca i64
  %_4096 = alloca i64
  store { i64, [0 x i64] }* %input, { i64, [0 x i64] }** %_input4085
  store i64 %key, i64* %_key4086
  store i64 %min, i64* %_min4087
  store i64 %max, i64* %_max4088
  br label %_begin_if4092
_begin_if4092:
  %_id_max4089 = load i64, i64* %_max4088
  %_id_min4090 = load i64, i64* %_min4087
  %_bop4091 = icmp slt i64 %_id_max4089, %_id_min4090
  br i1 %_bop4091, label %_then_branch4093, label %_else_branch4094
_then_branch4093:
  ret i1 0
_else_branch4094:
  br label %_end_if4095
_end_if4095:
  %_id_max4097 = load i64, i64* %_max4088
  %_id_min4098 = load i64, i64* %_min4087
  %_bop4099 = add i64 %_id_max4097, %_id_min4098
  %_4100 = call i64 @euclid_division(i64 %_bop4099, i64 2)
  store i64 %_4100, i64* %_4096
  br label %_begin_if4113
_begin_if4113:
  %_id_input4101 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4085
  %_id_midpt4102 = load i64, i64* %_4096
  %_index_pointer4104 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_input4101, i32 0, i32 1, i64 %_id_midpt4102
  %_index_value4103 = load i64, i64* %_index_pointer4104
  %_id_key4105 = load i64, i64* %_key4086
  %_bop4106 = icmp sgt i64 %_index_value4103, %_id_key4105
  br i1 %_bop4106, label %_then_branch4114, label %_else_branch4115
_then_branch4114:
  %_id_input4107 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4085
  %_id_key4108 = load i64, i64* %_key4086
  %_id_min4109 = load i64, i64* %_min4087
  %_id_midpt4110 = load i64, i64* %_4096
  %_bop4111 = sub i64 %_id_midpt4110, 1
  %_4112 = call i1 @binary_search({ i64, [0 x i64] }* %_id_input4107, i64 %_id_key4108, i64 %_id_min4109, i64 %_bop4111)
  ret i1 %_4112
_else_branch4115:
  br label %_end_if4116
_end_if4116:
  br label %_begin_if4129
_begin_if4129:
  %_id_input4117 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4085
  %_id_midpt4118 = load i64, i64* %_4096
  %_index_pointer4120 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_input4117, i32 0, i32 1, i64 %_id_midpt4118
  %_index_value4119 = load i64, i64* %_index_pointer4120
  %_id_key4121 = load i64, i64* %_key4086
  %_bop4122 = icmp slt i64 %_index_value4119, %_id_key4121
  br i1 %_bop4122, label %_then_branch4130, label %_else_branch4131
_then_branch4130:
  %_id_input4123 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4085
  %_id_key4124 = load i64, i64* %_key4086
  %_id_midpt4125 = load i64, i64* %_4096
  %_bop4126 = add i64 %_id_midpt4125, 1
  %_id_max4127 = load i64, i64* %_max4088
  %_4128 = call i1 @binary_search({ i64, [0 x i64] }* %_id_input4123, i64 %_id_key4124, i64 %_bop4126, i64 %_id_max4127)
  ret i1 %_4128
_else_branch4131:
  ret i1 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4045 = alloca i64
  %_argv4046 = alloca { i64, [0 x i8*] }*
  %_4047 = alloca { i64, [0 x i64] }*
  %_4050 = alloca i64
  %_4064 = alloca i1
  %_4067 = alloca i1
  store i64 %argc, i64* %_argc4045
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4046
  %_raw_array4048 = call i64* @oat_alloc_array(i64 100)
  %_array4049 = bitcast i64* %_raw_array4048 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4049, { i64, [0 x i64] }** %_4047
  store i64 0, i64* %_4050
  br label %_cond4062
_cond4062:
  %_id_i4051 = load i64, i64* %_4050
  %_bop4052 = icmp slt i64 %_id_i4051, 100
  br i1 %_bop4052, label %_if4061, label %_merge4063
_if4061:
  %_id_i4053 = load i64, i64* %_4050
  %_bop4054 = mul i64 2, %_id_i4053
  %_bop4055 = add i64 %_bop4054, 1
  %_id_test_array4056 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4047
  %_id_i4057 = load i64, i64* %_4050
  %_4058 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_test_array4056, i32 0, i32 1, i64 %_id_i4057
  store i64 %_bop4055, i64* %_4058
  %_id_i4059 = load i64, i64* %_4050
  %_bop4060 = add i64 %_id_i4059, 1
  store i64 %_bop4060, i64* %_4050
  br label %_cond4062
_merge4063:
  %_id_test_array4065 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4047
  %_4066 = call i1 @binary_search({ i64, [0 x i64] }* %_id_test_array4065, i64 80, i64 0, i64 99)
  store i1 %_4066, i1* %_4064
  %_id_test_array4068 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4047
  %_4069 = call i1 @binary_search({ i64, [0 x i64] }* %_id_test_array4068, i64 81, i64 0, i64 99)
  store i1 %_4069, i1* %_4067
  br label %_begin_if4081
_begin_if4081:
  %_id_even4070 = load i1, i1* %_4064
  %_id_odd4071 = load i1, i1* %_4067
  %_bop4072 = and i1 %_id_even4070, %_id_odd4071
  %_unop4073 = icmp eq i1 %_bop4072, 0
  %_id_even4074 = load i1, i1* %_4064
  %_id_odd4075 = load i1, i1* %_4067
  %_bop4076 = or i1 %_id_even4074, %_id_odd4075
  %_bop4077 = and i1 %_unop4073, %_bop4076
  br i1 %_bop4077, label %_then_branch4082, label %_else_branch4083
_then_branch4082:
  %_string14079 = getelementptr [9 x i8], [9 x i8]* @_string4078, i32 0, i32 0
  call void @print_string(i8* %_string14079)
  br label %_end_if4084
_else_branch4083:
  br label %_end_if4084
_end_if4084:
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
