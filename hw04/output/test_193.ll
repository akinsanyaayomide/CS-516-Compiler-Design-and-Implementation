; generated from: hw4programs/binary_gcd.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_x4154 = alloca i64
  %_y4155 = alloca i64
  store i64 %x, i64* %_x4154
  store i64 %y, i64* %_y4155
  br label %_start4160
_start4160:
  %_id_y4157 = load i64, i64* %_y4155
  %_id_x4156 = load i64, i64* %_x4154
  %_4158 = icmp eq i64 %_id_x4156, %_id_y4157
  br i1 %_4158, label %_then4161, label %_else4162
_then4161:
  %_id_x4159 = load i64, i64* %_x4154
  ret i64 %_id_x4159
_else4162:
  br label %_post4163
_post4163:
  br label %_start4167
_start4167:
  %_id_x4164 = load i64, i64* %_x4154
  %_4165 = icmp eq i64 %_id_x4164, 0
  br i1 %_4165, label %_then4168, label %_else4169
_then4168:
  %_id_y4166 = load i64, i64* %_y4155
  ret i64 %_id_y4166
_else4169:
  br label %_post4170
_post4170:
  br label %_start4174
_start4174:
  %_id_y4171 = load i64, i64* %_y4155
  %_4172 = icmp eq i64 %_id_y4171, 0
  br i1 %_4172, label %_then4175, label %_else4176
_then4175:
  %_id_x4173 = load i64, i64* %_x4154
  ret i64 %_id_x4173
_else4176:
  br label %_post4177
_post4177:
  br label %_start4200
_start4200:
  %_id_x4178 = load i64, i64* %_x4154
  %_4179 = mul i64 %_id_x4178, -1
  %_4180 = add i64 %_4179, -1
  %_4181 = and i64 %_4180, 1
  %_4182 = icmp eq i64 %_4181, 1
  br i1 %_4182, label %_then4201, label %_else4202
_then4201:
  br label %_start4196
_start4196:
  %_id_y4183 = load i64, i64* %_y4155
  %_4184 = and i64 %_id_y4183, 1
  %_4185 = icmp eq i64 %_4184, 1
  br i1 %_4185, label %_then4197, label %_else4198
_then4197:
  %_id_x4186 = load i64, i64* %_x4154
  %_4187 = lshr i64 %_id_x4186, 1
  %_id_y4188 = load i64, i64* %_y4155
  %_4189 = call i64 @binary_gcd(i64 %_4187, i64 %_id_y4188)
  ret i64 %_4189
_else4198:
  %_id_x4190 = load i64, i64* %_x4154
  %_4191 = lshr i64 %_id_x4190, 1
  %_id_y4192 = load i64, i64* %_y4155
  %_4193 = lshr i64 %_id_y4192, 1
  %_4194 = call i64 @binary_gcd(i64 %_4191, i64 %_4193)
  %_4195 = shl i64 %_4194, 1
  ret i64 %_4195
_post4199:
  br label %_post4203
_else4202:
  br label %_post4203
_post4203:
  br label %_start4213
_start4213:
  %_id_y4204 = load i64, i64* %_y4155
  %_4205 = mul i64 %_id_y4204, -1
  %_4206 = add i64 %_4205, -1
  %_4207 = and i64 %_4206, 1
  %_4208 = icmp eq i64 %_4207, 1
  br i1 %_4208, label %_then4214, label %_else4215
_then4214:
  %_id_x4209 = load i64, i64* %_x4154
  %_id_y4210 = load i64, i64* %_y4155
  %_4211 = lshr i64 %_id_y4210, 1
  %_4212 = call i64 @binary_gcd(i64 %_id_x4209, i64 %_4211)
  ret i64 %_4212
_else4215:
  br label %_post4216
_post4216:
  br label %_start4226
_start4226:
  %_id_y4218 = load i64, i64* %_y4155
  %_id_x4217 = load i64, i64* %_x4154
  %_4219 = icmp sgt i64 %_id_x4217, %_id_y4218
  br i1 %_4219, label %_then4227, label %_else4228
_then4227:
  %_id_y4221 = load i64, i64* %_y4155
  %_id_x4220 = load i64, i64* %_x4154
  %_4222 = sub i64 %_id_x4220, %_id_y4221
  %_4223 = lshr i64 %_4222, 1
  %_id_y4224 = load i64, i64* %_y4155
  %_4225 = call i64 @binary_gcd(i64 %_4223, i64 %_id_y4224)
  ret i64 %_4225
_else4228:
  br label %_post4229
_post4229:
  %_id_x4231 = load i64, i64* %_x4154
  %_id_y4230 = load i64, i64* %_y4155
  %_4232 = sub i64 %_id_y4230, %_id_x4231
  %_4233 = lshr i64 %_4232, 1
  %_id_x4234 = load i64, i64* %_x4154
  %_4235 = call i64 @binary_gcd(i64 %_4233, i64 %_id_x4234)
  ret i64 %_4235
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4147 = alloca i64
  %_argv4148 = alloca { i64, [0 x i8*] }*
  %_4149 = alloca i64
  %_4150 = alloca i64
  store i64 %argc, i64* %_argc4147
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4148
  store i64 21, i64* %_4149
  store i64 15, i64* %_4150
  %_id_x4151 = load i64, i64* %_4149
  %_id_y4152 = load i64, i64* %_4150
  %_4153 = call i64 @binary_gcd(i64 %_id_x4151, i64 %_id_y4152)
  ret i64 %_4153
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
