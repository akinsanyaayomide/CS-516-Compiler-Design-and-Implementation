; generated from: hw4programs/run42.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc502 = alloca i64
  %_argv503 = alloca { i64, [0 x i8*] }*
  %_504 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_519 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_534 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_549 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_564 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc502
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv503
  %_raw_array511 = call i64* @oat_alloc_array(i64 1)
  %_array512 = bitcast i64* %_raw_array511 to { i64, [0 x i64] }*
  %_raw_array509 = call i64* @oat_alloc_array(i64 1)
  %_array510 = bitcast i64* %_raw_array509 to { i64, [0 x i64] }*
  %_raw_array507 = call i64* @oat_alloc_array(i64 1)
  %_array508 = bitcast i64* %_raw_array507 to { i64, [0 x i64] }*
  %_raw_array505 = call i64* @oat_alloc_array(i64 3)
  %_array506 = bitcast i64* %_raw_array505 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_517 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array506, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array512, { i64, [0 x i64] }** %_517
  %_515 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array506, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array510, { i64, [0 x i64] }** %_515
  %_513 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array506, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array508, { i64, [0 x i64] }** %_513
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array506, { i64, [0 x { i64, [0 x i64] }*] }** %_504
  %_raw_array526 = call i64* @oat_alloc_array(i64 1)
  %_array527 = bitcast i64* %_raw_array526 to { i64, [0 x i64] }*
  %_raw_array524 = call i64* @oat_alloc_array(i64 1)
  %_array525 = bitcast i64* %_raw_array524 to { i64, [0 x i64] }*
  %_raw_array522 = call i64* @oat_alloc_array(i64 1)
  %_array523 = bitcast i64* %_raw_array522 to { i64, [0 x i64] }*
  %_raw_array520 = call i64* @oat_alloc_array(i64 3)
  %_array521 = bitcast i64* %_raw_array520 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_532 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array521, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array527, { i64, [0 x i64] }** %_532
  %_530 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array521, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array525, { i64, [0 x i64] }** %_530
  %_528 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array521, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array523, { i64, [0 x i64] }** %_528
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array521, { i64, [0 x { i64, [0 x i64] }*] }** %_519
  %_raw_array541 = call i64* @oat_alloc_array(i64 1)
  %_array542 = bitcast i64* %_raw_array541 to { i64, [0 x i64] }*
  %_raw_array539 = call i64* @oat_alloc_array(i64 1)
  %_array540 = bitcast i64* %_raw_array539 to { i64, [0 x i64] }*
  %_raw_array537 = call i64* @oat_alloc_array(i64 1)
  %_array538 = bitcast i64* %_raw_array537 to { i64, [0 x i64] }*
  %_raw_array535 = call i64* @oat_alloc_array(i64 3)
  %_array536 = bitcast i64* %_raw_array535 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_547 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array536, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array542, { i64, [0 x i64] }** %_547
  %_545 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array536, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array540, { i64, [0 x i64] }** %_545
  %_543 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array536, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array538, { i64, [0 x i64] }** %_543
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array536, { i64, [0 x { i64, [0 x i64] }*] }** %_534
  %_raw_array556 = call i64* @oat_alloc_array(i64 1)
  %_array557 = bitcast i64* %_raw_array556 to { i64, [0 x i64] }*
  %_raw_array554 = call i64* @oat_alloc_array(i64 1)
  %_array555 = bitcast i64* %_raw_array554 to { i64, [0 x i64] }*
  %_raw_array552 = call i64* @oat_alloc_array(i64 1)
  %_array553 = bitcast i64* %_raw_array552 to { i64, [0 x i64] }*
  %_raw_array550 = call i64* @oat_alloc_array(i64 3)
  %_array551 = bitcast i64* %_raw_array550 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_562 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array551, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array557, { i64, [0 x i64] }** %_562
  %_560 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array551, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array555, { i64, [0 x i64] }** %_560
  %_558 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array551, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array553, { i64, [0 x i64] }** %_558
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array551, { i64, [0 x { i64, [0 x i64] }*] }** %_549
  %_raw_array565 = call i64* @oat_alloc_array(i64 3)
  %_array566 = bitcast i64* %_raw_array565 to { i64, [0 x i64] }*
  %_571 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array566, i32 0, i32 1, i32 2
  store i64 2, i64* %_571
  %_569 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array566, i32 0, i32 1, i32 1
  store i64 1, i64* %_569
  %_567 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array566, i32 0, i32 1, i32 0
  store i64 0, i64* %_567
  store { i64, [0 x i64] }* %_array566, { i64, [0 x i64] }** %_564
  %_id_a5573 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_564
  %_id_a2574 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_519
  %_575 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2574, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_id_a5573, { i64, [0 x i64] }** %_575
  %_id_a2576 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_519
  %_index_pointer577 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2576, i32 0, i32 1, i32 0
  %_index_value578 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer577
  %_579 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value578, i32 0, i32 1, i32 0
  store i64 2, i64* %_579
  %_id_a2580 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_519
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2580, { i64, [0 x { i64, [0 x i64] }*] }** %_504
  %_id_a1581 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_504
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a1581, { i64, [0 x { i64, [0 x i64] }*] }** %_534
  %_id_a4582 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_549
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a4582, { i64, [0 x { i64, [0 x i64] }*] }** %_504
  %_id_a3583 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_534
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a3583, { i64, [0 x { i64, [0 x i64] }*] }** %_519
  %_id_a2584 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_519
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2584, { i64, [0 x { i64, [0 x i64] }*] }** %_549
  %_id_a4585 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_549
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a4585, { i64, [0 x { i64, [0 x i64] }*] }** %_534
  %_id_a3586 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_534
  %_index_pointer587 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a3586, i32 0, i32 1, i32 0
  %_index_value588 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer587
  %_index_pointer589 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value588, i32 0, i32 1, i32 0
  %_index_value590 = load i64, i64* %_index_pointer589
  ret i64 %_index_value590
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
