; generated from: hw4programs/fibo.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @fibR(i64 %n) {
  %_n4142 = alloca i64
  store i64 %n, i64* %_n4142
  br label %_start4145
_start4145:
  %_id_n4143 = load i64, i64* %_n4142
  %_4144 = icmp eq i64 %_id_n4143, 0
  br i1 %_4144, label %_then4146, label %_else4147
_then4146:
  ret i64 0
_else4147:
  br label %_post4148
_post4148:
  br label %_start4151
_start4151:
  %_id_n4149 = load i64, i64* %_n4142
  %_4150 = icmp eq i64 %_id_n4149, 1
  br i1 %_4150, label %_then4152, label %_else4153
_then4152:
  ret i64 1
_else4153:
  br label %_post4154
_post4154:
  %_id_n4158 = load i64, i64* %_n4142
  %_4159 = sub i64 %_id_n4158, 2
  %_4160 = call i64 @fibR(i64 %_4159)
  %_id_n4155 = load i64, i64* %_n4142
  %_4156 = sub i64 %_id_n4155, 1
  %_4157 = call i64 @fibR(i64 %_4156)
  %_4161 = add i64 %_4157, %_4160
  ret i64 %_4161
}

define i64 @fibI(i64 %n) {
  %_n4108 = alloca i64
  %_4109 = alloca i64
  %_4110 = alloca i64
  %_4128 = alloca i64
  store i64 %n, i64* %_n4108
  store i64 0, i64* %_4109
  store i64 1, i64* %_4110
  br label %_start4114
_start4114:
  %_id_n4111 = load i64, i64* %_n4108
  %_4112 = icmp eq i64 %_id_n4111, 0
  br i1 %_4112, label %_then4115, label %_else4116
_then4115:
  %_id_a4113 = load i64, i64* %_4109
  ret i64 %_id_a4113
_else4116:
  br label %_post4117
_post4117:
  br label %_start4121
_start4121:
  %_id_n4118 = load i64, i64* %_n4108
  %_4119 = icmp eq i64 %_id_n4118, 1
  br i1 %_4119, label %_then4122, label %_else4123
_then4122:
  %_id_b4120 = load i64, i64* %_4110
  ret i64 %_id_b4120
_else4123:
  br label %_post4124
_post4124:
  br label %_start4136
_start4136:
  %_id_n4125 = load i64, i64* %_n4108
  %_4126 = sub i64 %_id_n4125, 2
  %_4127 = icmp sgt i64 %_4126, 0
  br i1 %_4127, label %_body4137, label %_else4138
_body4137:
  %_id_b4129 = load i64, i64* %_4110
  store i64 %_id_b4129, i64* %_4128
  %_id_a4131 = load i64, i64* %_4109
  %_id_b4130 = load i64, i64* %_4110
  %_4132 = add i64 %_id_b4130, %_id_a4131
  store i64 %_4132, i64* %_4110
  %_id_old4133 = load i64, i64* %_4128
  store i64 %_id_old4133, i64* %_4109
  %_id_n4134 = load i64, i64* %_n4108
  %_4135 = sub i64 %_id_n4134, 1
  store i64 %_4135, i64* %_n4108
  br label %_start4136
_else4138:
  %_id_b4140 = load i64, i64* %_4110
  %_id_a4139 = load i64, i64* %_4109
  %_4141 = add i64 %_id_a4139, %_id_b4140
  ret i64 %_4141
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4095 = alloca i64
  %_argv4096 = alloca { i64, [0 x i8*] }*
  %_4097 = alloca i64
  store i64 %argc, i64* %_argc4095
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4096
  store i64 1, i64* %_4097
  br label %_start4103
_start4103:
  %_4100 = call i64 @fibI(i64 12)
  %_4101 = icmp eq i64 %_4100, 144
  %_4098 = call i64 @fibR(i64 12)
  %_4099 = icmp eq i64 %_4098, 144
  %_4102 = and i1 %_4099, %_4101
  br i1 %_4102, label %_then4104, label %_else4105
_then4104:
  store i64 0, i64* %_4097
  br label %_post4106
_else4105:
  br label %_post4106
_post4106:
  %_id_val4107 = load i64, i64* %_4097
  ret i64 %_id_val4107
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
