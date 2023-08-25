; generated from: hw4programs/run35.oat
target triple = "x86_64-apple-macosx10.13.0"
@a = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc507 = alloca i64
  %_argv508 = alloca { i64, [0 x i8*] }*
  %_547 = alloca i64
  %_548 = alloca i64
  %_551 = alloca i64
  store i64 %argc, i64* %_argc507
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv508
  %_raw_array531 = call i64* @oat_alloc_array(i64 4)
  %_array532 = bitcast i64* %_raw_array531 to { i64, [0 x i64] }*
  %_539 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array532, i32 0, i32 1, i32 3
  store i64 11, i64* %_539
  %_537 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array532, i32 0, i32 1, i32 2
  store i64 10, i64* %_537
  %_535 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array532, i32 0, i32 1, i32 1
  store i64 9, i64* %_535
  %_533 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array532, i32 0, i32 1, i32 0
  store i64 8, i64* %_533
  %_raw_array521 = call i64* @oat_alloc_array(i64 4)
  %_array522 = bitcast i64* %_raw_array521 to { i64, [0 x i64] }*
  %_529 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array522, i32 0, i32 1, i32 3
  store i64 7, i64* %_529
  %_527 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array522, i32 0, i32 1, i32 2
  store i64 6, i64* %_527
  %_525 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array522, i32 0, i32 1, i32 1
  store i64 5, i64* %_525
  %_523 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array522, i32 0, i32 1, i32 0
  store i64 4, i64* %_523
  %_raw_array511 = call i64* @oat_alloc_array(i64 4)
  %_array512 = bitcast i64* %_raw_array511 to { i64, [0 x i64] }*
  %_519 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array512, i32 0, i32 1, i32 3
  store i64 3, i64* %_519
  %_517 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array512, i32 0, i32 1, i32 2
  store i64 2, i64* %_517
  %_515 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array512, i32 0, i32 1, i32 1
  store i64 1, i64* %_515
  %_513 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array512, i32 0, i32 1, i32 0
  store i64 0, i64* %_513
  %_raw_array509 = call i64* @oat_alloc_array(i64 3)
  %_array510 = bitcast i64* %_raw_array509 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_545 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array510, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array532, { i64, [0 x i64] }** %_545
  %_543 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array510, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array522, { i64, [0 x i64] }** %_543
  %_541 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array510, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array512, { i64, [0 x i64] }** %_541
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array510, { i64, [0 x { i64, [0 x i64] }*] }** @a
  store i64 0, i64* %_547
  store i64 0, i64* %_548
  br label %_start570
_start570:
  %_id_i549 = load i64, i64* %_548
  %_550 = icmp slt i64 %_id_i549, 3
  br i1 %_550, label %_body571, label %_else572
_body571:
  store i64 0, i64* %_551
  br label %_start565
_start565:
  %_id_j552 = load i64, i64* %_551
  %_553 = icmp slt i64 %_id_j552, 4
  br i1 %_553, label %_body566, label %_else567
_body566:
  %_id_a555 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* @a to { i64, [0 x { i64, [0 x i64] }*] }*
  %_id_i556 = load i64, i64* %_548
  %_index_pointer557 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a555, i32 0, i32 1, i64 %_id_i556
  %_index_value558 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer557
  %_id_j559 = load i64, i64* %_551
  %_index_pointer560 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value558, i32 0, i32 1, i64 %_id_j559
  %_index_value561 = load i64, i64* %_index_pointer560
  %_id_s554 = load i64, i64* %_547
  %_562 = add i64 %_id_s554, %_index_value561
  store i64 %_562, i64* %_547
  %_id_j563 = load i64, i64* %_551
  %_564 = add i64 %_id_j563, 1
  store i64 %_564, i64* %_551
  br label %_start565
_else567:
  %_id_i568 = load i64, i64* %_548
  %_569 = add i64 %_id_i568, 1
  store i64 %_569, i64* %_548
  br label %_start570
_else572:
  %_id_s573 = load i64, i64* %_547
  ret i64 %_id_s573
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
