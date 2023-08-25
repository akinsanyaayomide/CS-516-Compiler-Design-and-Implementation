; generated from: hw4programs/run35.oat
target triple = "x86_64-apple-macosx10.13.0"
@a = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc488 = alloca i64
  %_argv489 = alloca { i64, [0 x i8*] }*
  %_528 = alloca i64
  %_529 = alloca i64
  %_532 = alloca i64
  store i64 %argc, i64* %_argc488
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv489
  %_raw_array512 = call i64* @oat_alloc_array(i64 4)
  %_array513 = bitcast i64* %_raw_array512 to { i64, [0 x i64] }*
  %_520 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array513, i32 0, i32 1, i32 3
  store i64 11, i64* %_520
  %_518 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array513, i32 0, i32 1, i32 2
  store i64 10, i64* %_518
  %_516 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array513, i32 0, i32 1, i32 1
  store i64 9, i64* %_516
  %_514 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array513, i32 0, i32 1, i32 0
  store i64 8, i64* %_514
  %_raw_array502 = call i64* @oat_alloc_array(i64 4)
  %_array503 = bitcast i64* %_raw_array502 to { i64, [0 x i64] }*
  %_510 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array503, i32 0, i32 1, i32 3
  store i64 7, i64* %_510
  %_508 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array503, i32 0, i32 1, i32 2
  store i64 6, i64* %_508
  %_506 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array503, i32 0, i32 1, i32 1
  store i64 5, i64* %_506
  %_504 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array503, i32 0, i32 1, i32 0
  store i64 4, i64* %_504
  %_raw_array492 = call i64* @oat_alloc_array(i64 4)
  %_array493 = bitcast i64* %_raw_array492 to { i64, [0 x i64] }*
  %_500 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array493, i32 0, i32 1, i32 3
  store i64 3, i64* %_500
  %_498 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array493, i32 0, i32 1, i32 2
  store i64 2, i64* %_498
  %_496 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array493, i32 0, i32 1, i32 1
  store i64 1, i64* %_496
  %_494 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array493, i32 0, i32 1, i32 0
  store i64 0, i64* %_494
  %_raw_array490 = call i64* @oat_alloc_array(i64 3)
  %_array491 = bitcast i64* %_raw_array490 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_526 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array491, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array513, { i64, [0 x i64] }** %_526
  %_524 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array491, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array503, { i64, [0 x i64] }** %_524
  %_522 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array491, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array493, { i64, [0 x i64] }** %_522
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array491, { i64, [0 x { i64, [0 x i64] }*] }** @a
  store i64 0, i64* %_528
  store i64 0, i64* %_529
  br label %_cond552
_cond552:
  %_id_i530 = load i64, i64* %_529
  %_531 = icmp slt i64 %_id_i530, 3
  br i1 %_531, label %_if551, label %_merge553
_if551:
  store i64 0, i64* %_532
  br label %_cond547
_cond547:
  %_id_j533 = load i64, i64* %_532
  %_534 = icmp slt i64 %_id_j533, 4
  br i1 %_534, label %_if546, label %_merge548
_if546:
  %_id_a536 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @a
  %_id_i537 = load i64, i64* %_529
  %_index_pointer538 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a536, i32 0, i32 1, i64 %_id_i537
  %_index_value539 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer538
  %_id_j540 = load i64, i64* %_532
  %_index_pointer541 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value539, i32 0, i32 1, i64 %_id_j540
  %_index_value542 = load i64, i64* %_index_pointer541
  %_id_s535 = load i64, i64* %_528
  %_543 = add i64 %_id_s535, %_index_value542
  store i64 %_543, i64* %_528
  %_id_j544 = load i64, i64* %_532
  %_545 = add i64 %_id_j544, 1
  store i64 %_545, i64* %_532
  br label %_cond547
_merge548:
  %_id_i549 = load i64, i64* %_529
  %_550 = add i64 %_id_i549, 1
  store i64 %_550, i64* %_529
  br label %_cond552
_merge553:
  %_id_s554 = load i64, i64* %_528
  ret i64 %_id_s554
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
