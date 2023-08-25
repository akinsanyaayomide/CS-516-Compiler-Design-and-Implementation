; generated from: hw4programs/gnomesort.oat
target triple = "x86_64-apple-macosx10.13.0"
define void @gnomeSort({ i64, [0 x i64] }* %a, i64 %len) {
  %_a4286 = alloca { i64, [0 x i64] }*
  %_len4287 = alloca i64
  %_4288 = alloca i64
  %_4289 = alloca i64
  %_4306 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a4286
  store i64 %len, i64* %_len4287
  store i64 1, i64* %_4288
  store i64 2, i64* %_4289
  br label %_start4339
_start4339:
  %_id_len4291 = load i64, i64* %_len4287
  %_id_i4290 = load i64, i64* %_4288
  %_4292 = icmp slt i64 %_id_i4290, %_id_len4291
  br i1 %_4292, label %_body4340, label %_else4341
_body4340:
  br label %_start4335
_start4335:
  %_id_a4298 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4286
  %_id_i4299 = load i64, i64* %_4288
  %_index_pointer4300 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a4298, i32 0, i32 1, i64 %_id_i4299
  %_index_value4301 = load i64, i64* %_index_pointer4300
  %_id_a4293 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4286
  %_id_i4294 = load i64, i64* %_4288
  %_4295 = sub i64 %_id_i4294, 1
  %_index_pointer4296 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a4293, i32 0, i32 1, i64 %_4295
  %_index_value4297 = load i64, i64* %_index_pointer4296
  %_4302 = icmp sle i64 %_index_value4297, %_index_value4301
  br i1 %_4302, label %_then4336, label %_else4337
_then4336:
  %_id_j4303 = load i64, i64* %_4289
  store i64 %_id_j4303, i64* %_4288
  %_id_j4304 = load i64, i64* %_4289
  %_4305 = add i64 %_id_j4304, 1
  store i64 %_4305, i64* %_4289
  br label %_post4338
_else4337:
  %_id_a4307 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4286
  %_id_i4308 = load i64, i64* %_4288
  %_4309 = sub i64 %_id_i4308, 1
  %_index_pointer4310 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a4307, i32 0, i32 1, i64 %_4309
  %_index_value4311 = load i64, i64* %_index_pointer4310
  store i64 %_index_value4311, i64* %_4306
  %_id_a4312 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4286
  %_id_i4313 = load i64, i64* %_4288
  %_index_pointer4314 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a4312, i32 0, i32 1, i64 %_id_i4313
  %_index_value4315 = load i64, i64* %_index_pointer4314
  %_id_a4316 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4286
  %_id_i4317 = load i64, i64* %_4288
  %_4318 = sub i64 %_id_i4317, 1
  %_4319 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a4316, i32 0, i32 1, i64 %_4318
  store i64 %_index_value4315, i64* %_4319
  %_id_tmp4320 = load i64, i64* %_4306
  %_id_a4321 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4286
  %_id_i4322 = load i64, i64* %_4288
  %_4323 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a4321, i32 0, i32 1, i64 %_id_i4322
  store i64 %_id_tmp4320, i64* %_4323
  %_id_i4324 = load i64, i64* %_4288
  %_4325 = sub i64 %_id_i4324, 1
  store i64 %_4325, i64* %_4288
  br label %_start4331
_start4331:
  %_id_i4326 = load i64, i64* %_4288
  %_4327 = icmp eq i64 %_id_i4326, 0
  br i1 %_4327, label %_then4332, label %_else4333
_then4332:
  %_id_j4328 = load i64, i64* %_4289
  store i64 %_id_j4328, i64* %_4288
  %_id_j4329 = load i64, i64* %_4289
  %_4330 = add i64 %_id_j4329, 1
  store i64 %_4330, i64* %_4289
  br label %_post4334
_else4333:
  br label %_post4334
_post4334:
  br label %_post4338
_post4338:
  br label %_start4339
_else4341:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4248 = alloca i64
  %_argv4249 = alloca { i64, [0 x i8*] }*
  %_4250 = alloca { i64, [0 x i64] }*
  %_4269 = alloca i64
  %_4273 = alloca i64
  store i64 %argc, i64* %_argc4248
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4249
  %_raw_array4251 = call i64* @oat_alloc_array(i64 8)
  %_array4252 = bitcast i64* %_raw_array4251 to { i64, [0 x i64] }*
  %_4267 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4252, i32 0, i32 1, i32 7
  store i64 0, i64* %_4267
  %_4265 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4252, i32 0, i32 1, i32 6
  store i64 2, i64* %_4265
  %_4263 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4252, i32 0, i32 1, i32 5
  store i64 99, i64* %_4263
  %_4261 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4252, i32 0, i32 1, i32 4
  store i64 30, i64* %_4261
  %_4259 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4252, i32 0, i32 1, i32 3
  store i64 65, i64* %_4259
  %_4257 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4252, i32 0, i32 1, i32 2
  store i64 1, i64* %_4257
  %_4255 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4252, i32 0, i32 1, i32 1
  store i64 200, i64* %_4255
  %_4253 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4252, i32 0, i32 1, i32 0
  store i64 5, i64* %_4253
  store { i64, [0 x i64] }* %_array4252, { i64, [0 x i64] }** %_4250
  store i64 8, i64* %_4269
  %_id_arr4270 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4250
  %_id_len4271 = load i64, i64* %_4269
  call void @gnomeSort({ i64, [0 x i64] }* %_id_arr4270, i64 %_id_len4271)
  store i64 0, i64* %_4273
  br label %_start4283
_start4283:
  %_id_i4274 = load i64, i64* %_4273
  %_4275 = icmp slt i64 %_id_i4274, 8
  br i1 %_4275, label %_body4284, label %_else4285
_body4284:
  %_id_arr4276 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4250
  %_id_i4277 = load i64, i64* %_4273
  %_index_pointer4278 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4276, i32 0, i32 1, i64 %_id_i4277
  %_index_value4279 = load i64, i64* %_index_pointer4278
  call void @print_int(i64 %_index_value4279)
  %_id_i4281 = load i64, i64* %_4273
  %_4282 = add i64 %_id_i4281, 1
  store i64 %_4282, i64* %_4273
  br label %_start4283
_else4285:
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
