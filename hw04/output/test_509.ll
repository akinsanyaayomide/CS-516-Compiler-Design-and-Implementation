; generated from: hw4programs/binary_gcd.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_x4341 = alloca i64
  %_y4342 = alloca i64
  store i64 %x, i64* %_x4341
  store i64 %y, i64* %_y4342
  br label %_start4347
_start4347:
  %_id_y4344 = load i64, i64* %_y4342
  %_id_x4343 = load i64, i64* %_x4341
  %_4345 = icmp eq i64 %_id_x4343, %_id_y4344
  br i1 %_4345, label %_then4348, label %_else4349
_then4348:
  %_id_x4346 = load i64, i64* %_x4341
  ret i64 %_id_x4346
_else4349:
  br label %_post4350
_post4350:
  br label %_start4354
_start4354:
  %_id_x4351 = load i64, i64* %_x4341
  %_4352 = icmp eq i64 %_id_x4351, 0
  br i1 %_4352, label %_then4355, label %_else4356
_then4355:
  %_id_y4353 = load i64, i64* %_y4342
  ret i64 %_id_y4353
_else4356:
  br label %_post4357
_post4357:
  br label %_start4361
_start4361:
  %_id_y4358 = load i64, i64* %_y4342
  %_4359 = icmp eq i64 %_id_y4358, 0
  br i1 %_4359, label %_then4362, label %_else4363
_then4362:
  %_id_x4360 = load i64, i64* %_x4341
  ret i64 %_id_x4360
_else4363:
  br label %_post4364
_post4364:
  br label %_start4387
_start4387:
  %_id_x4365 = load i64, i64* %_x4341
  %_4366 = mul i64 %_id_x4365, -1
  %_4367 = add i64 %_4366, -1
  %_4368 = and i64 %_4367, 1
  %_4369 = icmp eq i64 %_4368, 1
  br i1 %_4369, label %_then4388, label %_else4389
_then4388:
  br label %_start4383
_start4383:
  %_id_y4370 = load i64, i64* %_y4342
  %_4371 = and i64 %_id_y4370, 1
  %_4372 = icmp eq i64 %_4371, 1
  br i1 %_4372, label %_then4384, label %_else4385
_then4384:
  %_id_x4373 = load i64, i64* %_x4341
  %_4374 = lshr i64 %_id_x4373, 1
  %_id_y4375 = load i64, i64* %_y4342
  %_4376 = call i64 @binary_gcd(i64 %_4374, i64 %_id_y4375)
  ret i64 %_4376
_else4385:
  %_id_x4377 = load i64, i64* %_x4341
  %_4378 = lshr i64 %_id_x4377, 1
  %_id_y4379 = load i64, i64* %_y4342
  %_4380 = lshr i64 %_id_y4379, 1
  %_4381 = call i64 @binary_gcd(i64 %_4378, i64 %_4380)
  %_4382 = shl i64 %_4381, 1
  ret i64 %_4382
_post4386:
  br label %_post4390
_else4389:
  br label %_post4390
_post4390:
  br label %_start4400
_start4400:
  %_id_y4391 = load i64, i64* %_y4342
  %_4392 = mul i64 %_id_y4391, -1
  %_4393 = add i64 %_4392, -1
  %_4394 = and i64 %_4393, 1
  %_4395 = icmp eq i64 %_4394, 1
  br i1 %_4395, label %_then4401, label %_else4402
_then4401:
  %_id_x4396 = load i64, i64* %_x4341
  %_id_y4397 = load i64, i64* %_y4342
  %_4398 = lshr i64 %_id_y4397, 1
  %_4399 = call i64 @binary_gcd(i64 %_id_x4396, i64 %_4398)
  ret i64 %_4399
_else4402:
  br label %_post4403
_post4403:
  br label %_start4413
_start4413:
  %_id_y4405 = load i64, i64* %_y4342
  %_id_x4404 = load i64, i64* %_x4341
  %_4406 = icmp sgt i64 %_id_x4404, %_id_y4405
  br i1 %_4406, label %_then4414, label %_else4415
_then4414:
  %_id_y4408 = load i64, i64* %_y4342
  %_id_x4407 = load i64, i64* %_x4341
  %_4409 = sub i64 %_id_x4407, %_id_y4408
  %_4410 = lshr i64 %_4409, 1
  %_id_y4411 = load i64, i64* %_y4342
  %_4412 = call i64 @binary_gcd(i64 %_4410, i64 %_id_y4411)
  ret i64 %_4412
_else4415:
  br label %_post4416
_post4416:
  %_id_x4418 = load i64, i64* %_x4341
  %_id_y4417 = load i64, i64* %_y4342
  %_4419 = sub i64 %_id_y4417, %_id_x4418
  %_4420 = lshr i64 %_4419, 1
  %_id_x4421 = load i64, i64* %_x4341
  %_4422 = call i64 @binary_gcd(i64 %_4420, i64 %_id_x4421)
  ret i64 %_4422
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4334 = alloca i64
  %_argv4335 = alloca { i64, [0 x i8*] }*
  %_4336 = alloca i64
  %_4337 = alloca i64
  store i64 %argc, i64* %_argc4334
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4335
  store i64 21, i64* %_4336
  store i64 15, i64* %_4337
  %_id_x4338 = load i64, i64* %_4336
  %_id_y4339 = load i64, i64* %_4337
  %_4340 = call i64 @binary_gcd(i64 %_id_x4338, i64 %_id_y4339)
  ret i64 %_4340
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
