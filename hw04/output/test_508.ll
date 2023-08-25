; generated from: hw4programs/heap.oat
target triple = "x86_64-apple-macosx10.13.0"
define void @min_heapify({ i64, [0 x i64] }* %array, i64 %i, i64 %len) {
  %_array4254 = alloca { i64, [0 x i64] }*
  %_i4255 = alloca i64
  %_len4256 = alloca i64
  %_4257 = alloca i64
  %_4260 = alloca i64
  %_4263 = alloca i64
  %_4264 = alloca i64
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_array4254
  store i64 %i, i64* %_i4255
  store i64 %len, i64* %_len4256
  %_id_i4258 = load i64, i64* %_i4255
  %_4259 = mul i64 %_id_i4258, 2
  store i64 %_4259, i64* %_4257
  %_id_i4261 = load i64, i64* %_i4255
  %_4262 = add i64 %_id_i4261, 1
  store i64 %_4262, i64* %_4260
  store i64 0, i64* %_4263
  %_id_i4265 = load i64, i64* %_i4255
  store i64 %_id_i4265, i64* %_4264
  br label %_start4283
_start4283:
  %_id_len4267 = load i64, i64* %_len4256
  %_id_l4266 = load i64, i64* %_4257
  %_4268 = icmp slt i64 %_id_l4266, %_id_len4267
  br i1 %_4268, label %_then4284, label %_else4285
_then4284:
  br label %_start4279
_start4279:
  %_id_array4273 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4254
  %_id_m4274 = load i64, i64* %_4264
  %_index_pointer4275 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4273, i32 0, i32 1, i64 %_id_m4274
  %_index_value4276 = load i64, i64* %_index_pointer4275
  %_id_array4269 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4254
  %_id_l4270 = load i64, i64* %_4257
  %_index_pointer4271 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4269, i32 0, i32 1, i64 %_id_l4270
  %_index_value4272 = load i64, i64* %_index_pointer4271
  %_4277 = icmp sgt i64 %_index_value4272, %_index_value4276
  br i1 %_4277, label %_then4280, label %_else4281
_then4280:
  %_id_l4278 = load i64, i64* %_4257
  store i64 %_id_l4278, i64* %_4264
  br label %_post4282
_else4281:
  br label %_post4282
_post4282:
  br label %_post4286
_else4285:
  br label %_post4286
_post4286:
  br label %_start4304
_start4304:
  %_id_len4288 = load i64, i64* %_len4256
  %_id_r4287 = load i64, i64* %_4260
  %_4289 = icmp slt i64 %_id_r4287, %_id_len4288
  br i1 %_4289, label %_then4305, label %_else4306
_then4305:
  br label %_start4300
_start4300:
  %_id_array4294 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4254
  %_id_m4295 = load i64, i64* %_4264
  %_index_pointer4296 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4294, i32 0, i32 1, i64 %_id_m4295
  %_index_value4297 = load i64, i64* %_index_pointer4296
  %_id_array4290 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4254
  %_id_r4291 = load i64, i64* %_4260
  %_index_pointer4292 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4290, i32 0, i32 1, i64 %_id_r4291
  %_index_value4293 = load i64, i64* %_index_pointer4292
  %_4298 = icmp sgt i64 %_index_value4293, %_index_value4297
  br i1 %_4298, label %_then4301, label %_else4302
_then4301:
  %_id_r4299 = load i64, i64* %_4260
  store i64 %_id_r4299, i64* %_4264
  br label %_post4303
_else4302:
  br label %_post4303
_post4303:
  br label %_post4307
_else4306:
  br label %_post4307
_post4307:
  br label %_start4330
_start4330:
  %_id_i4309 = load i64, i64* %_i4255
  %_id_m4308 = load i64, i64* %_4264
  %_4310 = icmp ne i64 %_id_m4308, %_id_i4309
  br i1 %_4310, label %_then4331, label %_else4332
_then4331:
  %_id_array4311 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4254
  %_id_i4312 = load i64, i64* %_i4255
  %_index_pointer4313 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4311, i32 0, i32 1, i64 %_id_i4312
  %_index_value4314 = load i64, i64* %_index_pointer4313
  store i64 %_index_value4314, i64* %_4263
  %_id_array4315 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4254
  %_id_m4316 = load i64, i64* %_4264
  %_index_pointer4317 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4315, i32 0, i32 1, i64 %_id_m4316
  %_index_value4318 = load i64, i64* %_index_pointer4317
  %_id_array4319 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4254
  %_id_i4320 = load i64, i64* %_i4255
  %_4321 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4319, i32 0, i32 1, i64 %_id_i4320
  store i64 %_index_value4318, i64* %_4321
  %_id_tmp4322 = load i64, i64* %_4263
  %_id_array4323 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4254
  %_id_m4324 = load i64, i64* %_4264
  %_4325 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4323, i32 0, i32 1, i64 %_id_m4324
  store i64 %_id_tmp4322, i64* %_4325
  %_id_array4326 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4254
  %_id_m4327 = load i64, i64* %_4264
  %_id_len4328 = load i64, i64* %_len4256
  call void @min_heapify({ i64, [0 x i64] }* %_id_array4326, i64 %_id_m4327, i64 %_id_len4328)
  br label %_post4333
_else4332:
  br label %_post4333
_post4333:
  ret void
}

define void @make_min_heap({ i64, [0 x i64] }* %array, i64 %len) {
  %_array4239 = alloca { i64, [0 x i64] }*
  %_len4240 = alloca i64
  %_4241 = alloca i64
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_array4239
  store i64 %len, i64* %_len4240
  %_id_len4242 = load i64, i64* %_len4240
  store i64 %_id_len4242, i64* %_4241
  br label %_start4251
_start4251:
  %_id_i4243 = load i64, i64* %_4241
  %_4244 = icmp sge i64 %_id_i4243, 1
  br i1 %_4244, label %_body4252, label %_else4253
_body4252:
  %_id_array4245 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4239
  %_id_i4246 = load i64, i64* %_4241
  %_id_len4247 = load i64, i64* %_len4240
  call void @min_heapify({ i64, [0 x i64] }* %_id_array4245, i64 %_id_i4246, i64 %_id_len4247)
  %_id_i4249 = load i64, i64* %_4241
  %_4250 = sub i64 %_id_i4249, 1
  store i64 %_4250, i64* %_4241
  br label %_start4251
_else4253:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4162 = alloca i64
  %_argv4163 = alloca { i64, [0 x i8*] }*
  %_4164 = alloca { i64, [0 x i64] }*
  %_4189 = alloca { i64, [0 x i64] }*
  %_4216 = alloca i64
  %_4217 = alloca i64
  store i64 %argc, i64* %_argc4162
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4163
  %_raw_array4165 = call i64* @oat_alloc_array(i64 11)
  %_array4166 = bitcast i64* %_raw_array4165 to { i64, [0 x i64] }*
  %_4187 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4166, i32 0, i32 1, i32 10
  store i64 5, i64* %_4187
  %_4185 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4166, i32 0, i32 1, i32 9
  store i64 4, i64* %_4185
  %_4183 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4166, i32 0, i32 1, i32 8
  store i64 6, i64* %_4183
  %_4181 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4166, i32 0, i32 1, i32 7
  store i64 3, i64* %_4181
  %_4179 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4166, i32 0, i32 1, i32 6
  store i64 7, i64* %_4179
  %_4177 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4166, i32 0, i32 1, i32 5
  store i64 10, i64* %_4177
  %_4175 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4166, i32 0, i32 1, i32 4
  store i64 8, i64* %_4175
  %_4173 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4166, i32 0, i32 1, i32 3
  store i64 2, i64* %_4173
  %_4171 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4166, i32 0, i32 1, i32 2
  store i64 1, i64* %_4171
  %_4169 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4166, i32 0, i32 1, i32 1
  store i64 9, i64* %_4169
  %_4167 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4166, i32 0, i32 1, i32 0
  store i64 0, i64* %_4167
  store { i64, [0 x i64] }* %_array4166, { i64, [0 x i64] }** %_4164
  %_raw_array4190 = call i64* @oat_alloc_array(i64 11)
  %_array4191 = bitcast i64* %_raw_array4190 to { i64, [0 x i64] }*
  %_4212 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4191, i32 0, i32 1, i32 10
  store i64 10, i64* %_4212
  %_4210 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4191, i32 0, i32 1, i32 9
  store i64 9, i64* %_4210
  %_4208 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4191, i32 0, i32 1, i32 8
  store i64 6, i64* %_4208
  %_4206 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4191, i32 0, i32 1, i32 7
  store i64 3, i64* %_4206
  %_4204 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4191, i32 0, i32 1, i32 6
  store i64 7, i64* %_4204
  %_4202 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4191, i32 0, i32 1, i32 5
  store i64 5, i64* %_4202
  %_4200 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4191, i32 0, i32 1, i32 4
  store i64 8, i64* %_4200
  %_4198 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4191, i32 0, i32 1, i32 3
  store i64 2, i64* %_4198
  %_4196 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4191, i32 0, i32 1, i32 2
  store i64 4, i64* %_4196
  %_4194 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4191, i32 0, i32 1, i32 1
  store i64 1, i64* %_4194
  %_4192 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4191, i32 0, i32 1, i32 0
  store i64 0, i64* %_4192
  store { i64, [0 x i64] }* %_array4191, { i64, [0 x i64] }** %_4189
  %_id_array4214 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4164
  call void @make_min_heap({ i64, [0 x i64] }* %_id_array4214, i64 10)
  store i64 0, i64* %_4216
  store i64 0, i64* %_4217
  br label %_start4235
_start4235:
  %_id_i4218 = load i64, i64* %_4217
  %_4219 = icmp slt i64 %_id_i4218, 11
  br i1 %_4219, label %_body4236, label %_else4237
_body4236:
  br label %_start4229
_start4229:
  %_id_end_result4224 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4189
  %_id_i4225 = load i64, i64* %_4217
  %_index_pointer4226 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_end_result4224, i32 0, i32 1, i64 %_id_i4225
  %_index_value4227 = load i64, i64* %_index_pointer4226
  %_id_array4220 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4164
  %_id_i4221 = load i64, i64* %_4217
  %_index_pointer4222 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4220, i32 0, i32 1, i64 %_id_i4221
  %_index_value4223 = load i64, i64* %_index_pointer4222
  %_4228 = icmp ne i64 %_index_value4223, %_index_value4227
  br i1 %_4228, label %_then4230, label %_else4231
_then4230:
  store i64 1, i64* %_4216
  br label %_post4232
_else4231:
  br label %_post4232
_post4232:
  %_id_i4233 = load i64, i64* %_4217
  %_4234 = add i64 %_id_i4233, 1
  store i64 %_4234, i64* %_4217
  br label %_start4235
_else4237:
  %_id_same4238 = load i64, i64* %_4216
  ret i64 %_id_same4238
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
