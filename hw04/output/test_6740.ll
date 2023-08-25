; generated from: hw4programs/run34.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc435 = alloca i64
  %_argv436 = alloca { i64, [0 x i8*] }*
  %_a475 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_s476 = alloca i64
  %_i477 = alloca i64
  %_j480 = alloca i64
  store i64 %argc, i64* %_argc435
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv436
  %_raw_array459 = call i64* @oat_alloc_array(i64 4)
  %_array460 = bitcast i64* %_raw_array459 to { i64, [0 x i64] }*
  %_467 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array460, i32 0, i32 1, i32 3
  store i64 11, i64* %_467
  %_465 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array460, i32 0, i32 1, i32 2
  store i64 10, i64* %_465
  %_463 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array460, i32 0, i32 1, i32 1
  store i64 9, i64* %_463
  %_461 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array460, i32 0, i32 1, i32 0
  store i64 8, i64* %_461
  %_raw_array449 = call i64* @oat_alloc_array(i64 4)
  %_array450 = bitcast i64* %_raw_array449 to { i64, [0 x i64] }*
  %_457 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array450, i32 0, i32 1, i32 3
  store i64 7, i64* %_457
  %_455 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array450, i32 0, i32 1, i32 2
  store i64 6, i64* %_455
  %_453 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array450, i32 0, i32 1, i32 1
  store i64 5, i64* %_453
  %_451 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array450, i32 0, i32 1, i32 0
  store i64 4, i64* %_451
  %_raw_array439 = call i64* @oat_alloc_array(i64 4)
  %_array440 = bitcast i64* %_raw_array439 to { i64, [0 x i64] }*
  %_447 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array440, i32 0, i32 1, i32 3
  store i64 3, i64* %_447
  %_445 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array440, i32 0, i32 1, i32 2
  store i64 2, i64* %_445
  %_443 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array440, i32 0, i32 1, i32 1
  store i64 1, i64* %_443
  %_441 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array440, i32 0, i32 1, i32 0
  store i64 0, i64* %_441
  %_raw_array437 = call i64* @oat_alloc_array(i64 3)
  %_array438 = bitcast i64* %_raw_array437 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_473 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array438, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array460, { i64, [0 x i64] }** %_473
  %_471 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array438, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array450, { i64, [0 x i64] }** %_471
  %_469 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array438, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array440, { i64, [0 x i64] }** %_469
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array438, { i64, [0 x { i64, [0 x i64] }*] }** %_a475
  store i64 0, i64* %_s476
  store i64 0, i64* %_i477
  br label %_cond500
_cond500:
  %_id_i478 = load i64, i64* %_i477
  %_bop479 = icmp slt i64 %_id_i478, 3
  br i1 %_bop479, label %_if501, label %_merge499
_if501:
  store i64 0, i64* %_j480
  br label %_cond495
_cond495:
  %_id_j481 = load i64, i64* %_j480
  %_bop482 = icmp slt i64 %_id_j481, 4
  br i1 %_bop482, label %_if496, label %_merge494
_if496:
  %_id_s483 = load i64, i64* %_s476
  %_id_a484 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a475
  %_id_i485 = load i64, i64* %_i477
  %_index_pointer487 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a484, i32 0, i32 1, i64 %_id_i485
  %_index_value486 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer487
  %_id_j488 = load i64, i64* %_j480
  %_index_pointer490 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value486, i32 0, i32 1, i64 %_id_j488
  %_index_value489 = load i64, i64* %_index_pointer490
  %_bop491 = add i64 %_id_s483, %_index_value489
  store i64 %_bop491, i64* %_s476
  %_id_j492 = load i64, i64* %_j480
  %_bop493 = add i64 %_id_j492, 1
  store i64 %_bop493, i64* %_j480
  br label %_cond495
_merge494:
  %_id_i497 = load i64, i64* %_i477
  %_bop498 = add i64 %_id_i497, 1
  store i64 %_bop498, i64* %_i477
  br label %_cond500
_merge499:
  %_id_s502 = load i64, i64* %_s476
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
