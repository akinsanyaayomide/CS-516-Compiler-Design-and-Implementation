; generated from: hw4programs/count_sort.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string4376 = global [2 x i8] c"
\00"

define i64 @min({ i64, [0 x i64] }* %arr, i64 %len) {
  %_arr4505 = alloca { i64, [0 x i64] }*
  %_len4506 = alloca i64
  %_4507 = alloca i64
  %_4511 = alloca i64
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4505
  store i64 %len, i64* %_len4506
  %_id_arr4508 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4505
  %_index_pointer4510 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4508, i32 0, i32 1, i32 0
  %_index_value4509 = load i64, i64* %_index_pointer4510
  store i64 %_index_value4509, i64* %_4507
  store i64 0, i64* %_4511
  br label %_cond4532
_cond4532:
  %_id_i4512 = load i64, i64* %_4511
  %_id_len4513 = load i64, i64* %_len4506
  %_bop4514 = icmp slt i64 %_id_i4512, %_id_len4513
  br i1 %_bop4514, label %_if4531, label %_merge4533
_if4531:
  br label %_begin_if4525
_begin_if4525:
  %_id_arr4515 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4505
  %_id_i4516 = load i64, i64* %_4511
  %_index_pointer4518 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4515, i32 0, i32 1, i64 %_id_i4516
  %_index_value4517 = load i64, i64* %_index_pointer4518
  %_id_min4519 = load i64, i64* %_4507
  %_bop4520 = icmp slt i64 %_index_value4517, %_id_min4519
  br i1 %_bop4520, label %_then_branch4526, label %_else_branch4527
_then_branch4526:
  %_id_arr4521 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4505
  %_id_i4522 = load i64, i64* %_4511
  %_index_pointer4524 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4521, i32 0, i32 1, i64 %_id_i4522
  %_index_value4523 = load i64, i64* %_index_pointer4524
  store i64 %_index_value4523, i64* %_4507
  br label %_end_if4528
_else_branch4527:
  br label %_end_if4528
_end_if4528:
  %_id_i4529 = load i64, i64* %_4511
  %_bop4530 = add i64 %_id_i4529, 1
  store i64 %_bop4530, i64* %_4511
  br label %_cond4532
_merge4533:
  %_id_min4534 = load i64, i64* %_4507
  ret i64 %_id_min4534
}

define i64 @max({ i64, [0 x i64] }* %arr, i64 %len) {
  %_arr4475 = alloca { i64, [0 x i64] }*
  %_len4476 = alloca i64
  %_4477 = alloca i64
  %_4481 = alloca i64
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4475
  store i64 %len, i64* %_len4476
  %_id_arr4478 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4475
  %_index_pointer4480 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4478, i32 0, i32 1, i32 0
  %_index_value4479 = load i64, i64* %_index_pointer4480
  store i64 %_index_value4479, i64* %_4477
  store i64 0, i64* %_4481
  br label %_cond4502
_cond4502:
  %_id_i4482 = load i64, i64* %_4481
  %_id_len4483 = load i64, i64* %_len4476
  %_bop4484 = icmp slt i64 %_id_i4482, %_id_len4483
  br i1 %_bop4484, label %_if4501, label %_merge4503
_if4501:
  br label %_begin_if4495
_begin_if4495:
  %_id_arr4485 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4475
  %_id_i4486 = load i64, i64* %_4481
  %_index_pointer4488 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4485, i32 0, i32 1, i64 %_id_i4486
  %_index_value4487 = load i64, i64* %_index_pointer4488
  %_id_max4489 = load i64, i64* %_4477
  %_bop4490 = icmp sgt i64 %_index_value4487, %_id_max4489
  br i1 %_bop4490, label %_then_branch4496, label %_else_branch4497
_then_branch4496:
  %_id_arr4491 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4475
  %_id_i4492 = load i64, i64* %_4481
  %_index_pointer4494 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4491, i32 0, i32 1, i64 %_id_i4492
  %_index_value4493 = load i64, i64* %_index_pointer4494
  store i64 %_index_value4493, i64* %_4477
  br label %_end_if4498
_else_branch4497:
  br label %_end_if4498
_end_if4498:
  %_id_i4499 = load i64, i64* %_4481
  %_bop4500 = add i64 %_id_i4499, 1
  store i64 %_bop4500, i64* %_4481
  br label %_cond4502
_merge4503:
  %_id_max4504 = load i64, i64* %_4477
  ret i64 %_id_max4504
}

define { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %arr, i64 %len) {
  %_arr4386 = alloca { i64, [0 x i64] }*
  %_len4387 = alloca i64
  %_4388 = alloca i64
  %_4392 = alloca i64
  %_4396 = alloca { i64, [0 x i64] }*
  %_4403 = alloca i64
  %_4430 = alloca i64
  %_4432 = alloca i64
  %_4433 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4386
  store i64 %len, i64* %_len4387
  %_id_arr4389 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4386
  %_id_len4390 = load i64, i64* %_len4387
  %_4391 = call i64 @min({ i64, [0 x i64] }* %_id_arr4389, i64 %_id_len4390)
  store i64 %_4391, i64* %_4388
  %_id_arr4393 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4386
  %_id_len4394 = load i64, i64* %_len4387
  %_4395 = call i64 @max({ i64, [0 x i64] }* %_id_arr4393, i64 %_id_len4394)
  store i64 %_4395, i64* %_4392
  %_id_max4397 = load i64, i64* %_4392
  %_id_min4398 = load i64, i64* %_4388
  %_bop4399 = sub i64 %_id_max4397, %_id_min4398
  %_bop4400 = add i64 %_bop4399, 1
  %_raw_array4401 = call i64* @oat_alloc_array(i64 %_bop4400)
  %_array4402 = bitcast i64* %_raw_array4401 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4402, { i64, [0 x i64] }** %_4396
  store i64 0, i64* %_4403
  br label %_cond4428
_cond4428:
  %_id_i4404 = load i64, i64* %_4403
  %_id_len4405 = load i64, i64* %_len4387
  %_bop4406 = icmp slt i64 %_id_i4404, %_id_len4405
  br i1 %_bop4406, label %_if4427, label %_merge4429
_if4427:
  %_id_counts4407 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4396
  %_id_arr4408 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4386
  %_id_i4409 = load i64, i64* %_4403
  %_index_pointer4411 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4408, i32 0, i32 1, i64 %_id_i4409
  %_index_value4410 = load i64, i64* %_index_pointer4411
  %_id_min4412 = load i64, i64* %_4388
  %_bop4413 = sub i64 %_index_value4410, %_id_min4412
  %_index_pointer4415 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_counts4407, i32 0, i32 1, i64 %_bop4413
  %_index_value4414 = load i64, i64* %_index_pointer4415
  %_bop4416 = add i64 %_index_value4414, 1
  %_id_counts4417 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4396
  %_id_arr4418 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4386
  %_id_i4419 = load i64, i64* %_4403
  %_index_pointer4421 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4418, i32 0, i32 1, i64 %_id_i4419
  %_index_value4420 = load i64, i64* %_index_pointer4421
  %_id_min4422 = load i64, i64* %_4388
  %_bop4423 = sub i64 %_index_value4420, %_id_min4422
  %_4424 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_counts4417, i32 0, i32 1, i64 %_bop4423
  store i64 %_bop4416, i64* %_4424
  %_id_i4425 = load i64, i64* %_4403
  %_bop4426 = add i64 %_id_i4425, 1
  store i64 %_bop4426, i64* %_4403
  br label %_cond4428
_merge4429:
  %_id_min4431 = load i64, i64* %_4388
  store i64 %_id_min4431, i64* %_4430
  store i64 0, i64* %_4432
  %_id_len4434 = load i64, i64* %_len4387
  %_raw_array4435 = call i64* @oat_alloc_array(i64 %_id_len4434)
  %_array4436 = bitcast i64* %_raw_array4435 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4436, { i64, [0 x i64] }** %_4433
  br label %_cond4472
_cond4472:
  %_id_i4437 = load i64, i64* %_4430
  %_id_max4438 = load i64, i64* %_4392
  %_bop4439 = icmp sle i64 %_id_i4437, %_id_max4438
  br i1 %_bop4439, label %_if4471, label %_merge4473
_if4471:
  br label %_begin_if4467
_begin_if4467:
  %_id_counts4440 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4396
  %_id_i4441 = load i64, i64* %_4430
  %_id_min4442 = load i64, i64* %_4388
  %_bop4443 = sub i64 %_id_i4441, %_id_min4442
  %_index_pointer4445 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_counts4440, i32 0, i32 1, i64 %_bop4443
  %_index_value4444 = load i64, i64* %_index_pointer4445
  %_bop4446 = icmp sgt i64 %_index_value4444, 0
  br i1 %_bop4446, label %_then_branch4468, label %_else_branch4469
_then_branch4468:
  %_id_i4447 = load i64, i64* %_4430
  %_id_out4448 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4433
  %_id_j4449 = load i64, i64* %_4432
  %_4450 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_out4448, i32 0, i32 1, i64 %_id_j4449
  store i64 %_id_i4447, i64* %_4450
  %_id_counts4451 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4396
  %_id_i4452 = load i64, i64* %_4430
  %_id_min4453 = load i64, i64* %_4388
  %_bop4454 = sub i64 %_id_i4452, %_id_min4453
  %_index_pointer4456 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_counts4451, i32 0, i32 1, i64 %_bop4454
  %_index_value4455 = load i64, i64* %_index_pointer4456
  %_bop4457 = sub i64 %_index_value4455, 1
  %_id_counts4458 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4396
  %_id_i4459 = load i64, i64* %_4430
  %_id_min4460 = load i64, i64* %_4388
  %_bop4461 = sub i64 %_id_i4459, %_id_min4460
  %_4462 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_counts4458, i32 0, i32 1, i64 %_bop4461
  store i64 %_bop4457, i64* %_4462
  %_id_j4463 = load i64, i64* %_4432
  %_bop4464 = add i64 %_id_j4463, 1
  store i64 %_bop4464, i64* %_4432
  br label %_end_if4470
_else_branch4469:
  %_id_i4465 = load i64, i64* %_4430
  %_bop4466 = add i64 %_id_i4465, 1
  store i64 %_bop4466, i64* %_4430
  br label %_end_if4470
_end_if4470:
  br label %_cond4472
_merge4473:
  %_id_out4474 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4433
  ret { i64, [0 x i64] }* %_id_out4474
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4340 = alloca i64
  %_argv4341 = alloca { i64, [0 x i8*] }*
  %_4342 = alloca { i64, [0 x i64] }*
  %_4372 = alloca i64
  %_4379 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc4340
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4341
  %_raw_array4343 = call i64* @oat_alloc_array(i64 9)
  %_array4344 = bitcast i64* %_raw_array4343 to { i64, [0 x i64] }*
  %_4371 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4344, i32 0, i32 1, i32 8
  store i64 67, i64* %_4369
  %_4368 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4344, i32 0, i32 1, i32 7
  store i64 89, i64* %_4366
  %_4365 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4344, i32 0, i32 1, i32 6
  store i64 69, i64* %_4363
  %_4362 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4344, i32 0, i32 1, i32 5
  store i64 65, i64* %_4360
  %_4359 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4344, i32 0, i32 1, i32 4
  store i64 65, i64* %_4357
  %_4356 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4344, i32 0, i32 1, i32 3
  store i64 90, i64* %_4354
  %_4353 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4344, i32 0, i32 1, i32 2
  store i64 72, i64* %_4351
  %_4350 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4344, i32 0, i32 1, i32 1
  store i64 70, i64* %_4348
  %_4347 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4344, i32 0, i32 1, i32 0
  store i64 65, i64* %_4345
  store { i64, [0 x i64] }* %_array4344, { i64, [0 x i64] }** %_4342
  store i64 9, i64* %_4372
  %_id_arr4373 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4342
  %_4374 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_arr4373)
  call void @print_string(i8* %_4374)
  %_string14377 = getelementptr [2 x i8], [2 x i8]* @_string4376, i32 0, i32 0
  call void @print_string(i8* %_string14377)
  %_id_arr4380 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4342
  %_id_len4381 = load i64, i64* %_4372
  %_4382 = call { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_id_arr4380, i64 %_id_len4381)
  store { i64, [0 x i64] }* %_4382, { i64, [0 x i64] }** %_4379
  %_id_sorted4383 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4379
  %_4384 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_sorted4383)
  call void @print_string(i8* %_4384)
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
