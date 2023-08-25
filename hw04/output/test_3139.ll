; generated from: hw4programs/heap.oat
target triple = "x86_64-apple-macosx10.13.0"
define void @min_heapify({ i64, [0 x i64] }* %array, i64 %i, i64 %len) {
  %_array4249 = alloca { i64, [0 x i64] }*
  %_i4250 = alloca i64
  %_len4251 = alloca i64
  %_4252 = alloca i64
  %_4255 = alloca i64
  %_4258 = alloca i64
  %_4259 = alloca i64
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_array4249
  store i64 %i, i64* %_i4250
  store i64 %len, i64* %_len4251
  %_id_i4253 = load i64, i64* %_i4250
  %_4254 = mul i64 %_id_i4253, 2
  store i64 %_4254, i64* %_4252
  %_id_i4256 = load i64, i64* %_i4250
  %_4257 = add i64 %_id_i4256, 1
  store i64 %_4257, i64* %_4255
  store i64 0, i64* %_4258
  %_id_i4260 = load i64, i64* %_i4250
  store i64 %_id_i4260, i64* %_4259
  br label %_begin_if4278
_begin_if4278:
  %_id_len4262 = load i64, i64* %_len4251
  %_id_l4261 = load i64, i64* %_4252
  %_4263 = icmp slt i64 %_id_l4261, %_id_len4262
  br i1 %_4263, label %_then_branch4279, label %_else_branch4280
_then_branch4279:
  br label %_begin_if4274
_begin_if4274:
  %_id_array4268 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4249
  %_id_m4269 = load i64, i64* %_4259
  %_index_pointer4270 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4268, i32 0, i32 1, i64 %_id_m4269
  %_index_value4271 = load i64, i64* %_index_pointer4270
  %_id_array4264 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4249
  %_id_l4265 = load i64, i64* %_4252
  %_index_pointer4266 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4264, i32 0, i32 1, i64 %_id_l4265
  %_index_value4267 = load i64, i64* %_index_pointer4266
  %_4272 = icmp sgt i64 %_index_value4267, %_index_value4271
  br i1 %_4272, label %_then_branch4275, label %_else_branch4276
_then_branch4275:
  %_id_l4273 = load i64, i64* %_4252
  store i64 %_id_l4273, i64* %_4259
  br label %_end_if4277
_else_branch4276:
  br label %_end_if4277
_end_if4277:
  br label %_end_if4281
_else_branch4280:
  br label %_end_if4281
_end_if4281:
  br label %_begin_if4299
_begin_if4299:
  %_id_len4283 = load i64, i64* %_len4251
  %_id_r4282 = load i64, i64* %_4255
  %_4284 = icmp slt i64 %_id_r4282, %_id_len4283
  br i1 %_4284, label %_then_branch4300, label %_else_branch4301
_then_branch4300:
  br label %_begin_if4295
_begin_if4295:
  %_id_array4289 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4249
  %_id_m4290 = load i64, i64* %_4259
  %_index_pointer4291 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4289, i32 0, i32 1, i64 %_id_m4290
  %_index_value4292 = load i64, i64* %_index_pointer4291
  %_id_array4285 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4249
  %_id_r4286 = load i64, i64* %_4255
  %_index_pointer4287 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4285, i32 0, i32 1, i64 %_id_r4286
  %_index_value4288 = load i64, i64* %_index_pointer4287
  %_4293 = icmp sgt i64 %_index_value4288, %_index_value4292
  br i1 %_4293, label %_then_branch4296, label %_else_branch4297
_then_branch4296:
  %_id_r4294 = load i64, i64* %_4255
  store i64 %_id_r4294, i64* %_4259
  br label %_end_if4298
_else_branch4297:
  br label %_end_if4298
_end_if4298:
  br label %_end_if4302
_else_branch4301:
  br label %_end_if4302
_end_if4302:
  br label %_begin_if4325
_begin_if4325:
  %_id_i4304 = load i64, i64* %_i4250
  %_id_m4303 = load i64, i64* %_4259
  %_4305 = icmp ne i64 %_id_m4303, %_id_i4304
  br i1 %_4305, label %_then_branch4326, label %_else_branch4327
_then_branch4326:
  %_id_array4306 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4249
  %_id_i4307 = load i64, i64* %_i4250
  %_index_pointer4308 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4306, i32 0, i32 1, i64 %_id_i4307
  %_index_value4309 = load i64, i64* %_index_pointer4308
  store i64 %_index_value4309, i64* %_4258
  %_id_array4310 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4249
  %_id_m4311 = load i64, i64* %_4259
  %_index_pointer4312 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4310, i32 0, i32 1, i64 %_id_m4311
  %_index_value4313 = load i64, i64* %_index_pointer4312
  %_id_array4314 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4249
  %_id_i4315 = load i64, i64* %_i4250
  %_4316 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4314, i32 0, i32 1, i64 %_id_i4315
  store i64 %_index_value4313, i64* %_4316
  %_id_tmp4317 = load i64, i64* %_4258
  %_id_array4318 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4249
  %_id_m4319 = load i64, i64* %_4259
  %_4320 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4318, i32 0, i32 1, i64 %_id_m4319
  store i64 %_id_tmp4317, i64* %_4320
  %_id_array4321 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4249
  %_id_m4322 = load i64, i64* %_4259
  %_id_len4323 = load i64, i64* %_len4251
  call void @min_heapify({ i64, [0 x i64] }* %_id_array4321, i64 %_id_m4322, i64 %_id_len4323)
  br label %_end_if4328
_else_branch4327:
  br label %_end_if4328
_end_if4328:
  ret void
}

define void @make_min_heap({ i64, [0 x i64] }* %array, i64 %len) {
  %_array4234 = alloca { i64, [0 x i64] }*
  %_len4235 = alloca i64
  %_4236 = alloca i64
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_array4234
  store i64 %len, i64* %_len4235
  %_id_len4237 = load i64, i64* %_len4235
  store i64 %_id_len4237, i64* %_4236
  br label %_cond4247
_cond4247:
  %_id_i4238 = load i64, i64* %_4236
  %_4239 = icmp sge i64 %_id_i4238, 1
  br i1 %_4239, label %_if4246, label %_merge4248
_if4246:
  %_id_array4240 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4234
  %_id_i4241 = load i64, i64* %_4236
  %_id_len4242 = load i64, i64* %_len4235
  call void @min_heapify({ i64, [0 x i64] }* %_id_array4240, i64 %_id_i4241, i64 %_id_len4242)
  %_id_i4244 = load i64, i64* %_4236
  %_4245 = sub i64 %_id_i4244, 1
  store i64 %_4245, i64* %_4236
  br label %_cond4247
_merge4248:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4157 = alloca i64
  %_argv4158 = alloca { i64, [0 x i8*] }*
  %_4159 = alloca { i64, [0 x i64] }*
  %_4184 = alloca { i64, [0 x i64] }*
  %_4211 = alloca i64
  %_4212 = alloca i64
  store i64 %argc, i64* %_argc4157
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4158
  %_raw_array4160 = call i64* @oat_alloc_array(i64 11)
  %_array4161 = bitcast i64* %_raw_array4160 to { i64, [0 x i64] }*
  %_4182 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4161, i32 0, i32 1, i32 10
  store i64 5, i64* %_4182
  %_4180 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4161, i32 0, i32 1, i32 9
  store i64 4, i64* %_4180
  %_4178 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4161, i32 0, i32 1, i32 8
  store i64 6, i64* %_4178
  %_4176 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4161, i32 0, i32 1, i32 7
  store i64 3, i64* %_4176
  %_4174 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4161, i32 0, i32 1, i32 6
  store i64 7, i64* %_4174
  %_4172 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4161, i32 0, i32 1, i32 5
  store i64 10, i64* %_4172
  %_4170 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4161, i32 0, i32 1, i32 4
  store i64 8, i64* %_4170
  %_4168 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4161, i32 0, i32 1, i32 3
  store i64 2, i64* %_4168
  %_4166 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4161, i32 0, i32 1, i32 2
  store i64 1, i64* %_4166
  %_4164 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4161, i32 0, i32 1, i32 1
  store i64 9, i64* %_4164
  %_4162 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4161, i32 0, i32 1, i32 0
  store i64 0, i64* %_4162
  store { i64, [0 x i64] }* %_array4161, { i64, [0 x i64] }** %_4159
  %_raw_array4185 = call i64* @oat_alloc_array(i64 11)
  %_array4186 = bitcast i64* %_raw_array4185 to { i64, [0 x i64] }*
  %_4207 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4186, i32 0, i32 1, i32 10
  store i64 10, i64* %_4207
  %_4205 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4186, i32 0, i32 1, i32 9
  store i64 9, i64* %_4205
  %_4203 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4186, i32 0, i32 1, i32 8
  store i64 6, i64* %_4203
  %_4201 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4186, i32 0, i32 1, i32 7
  store i64 3, i64* %_4201
  %_4199 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4186, i32 0, i32 1, i32 6
  store i64 7, i64* %_4199
  %_4197 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4186, i32 0, i32 1, i32 5
  store i64 5, i64* %_4197
  %_4195 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4186, i32 0, i32 1, i32 4
  store i64 8, i64* %_4195
  %_4193 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4186, i32 0, i32 1, i32 3
  store i64 2, i64* %_4193
  %_4191 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4186, i32 0, i32 1, i32 2
  store i64 4, i64* %_4191
  %_4189 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4186, i32 0, i32 1, i32 1
  store i64 1, i64* %_4189
  %_4187 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4186, i32 0, i32 1, i32 0
  store i64 0, i64* %_4187
  store { i64, [0 x i64] }* %_array4186, { i64, [0 x i64] }** %_4184
  %_id_array4209 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4159
  call void @make_min_heap({ i64, [0 x i64] }* %_id_array4209, i64 10)
  store i64 0, i64* %_4211
  store i64 0, i64* %_4212
  br label %_cond4231
_cond4231:
  %_id_i4213 = load i64, i64* %_4212
  %_4214 = icmp slt i64 %_id_i4213, 11
  br i1 %_4214, label %_if4230, label %_merge4232
_if4230:
  br label %_begin_if4224
_begin_if4224:
  %_id_end_result4219 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4184
  %_id_i4220 = load i64, i64* %_4212
  %_index_pointer4221 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_end_result4219, i32 0, i32 1, i64 %_id_i4220
  %_index_value4222 = load i64, i64* %_index_pointer4221
  %_id_array4215 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4159
  %_id_i4216 = load i64, i64* %_4212
  %_index_pointer4217 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4215, i32 0, i32 1, i64 %_id_i4216
  %_index_value4218 = load i64, i64* %_index_pointer4217
  %_4223 = icmp ne i64 %_index_value4218, %_index_value4222
  br i1 %_4223, label %_then_branch4225, label %_else_branch4226
_then_branch4225:
  store i64 1, i64* %_4211
  br label %_end_if4227
_else_branch4226:
  br label %_end_if4227
_end_if4227:
  %_id_i4228 = load i64, i64* %_4212
  %_4229 = add i64 %_id_i4228, 1
  store i64 %_4229, i64* %_4212
  br label %_cond4231
_merge4232:
  %_id_same4233 = load i64, i64* %_4211
  ret i64 %_id_same4233
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
