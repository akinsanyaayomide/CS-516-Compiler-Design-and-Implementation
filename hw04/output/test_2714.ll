; generated from: hw4programs/run34.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc435 = alloca i64
  %_argv436 = alloca { i64, [0 x i8*] }*
  %_437 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_476 = alloca i64
  %_477 = alloca i64
  %_480 = alloca i64
  store i64 %argc, i64* %_argc435
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv436
  %_raw_array460 = call i64* @oat_alloc_array(i64 4)
  %_array461 = bitcast i64* %_raw_array460 to { i64, [0 x i64] }*
  %_468 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array461, i32 0, i32 1, i32 3
  store i64 11, i64* %_468
  %_466 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array461, i32 0, i32 1, i32 2
  store i64 10, i64* %_466
  %_464 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array461, i32 0, i32 1, i32 1
  store i64 9, i64* %_464
  %_462 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array461, i32 0, i32 1, i32 0
  store i64 8, i64* %_462
  %_raw_array450 = call i64* @oat_alloc_array(i64 4)
  %_array451 = bitcast i64* %_raw_array450 to { i64, [0 x i64] }*
  %_458 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array451, i32 0, i32 1, i32 3
  store i64 7, i64* %_458
  %_456 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array451, i32 0, i32 1, i32 2
  store i64 6, i64* %_456
  %_454 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array451, i32 0, i32 1, i32 1
  store i64 5, i64* %_454
  %_452 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array451, i32 0, i32 1, i32 0
  store i64 4, i64* %_452
  %_raw_array440 = call i64* @oat_alloc_array(i64 4)
  %_array441 = bitcast i64* %_raw_array440 to { i64, [0 x i64] }*
  %_448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array441, i32 0, i32 1, i32 3
  store i64 3, i64* %_448
  %_446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array441, i32 0, i32 1, i32 2
  store i64 2, i64* %_446
  %_444 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array441, i32 0, i32 1, i32 1
  store i64 1, i64* %_444
  %_442 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array441, i32 0, i32 1, i32 0
  store i64 0, i64* %_442
  %_raw_array438 = call i64* @oat_alloc_array(i64 3)
  %_array439 = bitcast i64* %_raw_array438 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_474 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array439, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array461, { i64, [0 x i64] }** %_474
  %_472 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array439, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array451, { i64, [0 x i64] }** %_472
  %_470 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array439, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array441, { i64, [0 x i64] }** %_470
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array439, { i64, [0 x { i64, [0 x i64] }*] }** %_437
  store i64 0, i64* %_476
  store i64 0, i64* %_477
  br label %_cond500
_cond500:
  %_id_i478 = load i64, i64* %_477
  %_479 = icmp slt i64 %_id_i478, 3
  br i1 %_479, label %_if499, label %_merge501
_if499:
  store i64 0, i64* %_480
  br label %_cond495
_cond495:
  %_id_j481 = load i64, i64* %_480
  %_482 = icmp slt i64 %_id_j481, 4
  br i1 %_482, label %_if494, label %_merge496
_if494:
  %_id_a484 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_437
  %_id_i485 = load i64, i64* %_477
  %_index_pointer486 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a484, i32 0, i32 1, i64 %_id_i485
  %_index_value487 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer486
  %_id_j488 = load i64, i64* %_480
  %_index_pointer489 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value487, i32 0, i32 1, i64 %_id_j488
  %_index_value490 = load i64, i64* %_index_pointer489
  %_id_s483 = load i64, i64* %_476
  %_491 = add i64 %_id_s483, %_index_value490
  store i64 %_491, i64* %_476
  %_id_j492 = load i64, i64* %_480
  %_493 = add i64 %_id_j492, 1
  store i64 %_493, i64* %_480
  br label %_cond495
_merge496:
  %_id_i497 = load i64, i64* %_477
  %_498 = add i64 %_id_i497, 1
  store i64 %_498, i64* %_477
  br label %_cond500
_merge501:
  %_id_s502 = load i64, i64* %_476
  ret i64 %_id_s502
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
