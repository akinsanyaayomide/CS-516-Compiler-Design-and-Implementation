; generated from: hw4programs/sieve.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @sieve(i64 %n) {
  %_n4266 = alloca i64
  %_4267 = alloca { i64, [0 x i1] }*
  %_4271 = alloca i64
  %_4287 = alloca i64
  %_4295 = alloca i64
  %_4319 = alloca i64
  %_4320 = alloca i64
  store i64 %n, i64* %_n4266
  %_id_n4268 = load i64, i64* %_n4266
  %_raw_array4269 = call i64* @oat_alloc_array(i64 %_id_n4268)
  %_array4270 = bitcast i64* %_raw_array4269 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array4270, { i64, [0 x i1] }** %_4267
  store i64 0, i64* %_4271
  br label %_cond4281
_cond4281:
  %_id_i4272 = load i64, i64* %_4271
  %_id_n4273 = load i64, i64* %_n4266
  %_bop4274 = icmp slt i64 %_id_i4272, %_id_n4273
  br i1 %_bop4274, label %_if4280, label %_merge4282
_if4280:
  %_id_arr4275 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4267
  %_id_i4276 = load i64, i64* %_4271
  %_4277 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr4275, i32 0, i32 1, i64 %_id_i4276
  store i1 1, i1* %_4277
  %_id_i4278 = load i64, i64* %_4271
  %_bop4279 = add i64 %_id_i4278, 1
  store i64 %_bop4279, i64* %_4271
  br label %_cond4281
_merge4282:
  %_id_arr4283 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4267
  %_4284 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr4283, i32 0, i32 1, i32 0
  store i1 0, i1* %_4284
  %_id_arr4285 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4267
  %_4286 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr4285, i32 0, i32 1, i32 1
  store i1 0, i1* %_4286
  store i64 0, i64* %_4287
  br label %_cond4317
_cond4317:
  %_id_i4288 = load i64, i64* %_4287
  %_id_n4289 = load i64, i64* %_n4266
  %_bop4290 = icmp slt i64 %_id_i4288, %_id_n4289
  br i1 %_bop4290, label %_if4316, label %_merge4318
_if4316:
  br label %_begin_if4310
_begin_if4310:
  %_id_arr4291 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4267
  %_id_i4292 = load i64, i64* %_4287
  %_index_pointer4294 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr4291, i32 0, i32 1, i64 %_id_i4292
  %_index_value4293 = load i1, i1* %_index_pointer4294
  br i1 %_index_value4293, label %_then_branch4311, label %_else_branch4312
_then_branch4311:
  %_id_i4296 = load i64, i64* %_4287
  %_bop4297 = mul i64 %_id_i4296, 2
  store i64 %_bop4297, i64* %_4295
  br label %_cond4308
_cond4308:
  %_id_j4298 = load i64, i64* %_4295
  %_id_n4299 = load i64, i64* %_n4266
  %_bop4300 = icmp slt i64 %_id_j4298, %_id_n4299
  br i1 %_bop4300, label %_if4307, label %_merge4309
_if4307:
  %_id_arr4301 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4267
  %_id_j4302 = load i64, i64* %_4295
  %_4303 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr4301, i32 0, i32 1, i64 %_id_j4302
  store i1 0, i1* %_4303
  %_id_j4304 = load i64, i64* %_4295
  %_id_i4305 = load i64, i64* %_4287
  %_bop4306 = add i64 %_id_j4304, %_id_i4305
  store i64 %_bop4306, i64* %_4295
  br label %_cond4308
_merge4309:
  br label %_end_if4313
_else_branch4312:
  br label %_end_if4313
_end_if4313:
  %_id_i4314 = load i64, i64* %_4287
  %_bop4315 = add i64 %_id_i4314, 1
  store i64 %_bop4315, i64* %_4287
  br label %_cond4317
_merge4318:
  store i64 0, i64* %_4319
  store i64 0, i64* %_4320
  br label %_cond4337
_cond4337:
  %_id_i4321 = load i64, i64* %_4320
  %_id_n4322 = load i64, i64* %_n4266
  %_bop4323 = icmp slt i64 %_id_i4321, %_id_n4322
  br i1 %_bop4323, label %_if4336, label %_merge4338
_if4336:
  br label %_begin_if4330
_begin_if4330:
  %_id_arr4324 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4267
  %_id_i4325 = load i64, i64* %_4320
  %_index_pointer4327 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr4324, i32 0, i32 1, i64 %_id_i4325
  %_index_value4326 = load i1, i1* %_index_pointer4327
  br i1 %_index_value4326, label %_then_branch4331, label %_else_branch4332
_then_branch4331:
  %_id_count4328 = load i64, i64* %_4319
  %_bop4329 = add i64 %_id_count4328, 1
  store i64 %_bop4329, i64* %_4319
  br label %_end_if4333
_else_branch4332:
  br label %_end_if4333
_end_if4333:
  %_id_i4334 = load i64, i64* %_4320
  %_bop4335 = add i64 %_id_i4334, 1
  store i64 %_bop4335, i64* %_4320
  br label %_cond4337
_merge4338:
  %_id_count4339 = load i64, i64* %_4319
  ret i64 %_id_count4339
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4261 = alloca i64
  %_argv4262 = alloca { i64, [0 x i8*] }*
  %_4263 = alloca i64
  store i64 %argc, i64* %_argc4261
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4262
  store i64 100, i64* %_4263
  %_id_n4264 = load i64, i64* %_4263
  %_4265 = call i64 @sieve(i64 %_id_n4264)
  ret i64 %_4265
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
