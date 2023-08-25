; generated from: hw4programs/binary_gcd.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_x4336 = alloca i64
  %_y4337 = alloca i64
  store i64 %x, i64* %_x4336
  store i64 %y, i64* %_y4337
  br label %_start4342
_start4342:
  %_id_y4339 = load i64, i64* %_y4337
  %_id_x4338 = load i64, i64* %_x4336
  %_4340 = icmp eq i64 %_id_x4338, %_id_y4339
  br i1 %_4340, label %_then4343, label %_else4344
_then4343:
  %_id_x4341 = load i64, i64* %_x4336
  ret i64 %_id_x4341
_else4344:
  br label %_post4345
_post4345:
  br label %_start4349
_start4349:
  %_id_x4346 = load i64, i64* %_x4336
  %_4347 = icmp eq i64 %_id_x4346, 0
  br i1 %_4347, label %_then4350, label %_else4351
_then4350:
  %_id_y4348 = load i64, i64* %_y4337
  ret i64 %_id_y4348
_else4351:
  br label %_post4352
_post4352:
  br label %_start4356
_start4356:
  %_id_y4353 = load i64, i64* %_y4337
  %_4354 = icmp eq i64 %_id_y4353, 0
  br i1 %_4354, label %_then4357, label %_else4358
_then4357:
  %_id_x4355 = load i64, i64* %_x4336
  ret i64 %_id_x4355
_else4358:
  br label %_post4359
_post4359:
  br label %_start4381
_start4381:
  %_id_x4360 = load i64, i64* %_x4336
  %_unop4361 = xor i64 %_id_x4360, -1
  %_4362 = and i64 %_unop4361, 1
  %_4363 = icmp eq i64 %_4362, 1
  br i1 %_4363, label %_then4382, label %_else4383
_then4382:
  br label %_start4377
_start4377:
  %_id_y4364 = load i64, i64* %_y4337
  %_4365 = and i64 %_id_y4364, 1
  %_4366 = icmp eq i64 %_4365, 1
  br i1 %_4366, label %_then4378, label %_else4379
_then4378:
  %_id_x4367 = load i64, i64* %_x4336
  %_4368 = lshr i64 %_id_x4367, 1
  %_id_y4369 = load i64, i64* %_y4337
  %_4370 = call i64 @binary_gcd(i64 %_4368, i64 %_id_y4369)
  ret i64 %_4370
_else4379:
  %_id_x4371 = load i64, i64* %_x4336
  %_4372 = lshr i64 %_id_x4371, 1
  %_id_y4373 = load i64, i64* %_y4337
  %_4374 = lshr i64 %_id_y4373, 1
  %_4375 = call i64 @binary_gcd(i64 %_4372, i64 %_4374)
  %_4376 = shl i64 %_4375, 1
  ret i64 %_4376
_post4380:
  br label %_post4384
_else4383:
  br label %_post4384
_post4384:
  br label %_start4393
_start4393:
  %_id_y4385 = load i64, i64* %_y4337
  %_unop4386 = xor i64 %_id_y4385, -1
  %_4387 = and i64 %_unop4386, 1
  %_4388 = icmp eq i64 %_4387, 1
  br i1 %_4388, label %_then4394, label %_else4395
_then4394:
  %_id_x4389 = load i64, i64* %_x4336
  %_id_y4390 = load i64, i64* %_y4337
  %_4391 = lshr i64 %_id_y4390, 1
  %_4392 = call i64 @binary_gcd(i64 %_id_x4389, i64 %_4391)
  ret i64 %_4392
_else4395:
  br label %_post4396
_post4396:
  br label %_start4406
_start4406:
  %_id_y4398 = load i64, i64* %_y4337
  %_id_x4397 = load i64, i64* %_x4336
  %_4399 = icmp sgt i64 %_id_x4397, %_id_y4398
  br i1 %_4399, label %_then4407, label %_else4408
_then4407:
  %_id_y4401 = load i64, i64* %_y4337
  %_id_x4400 = load i64, i64* %_x4336
  %_4402 = sub i64 %_id_x4400, %_id_y4401
  %_4403 = lshr i64 %_4402, 1
  %_id_y4404 = load i64, i64* %_y4337
  %_4405 = call i64 @binary_gcd(i64 %_4403, i64 %_id_y4404)
  ret i64 %_4405
_else4408:
  br label %_post4409
_post4409:
  %_id_x4411 = load i64, i64* %_x4336
  %_id_y4410 = load i64, i64* %_y4337
  %_4412 = sub i64 %_id_y4410, %_id_x4411
  %_4413 = lshr i64 %_4412, 1
  %_id_x4414 = load i64, i64* %_x4336
  %_4415 = call i64 @binary_gcd(i64 %_4413, i64 %_id_x4414)
  ret i64 %_4415
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4329 = alloca i64
  %_argv4330 = alloca { i64, [0 x i8*] }*
  %_4331 = alloca i64
  %_4332 = alloca i64
  store i64 %argc, i64* %_argc4329
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4330
  store i64 21, i64* %_4331
  store i64 15, i64* %_4332
  %_id_x4333 = load i64, i64* %_4331
  %_id_y4334 = load i64, i64* %_4332
  %_4335 = call i64 @binary_gcd(i64 %_id_x4333, i64 %_id_y4334)
  ret i64 %_4335
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
