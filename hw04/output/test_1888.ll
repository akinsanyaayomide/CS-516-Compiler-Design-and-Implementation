; generated from: hw4programs/lfsr.oat
target triple = "x86_64-apple-macosx10.13.0"
@lfsr_iterations = global i64 5
@lfsr_length = global i64 4
@lfsr_init_values = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 1, i1 0, i1 1, i1 0 ] }
@_string4508 = global [2 x i8] c"T\00"
@_string4510 = global [2 x i8] c"F\00"
@_string4483 = global [2 x i8] c" \00"

define i1 @xor(i1 %x, i1 %y) {
  %_x4516 = alloca i1
  %_y4517 = alloca i1
  store i1 %x, i1* %_x4516
  store i1 %y, i1* %_y4517
  %_id_y4524 = load i1, i1* %_y4517
  %_id_x4522 = load i1, i1* %_x4516
  %_unop4523 = icmp eq i1 %_id_x4522, 0
  %_4525 = and i1 %_unop4523, %_id_y4524
  %_id_y4519 = load i1, i1* %_y4517
  %_unop4520 = icmp eq i1 %_id_y4519, 0
  %_id_x4518 = load i1, i1* %_x4516
  %_4521 = and i1 %_id_x4518, %_unop4520
  %_4526 = or i1 %_4521, %_4525
  ret i1 %_4526
}

define i8* @string_of_bool(i1 %b) {
  %_b4506 = alloca i1
  store i1 %b, i1* %_b4506
  br label %_start4512
_start4512:
  %_id_b4507 = load i1, i1* %_b4506
  br i1 %_id_b4507, label %_then4513, label %_else4514
_then4513:
  %_string14509 = getelementptr [2 x i8], [2 x i8]* @_string4508, i32 0, i32 0
  ret i8* %_string14509
_else4514:
  %_string14511 = getelementptr [2 x i8], [2 x i8]* @_string4510, i32 0, i32 0
  ret i8* %_string14511
}

define void @print_lfsr({ i64, [0 x i1] }* %lfsr_register, i64 %len) {
  %_lfsr_register4489 = alloca { i64, [0 x i1] }*
  %_len4490 = alloca i64
  %_4491 = alloca i64
  store { i64, [0 x i1] }* %lfsr_register, { i64, [0 x i1] }** %_lfsr_register4489
  store i64 %len, i64* %_len4490
  store i64 0, i64* %_4491
  br label %_start4503
_start4503:
  %_id_len4493 = load i64, i64* %_len4490
  %_id_i4492 = load i64, i64* %_4491
  %_4494 = icmp slt i64 %_id_i4492, %_id_len4493
  br i1 %_4494, label %_body4504, label %_else4505
_body4504:
  %_id_lfsr_register4495 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4489
  %_id_i4496 = load i64, i64* %_4491
  %_index_pointer4497 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_register4495, i32 0, i32 1, i64 %_id_i4496
  %_index_value4498 = load i1, i1* %_index_pointer4497
  %_4499 = call i8* @string_of_bool(i1 %_index_value4498)
  call void @print_string(i8* %_4499)
  %_id_i4501 = load i64, i64* %_4491
  %_4502 = add i64 %_id_i4501, 1
  store i64 %_4502, i64* %_4491
  br label %_start4503
_else4505:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4416 = alloca i64
  %_argv4417 = alloca { i64, [0 x i8*] }*
  %_4418 = alloca { i64, [0 x i1] }*
  %_4422 = alloca i64
  %_4438 = alloca i64
  %_4442 = alloca i1
  %_4454 = alloca i64
  store i64 %argc, i64* %_argc4416
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4417
  %_id_lfsr_length4419 = load i64, i64* @lfsr_length
  %_raw_array4420 = call i64* @oat_alloc_array(i64 %_id_lfsr_length4419)
  %_array4421 = bitcast i64* %_raw_array4420 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array4421, { i64, [0 x i1] }** %_4418
  store i64 0, i64* %_4422
  br label %_start4435
_start4435:
  %_id_lfsr_length4424 = load i64, i64* @lfsr_length
  %_id_i4423 = load i64, i64* %_4422
  %_4425 = icmp slt i64 %_id_i4423, %_id_lfsr_length4424
  br i1 %_4425, label %_body4436, label %_else4437
_body4436:
  %_id_lfsr_init_values4426 = bitcast { i64, [4 x i1] }* @lfsr_init_values to { i64, [0 x i1] }*
  %_id_i4427 = load i64, i64* %_4422
  %_index_pointer4428 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_init_values4426, i32 0, i32 1, i64 %_id_i4427
  %_index_value4429 = load i1, i1* %_index_pointer4428
  %_id_lfsr_register4430 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4418
  %_id_i4431 = load i64, i64* %_4422
  %_4432 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_register4430, i32 0, i32 1, i64 %_id_i4431
  store i1 %_index_value4429, i1* %_4432
  %_id_i4433 = load i64, i64* %_4422
  %_4434 = add i64 %_id_i4433, 1
  store i64 %_4434, i64* %_4422
  br label %_start4435
_else4437:
  store i64 0, i64* %_4438
  br label %_start4477
_start4477:
  %_id_lfsr_iterations4440 = load i64, i64* @lfsr_iterations
  %_id_i4439 = load i64, i64* %_4438
  %_4441 = icmp slt i64 %_id_i4439, %_id_lfsr_iterations4440
  br i1 %_4441, label %_body4478, label %_else4479
_body4478:
  %_id_lfsr_register4443 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4418
  %_id_lfsr_length4444 = load i64, i64* @lfsr_length
  %_4445 = sub i64 %_id_lfsr_length4444, 1
  %_index_pointer4446 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_register4443, i32 0, i32 1, i64 %_4445
  %_index_value4447 = load i1, i1* %_index_pointer4446
  %_id_lfsr_register4448 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4418
  %_id_lfsr_length4449 = load i64, i64* @lfsr_length
  %_4450 = sub i64 %_id_lfsr_length4449, 2
  %_index_pointer4451 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_register4448, i32 0, i32 1, i64 %_4450
  %_index_value4452 = load i1, i1* %_index_pointer4451
  %_4453 = call i1 @xor(i1 %_index_value4447, i1 %_index_value4452)
  store i1 %_4453, i1* %_4442
  %_id_lfsr_length4455 = load i64, i64* @lfsr_length
  %_4456 = sub i64 %_id_lfsr_length4455, 1
  store i64 %_4456, i64* %_4454
  br label %_start4469
_start4469:
  %_id_j4457 = load i64, i64* %_4454
  %_4458 = icmp sgt i64 %_id_j4457, 0
  br i1 %_4458, label %_body4470, label %_else4471
_body4470:
  %_id_lfsr_register4459 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4418
  %_id_j4460 = load i64, i64* %_4454
  %_4461 = sub i64 %_id_j4460, 1
  %_index_pointer4462 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_register4459, i32 0, i32 1, i64 %_4461
  %_index_value4463 = load i1, i1* %_index_pointer4462
  %_id_lfsr_register4464 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4418
  %_id_j4465 = load i64, i64* %_4454
  %_4466 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_register4464, i32 0, i32 1, i64 %_id_j4465
  store i1 %_index_value4463, i1* %_4466
  %_id_j4467 = load i64, i64* %_4454
  %_4468 = sub i64 %_id_j4467, 1
  store i64 %_4468, i64* %_4454
  br label %_start4469
_else4471:
  %_id_new_first4472 = load i1, i1* %_4442
  %_id_lfsr_register4473 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4418
  %_4474 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_register4473, i32 0, i32 1, i32 0
  store i1 %_id_new_first4472, i1* %_4474
  %_id_i4475 = load i64, i64* %_4438
  %_4476 = add i64 %_id_i4475, 1
  store i64 %_4476, i64* %_4438
  br label %_start4477
_else4479:
  %_id_lfsr_init_values4480 = bitcast { i64, [4 x i1] }* @lfsr_init_values to { i64, [0 x i1] }*
  %_id_lfsr_length4481 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_id_lfsr_init_values4480, i64 %_id_lfsr_length4481)
  %_string14484 = getelementptr [2 x i8], [2 x i8]* @_string4483, i32 0, i32 0
  call void @print_string(i8* %_string14484)
  %_id_lfsr_register4486 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4418
  %_id_lfsr_length4487 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_id_lfsr_register4486, i64 %_id_lfsr_length4487)
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