; generated from: hw4programs/fibo.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @fibR(i64 %n) {
  %_n4137 = alloca i64
  store i64 %n, i64* %_n4137
  br label %_start4140
_start4140:
  %_id_n4138 = load i64, i64* %_n4137
  %_4139 = icmp eq i64 %_id_n4138, 0
  br i1 %_4139, label %_then4141, label %_else4142
_then4141:
  ret i64 0
_else4142:
  br label %_post4143
_post4143:
  br label %_start4146
_start4146:
  %_id_n4144 = load i64, i64* %_n4137
  %_4145 = icmp eq i64 %_id_n4144, 1
  br i1 %_4145, label %_then4147, label %_else4148
_then4147:
  ret i64 1
_else4148:
  br label %_post4149
_post4149:
  %_id_n4153 = load i64, i64* %_n4137
  %_4154 = sub i64 %_id_n4153, 2
  %_4155 = call i64 @fibR(i64 %_4154)
  %_id_n4150 = load i64, i64* %_n4137
  %_4151 = sub i64 %_id_n4150, 1
  %_4152 = call i64 @fibR(i64 %_4151)
  %_4156 = add i64 %_4152, %_4155
  ret i64 %_4156
}

define i64 @fibI(i64 %n) {
  %_n4103 = alloca i64
  %_4104 = alloca i64
  %_4105 = alloca i64
  %_4123 = alloca i64
  store i64 %n, i64* %_n4103
  store i64 0, i64* %_4104
  store i64 1, i64* %_4105
  br label %_start4109
_start4109:
  %_id_n4106 = load i64, i64* %_n4103
  %_4107 = icmp eq i64 %_id_n4106, 0
  br i1 %_4107, label %_then4110, label %_else4111
_then4110:
  %_id_a4108 = load i64, i64* %_4104
  ret i64 %_id_a4108
_else4111:
  br label %_post4112
_post4112:
  br label %_start4116
_start4116:
  %_id_n4113 = load i64, i64* %_n4103
  %_4114 = icmp eq i64 %_id_n4113, 1
  br i1 %_4114, label %_then4117, label %_else4118
_then4117:
  %_id_b4115 = load i64, i64* %_4105
  ret i64 %_id_b4115
_else4118:
  br label %_post4119
_post4119:
  br label %_start4131
_start4131:
  %_id_n4120 = load i64, i64* %_n4103
  %_4121 = sub i64 %_id_n4120, 2
  %_4122 = icmp sgt i64 %_4121, 0
  br i1 %_4122, label %_body4132, label %_else4133
_body4132:
  %_id_b4124 = load i64, i64* %_4105
  store i64 %_id_b4124, i64* %_4123
  %_id_a4126 = load i64, i64* %_4104
  %_id_b4125 = load i64, i64* %_4105
  %_4127 = add i64 %_id_b4125, %_id_a4126
  store i64 %_4127, i64* %_4105
  %_id_old4128 = load i64, i64* %_4123
  store i64 %_id_old4128, i64* %_4104
  %_id_n4129 = load i64, i64* %_n4103
  %_4130 = sub i64 %_id_n4129, 1
  store i64 %_4130, i64* %_n4103
  br label %_start4131
_else4133:
  %_id_b4135 = load i64, i64* %_4105
  %_id_a4134 = load i64, i64* %_4104
  %_4136 = add i64 %_id_a4134, %_id_b4135
  ret i64 %_4136
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4090 = alloca i64
  %_argv4091 = alloca { i64, [0 x i8*] }*
  %_4092 = alloca i64
  store i64 %argc, i64* %_argc4090
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4091
  store i64 1, i64* %_4092
  br label %_start4098
_start4098:
  %_4095 = call i64 @fibI(i64 12)
  %_4096 = icmp eq i64 %_4095, 144
  %_4093 = call i64 @fibR(i64 12)
  %_4094 = icmp eq i64 %_4093, 144
  %_4097 = and i1 %_4094, %_4096
  br i1 %_4097, label %_then4099, label %_else4100
_then4099:
  store i64 0, i64* %_4092
  br label %_post4101
_else4100:
  br label %_post4101
_post4101:
  %_id_val4102 = load i64, i64* %_4092
  ret i64 %_id_val4102
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
