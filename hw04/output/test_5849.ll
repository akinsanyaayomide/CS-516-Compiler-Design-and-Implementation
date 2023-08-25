; generated from: hw4programs/heap.oat
target triple = "x86_64-apple-macosx10.13.0"
define void @min_heapify({ i64, [0 x i64] }* %array, i64 %i, i64 %len) {
  %_array4249 = alloca { i64, [0 x i64] }*
  %_i4250 = alloca i64
  %_len4251 = alloca i64
  %_l4254 = alloca i64
  %_r4257 = alloca i64
  %_tmp4258 = alloca i64
  %_m4260 = alloca i64
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_array4249
  store i64 %i, i64* %_i4250
  store i64 %len, i64* %_len4251
  %_id_i4252 = load i64, i64* %_i4250
  %_bop4253 = mul i64 %_id_i4252, 2
  store i64 %_bop4253, i64* %_l4254
  %_id_i4255 = load i64, i64* %_i4250
  %_bop4256 = add i64 %_id_i4255, 1
  store i64 %_bop4256, i64* %_r4257
  store i64 0, i64* %_tmp4258
  %_id_i4259 = load i64, i64* %_i4250
  store i64 %_id_i4259, i64* %_m4260
  br label %_begin_if4281
_begin_if4281:
  %_id_l4261 = load i64, i64* %_l4254
  %_id_len4262 = load i64, i64* %_len4251
  %_bop4263 = icmp slt i64 %_id_l4261, %_id_len4262
  br i1 %_bop4263, label %_then_branch4280, label %_else_branch4279
_then_branch4280:
  br label %_begin_if4277
_begin_if4277:
  %_id_array4264 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4249
  %_id_l4265 = load i64, i64* %_l4254
  %_index_pointer4267 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4264, i32 0, i32 1, i64 %_id_l4265
  %_index_value4266 = load i64, i64* %_index_pointer4267
  %_id_array4268 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4249
  %_id_m4269 = load i64, i64* %_m4260
  %_index_pointer4271 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4268, i32 0, i32 1, i64 %_id_m4269
  %_index_value4270 = load i64, i64* %_index_pointer4271
  %_bop4272 = icmp sgt i64 %_index_value4266, %_index_value4270
  br i1 %_bop4272, label %_then_branch4276, label %_else_branch4275
_then_branch4276:
  %_id_l4273 = load i64, i64* %_l4254
  store i64 %_id_l4273, i64* %_m4260
  br label %_end_if4274
_else_branch4275:
  br label %_end_if4274
_end_if4274:
  br label %_end_if4278
_else_branch4279:
  br label %_end_if4278
_end_if4278:
  br label %_begin_if4302
_begin_if4302:
  %_id_r4282 = load i64, i64* %_r4257
  %_id_len4283 = load i64, i64* %_len4251
  %_bop4284 = icmp slt i64 %_id_r4282, %_id_len4283
  br i1 %_bop4284, label %_then_branch4301, label %_else_branch4300
_then_branch4301:
  br label %_begin_if4298
_begin_if4298:
  %_id_array4285 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4249
  %_id_r4286 = load i64, i64* %_r4257
  %_index_pointer4288 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4285, i32 0, i32 1, i64 %_id_r4286
  %_index_value4287 = load i64, i64* %_index_pointer4288
  %_id_array4289 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4249
  %_id_m4290 = load i64, i64* %_m4260
  %_index_pointer4292 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4289, i32 0, i32 1, i64 %_id_m4290
  %_index_value4291 = load i64, i64* %_index_pointer4292
  %_bop4293 = icmp sgt i64 %_index_value4287, %_index_value4291
  br i1 %_bop4293, label %_then_branch4297, label %_else_branch4296
_then_branch4297:
  %_id_r4294 = load i64, i64* %_r4257
  store i64 %_id_r4294, i64* %_m4260
  br label %_end_if4295
_else_branch4296:
  br label %_end_if4295
_end_if4295:
  br label %_end_if4299
_else_branch4300:
  br label %_end_if4299
_end_if4299:
  br label %_begin_if4328
_begin_if4328:
  %_id_m4303 = load i64, i64* %_m4260
  %_id_i4304 = load i64, i64* %_i4250
  %_bop4305 = icmp ne i64 %_id_m4303, %_id_i4304
  br i1 %_bop4305, label %_then_branch4327, label %_else_branch4326
_then_branch4327:
  %_id_array4306 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4249
  %_id_i4307 = load i64, i64* %_i4250
  %_index_pointer4309 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4306, i32 0, i32 1, i64 %_id_i4307
  %_index_value4308 = load i64, i64* %_index_pointer4309
  store i64 %_index_value4308, i64* %_tmp4258
  %_id_array4310 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4249
  %_id_m4311 = load i64, i64* %_m4260
  %_index_pointer4313 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4310, i32 0, i32 1, i64 %_id_m4311
  %_index_value4312 = load i64, i64* %_index_pointer4313
  %_id_array4314 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4249
  %_id_i4315 = load i64, i64* %_i4250
  %_4316 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4314, i32 0, i32 1, i64 %_id_i4315
  store i64 %_index_value4312, i64* %_4316
  %_id_tmp4317 = load i64, i64* %_tmp4258
  %_id_array4318 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4249
  %_id_m4319 = load i64, i64* %_m4260
  %_4320 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4318, i32 0, i32 1, i64 %_id_m4319
  store i64 %_id_tmp4317, i64* %_4320
  %_id_array4321 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4249
  %_id_m4322 = load i64, i64* %_m4260
  %_id_len4323 = load i64, i64* %_len4251
  call void @min_heapify({ i64, [0 x i64] }* %_id_array4321, i64 %_id_m4322, i64 %_id_len4323)
  br label %_end_if4325
_else_branch4326:
  br label %_end_if4325
_end_if4325:
  ret void
}

define void @make_min_heap({ i64, [0 x i64] }* %array, i64 %len) {
  %_array4234 = alloca { i64, [0 x i64] }*
  %_len4235 = alloca i64
  %_i4237 = alloca i64
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_array4234
  store i64 %len, i64* %_len4235
  %_id_len4236 = load i64, i64* %_len4235
  store i64 %_id_len4236, i64* %_i4237
  br label %_cond4247
_cond4247:
  %_id_i4238 = load i64, i64* %_i4237
  %_bop4239 = icmp sge i64 %_id_i4238, 1
  br i1 %_bop4239, label %_if4246, label %_merge4248
_if4246:
  %_id_array4240 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4234
  %_id_i4241 = load i64, i64* %_i4237
  %_id_len4242 = load i64, i64* %_len4235
  call void @min_heapify({ i64, [0 x i64] }* %_id_array4240, i64 %_id_i4241, i64 %_id_len4242)
  %_id_i4244 = load i64, i64* %_i4237
  %_bop4245 = sub i64 %_id_i4244, 1
  store i64 %_bop4245, i64* %_i4237
  br label %_cond4247
_merge4248:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4157 = alloca i64
  %_argv4158 = alloca { i64, [0 x i8*] }*
  %_array4183 = alloca { i64, [0 x i64] }*
  %_end_result4208 = alloca { i64, [0 x i64] }*
  %_same4211 = alloca i64
  %_i4212 = alloca i64
  store i64 %argc, i64* %_argc4157
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4158
  %_raw_array4159 = call i64* @oat_alloc_array(i64 11)
  %_array4160 = bitcast i64* %_raw_array4159 to { i64, [0 x i64] }*
  %_4181 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4160, i32 0, i32 1, i32 10
  store i64 5, i64* %_4181
  %_4179 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4160, i32 0, i32 1, i32 9
  store i64 4, i64* %_4179
  %_4177 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4160, i32 0, i32 1, i32 8
  store i64 6, i64* %_4177
  %_4175 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4160, i32 0, i32 1, i32 7
  store i64 3, i64* %_4175
  %_4173 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4160, i32 0, i32 1, i32 6
  store i64 7, i64* %_4173
  %_4171 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4160, i32 0, i32 1, i32 5
  store i64 10, i64* %_4171
  %_4169 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4160, i32 0, i32 1, i32 4
  store i64 8, i64* %_4169
  %_4167 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4160, i32 0, i32 1, i32 3
  store i64 2, i64* %_4167
  %_4165 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4160, i32 0, i32 1, i32 2
  store i64 1, i64* %_4165
  %_4163 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4160, i32 0, i32 1, i32 1
  store i64 9, i64* %_4163
  %_4161 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4160, i32 0, i32 1, i32 0
  store i64 0, i64* %_4161
  store { i64, [0 x i64] }* %_array4160, { i64, [0 x i64] }** %_array4183
  %_raw_array4184 = call i64* @oat_alloc_array(i64 11)
  %_array4185 = bitcast i64* %_raw_array4184 to { i64, [0 x i64] }*
  %_4206 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4185, i32 0, i32 1, i32 10
  store i64 10, i64* %_4206
  %_4204 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4185, i32 0, i32 1, i32 9
  store i64 9, i64* %_4204
  %_4202 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4185, i32 0, i32 1, i32 8
  store i64 6, i64* %_4202
  %_4200 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4185, i32 0, i32 1, i32 7
  store i64 3, i64* %_4200
  %_4198 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4185, i32 0, i32 1, i32 6
  store i64 7, i64* %_4198
  %_4196 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4185, i32 0, i32 1, i32 5
  store i64 5, i64* %_4196
  %_4194 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4185, i32 0, i32 1, i32 4
  store i64 8, i64* %_4194
  %_4192 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4185, i32 0, i32 1, i32 3
  store i64 2, i64* %_4192
  %_4190 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4185, i32 0, i32 1, i32 2
  store i64 4, i64* %_4190
  %_4188 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4185, i32 0, i32 1, i32 1
  store i64 1, i64* %_4188
  %_4186 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4185, i32 0, i32 1, i32 0
  store i64 0, i64* %_4186
  store { i64, [0 x i64] }* %_array4185, { i64, [0 x i64] }** %_end_result4208
  %_id_array4209 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4183
  call void @make_min_heap({ i64, [0 x i64] }* %_id_array4209, i64 10)
  store i64 0, i64* %_same4211
  store i64 0, i64* %_i4212
  br label %_cond4231
_cond4231:
  %_id_i4213 = load i64, i64* %_i4212
  %_bop4214 = icmp slt i64 %_id_i4213, 11
  br i1 %_bop4214, label %_if4230, label %_merge4232
_if4230:
  br label %_begin_if4227
_begin_if4227:
  %_id_array4215 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4183
  %_id_i4216 = load i64, i64* %_i4212
  %_index_pointer4218 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4215, i32 0, i32 1, i64 %_id_i4216
  %_index_value4217 = load i64, i64* %_index_pointer4218
  %_id_end_result4219 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_end_result4208
  %_id_i4220 = load i64, i64* %_i4212
  %_index_pointer4222 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_end_result4219, i32 0, i32 1, i64 %_id_i4220
  %_index_value4221 = load i64, i64* %_index_pointer4222
  %_bop4223 = icmp ne i64 %_index_value4217, %_index_value4221
  br i1 %_bop4223, label %_then_branch4226, label %_else_branch4225
_then_branch4226:
  store i64 1, i64* %_same4211
  br label %_end_if4224
_else_branch4225:
  br label %_end_if4224
_end_if4224:
  %_id_i4228 = load i64, i64* %_i4212
  %_bop4229 = add i64 %_id_i4228, 1
  store i64 %_bop4229, i64* %_i4212
  br label %_cond4231
_merge4232:
  %_id_same4233 = load i64, i64* %_same4211
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
