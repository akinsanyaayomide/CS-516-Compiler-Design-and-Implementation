; generated from: hw4programs/lfsr.oat
target triple = "x86_64-apple-macosx10.13.0"
@lfsr_iterations = global i64 5
@lfsr_length = global i64 4
@lfsr_init_values = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 1, i1 0, i1 1, i1 0 ] }
@_string4515 = global [2 x i8] c"T\00"
@_string4517 = global [2 x i8] c"F\00"
@_string4490 = global [2 x i8] c" \00"

define i1 @xor(i1 %x, i1 %y) {
  %_x4523 = alloca i1
  %_y4524 = alloca i1
  store i1 %x, i1* %_x4523
  store i1 %y, i1* %_y4524
  %_id_y4531 = load i1, i1* %_y4524
  %_id_x4529 = load i1, i1* %_x4523
  %_4530 = and i1 %_id_x4529, 0
  %_4532 = and i1 %_4530, %_id_y4531
  %_id_y4526 = load i1, i1* %_y4524
  %_4527 = and i1 %_id_y4526, 0
  %_id_x4525 = load i1, i1* %_x4523
  %_4528 = and i1 %_id_x4525, %_4527
  %_4533 = or i1 %_4528, %_4532
  ret i1 %_4533
}

define i8* @string_of_bool(i1 %b) {
  %_b4513 = alloca i1
  store i1 %b, i1* %_b4513
  br label %_start4519
_start4519:
  %_id_b4514 = load i1, i1* %_b4513
  br i1 %_id_b4514, label %_then4520, label %_else4521
_then4520:
  %_str4516 = getelementptr [2 x i8], [2 x i8]* @_string4515, i32 0, i32 0
  ret i8* %_str4516
_else4521:
  %_str4518 = getelementptr [2 x i8], [2 x i8]* @_string4517, i32 0, i32 0
  ret i8* %_str4518
}

define void @print_lfsr({ i64, [0 x i1] }* %lfsr_register, i64 %len) {
  %_lfsr_register4496 = alloca { i64, [0 x i1] }*
  %_len4497 = alloca i64
  %_4498 = alloca i64
  store { i64, [0 x i1] }* %lfsr_register, { i64, [0 x i1] }** %_lfsr_register4496
  store i64 %len, i64* %_len4497
  store i64 0, i64* %_4498
  br label %_start4510
_start4510:
  %_id_len4500 = load i64, i64* %_len4497
  %_id_i4499 = load i64, i64* %_4498
  %_4501 = icmp slt i64 %_id_i4499, %_id_len4500
  br i1 %_4501, label %_body4511, label %_else4512
_body4511:
  %_id_lfsr_register4502 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4496
  %_id_i4503 = load i64, i64* %_4498
  %_index_pointer4504 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_register4502, i32 0, i32 1, i64 %_id_i4503
  %_index_value4505 = load i1, i1* %_index_pointer4504
  %_4506 = call i8* @string_of_bool(i1 %_index_value4505)
  call void @print_string(i8* %_4506)
  %_id_i4508 = load i64, i64* %_4498
  %_4509 = add i64 %_id_i4508, 1
  store i64 %_4509, i64* %_4498
  br label %_start4510
_else4512:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4423 = alloca i64
  %_argv4424 = alloca { i64, [0 x i8*] }*
  %_4425 = alloca { i64, [0 x i1] }*
  %_4429 = alloca i64
  %_4445 = alloca i64
  %_4449 = alloca i1
  %_4461 = alloca i64
  store i64 %argc, i64* %_argc4423
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4424
  %_id_lfsr_length4426 = load i64, i64* @lfsr_length
  %_raw_array4427 = call i64* @oat_alloc_array(i64 %_id_lfsr_length4426)
  %_array4428 = bitcast i64* %_raw_array4427 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array4428, { i64, [0 x i1] }** %_4425
  store i64 0, i64* %_4429
  br label %_start4442
_start4442:
  %_id_lfsr_length4431 = load i64, i64* @lfsr_length
  %_id_i4430 = load i64, i64* %_4429
  %_4432 = icmp slt i64 %_id_i4430, %_id_lfsr_length4431
  br i1 %_4432, label %_body4443, label %_else4444
_body4443:
  %_id_lfsr_init_values4433 = bitcast { i64, [4 x i1] }* @lfsr_init_values to { i64, [0 x i1] }*
  %_id_i4434 = load i64, i64* %_4429
  %_index_pointer4435 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_init_values4433, i32 0, i32 1, i64 %_id_i4434
  %_index_value4436 = load i1, i1* %_index_pointer4435
  %_id_lfsr_register4437 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4425
  %_id_i4438 = load i64, i64* %_4429
  %_4439 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_register4437, i32 0, i32 1, i64 %_id_i4438
  store i1 %_index_value4436, i1* %_4439
  %_id_i4440 = load i64, i64* %_4429
  %_4441 = add i64 %_id_i4440, 1
  store i64 %_4441, i64* %_4429
  br label %_start4442
_else4444:
  store i64 0, i64* %_4445
  br label %_start4484
_start4484:
  %_id_lfsr_iterations4447 = load i64, i64* @lfsr_iterations
  %_id_i4446 = load i64, i64* %_4445
  %_4448 = icmp slt i64 %_id_i4446, %_id_lfsr_iterations4447
  br i1 %_4448, label %_body4485, label %_else4486
_body4485:
  %_id_lfsr_register4450 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4425
  %_id_lfsr_length4451 = load i64, i64* @lfsr_length
  %_4452 = sub i64 %_id_lfsr_length4451, 1
  %_index_pointer4453 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_register4450, i32 0, i32 1, i64 %_4452
  %_index_value4454 = load i1, i1* %_index_pointer4453
  %_id_lfsr_register4455 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4425
  %_id_lfsr_length4456 = load i64, i64* @lfsr_length
  %_4457 = sub i64 %_id_lfsr_length4456, 2
  %_index_pointer4458 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_register4455, i32 0, i32 1, i64 %_4457
  %_index_value4459 = load i1, i1* %_index_pointer4458
  %_4460 = call i1 @xor(i1 %_index_value4454, i1 %_index_value4459)
  store i1 %_4460, i1* %_4449
  %_id_lfsr_length4462 = load i64, i64* @lfsr_length
  %_4463 = sub i64 %_id_lfsr_length4462, 1
  store i64 %_4463, i64* %_4461
  br label %_start4476
_start4476:
  %_id_j4464 = load i64, i64* %_4461
  %_4465 = icmp sgt i64 %_id_j4464, 0
  br i1 %_4465, label %_body4477, label %_else4478
_body4477:
  %_id_lfsr_register4466 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4425
  %_id_j4467 = load i64, i64* %_4461
  %_4468 = sub i64 %_id_j4467, 1
  %_index_pointer4469 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_register4466, i32 0, i32 1, i64 %_4468
  %_index_value4470 = load i1, i1* %_index_pointer4469
  %_id_lfsr_register4471 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4425
  %_id_j4472 = load i64, i64* %_4461
  %_4473 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_register4471, i32 0, i32 1, i64 %_id_j4472
  store i1 %_index_value4470, i1* %_4473
  %_id_j4474 = load i64, i64* %_4461
  %_4475 = sub i64 %_id_j4474, 1
  store i64 %_4475, i64* %_4461
  br label %_start4476
_else4478:
  %_id_new_first4479 = load i1, i1* %_4449
  %_id_lfsr_register4480 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4425
  %_4481 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_register4480, i32 0, i32 1, i32 0
  store i1 %_id_new_first4479, i1* %_4481
  %_id_i4482 = load i64, i64* %_4445
  %_4483 = add i64 %_id_i4482, 1
  store i64 %_4483, i64* %_4445
  br label %_start4484
_else4486:
  %_id_lfsr_init_values4487 = bitcast { i64, [4 x i1] }* @lfsr_init_values to { i64, [0 x i1] }*
  %_id_lfsr_length4488 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_id_lfsr_init_values4487, i64 %_id_lfsr_length4488)
  %_str4491 = getelementptr [2 x i8], [2 x i8]* @_string4490, i32 0, i32 0
  call void @print_string(i8* %_str4491)
  %_id_lfsr_register4493 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4425
  %_id_lfsr_length4494 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_id_lfsr_register4493, i64 %_id_lfsr_length4494)
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
