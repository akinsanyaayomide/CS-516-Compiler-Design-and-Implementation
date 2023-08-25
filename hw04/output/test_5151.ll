; generated from: hw4programs/run35.oat
target triple = "x86_64-apple-macosx10.13.0"
@a = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc503 = alloca i64
  %_argv504 = alloca { i64, [0 x i8*] }*
  %_543 = alloca i64
  %_544 = alloca i64
  %_547 = alloca i64
  store i64 %argc, i64* %_argc503
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv504
  %_raw_array527 = call i64* @oat_alloc_array(i64 4)
  %_array528 = bitcast i64* %_raw_array527 to { i64, [0 x i64] }*
  %_535 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array528, i32 0, i32 1, i32 3
  store i64 11, i64* %_535
  %_533 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array528, i32 0, i32 1, i32 2
  store i64 10, i64* %_533
  %_531 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array528, i32 0, i32 1, i32 1
  store i64 9, i64* %_531
  %_529 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array528, i32 0, i32 1, i32 0
  store i64 8, i64* %_529
  %_raw_array517 = call i64* @oat_alloc_array(i64 4)
  %_array518 = bitcast i64* %_raw_array517 to { i64, [0 x i64] }*
  %_525 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array518, i32 0, i32 1, i32 3
  store i64 7, i64* %_525
  %_523 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array518, i32 0, i32 1, i32 2
  store i64 6, i64* %_523
  %_521 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array518, i32 0, i32 1, i32 1
  store i64 5, i64* %_521
  %_519 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array518, i32 0, i32 1, i32 0
  store i64 4, i64* %_519
  %_raw_array507 = call i64* @oat_alloc_array(i64 4)
  %_array508 = bitcast i64* %_raw_array507 to { i64, [0 x i64] }*
  %_515 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array508, i32 0, i32 1, i32 3
  store i64 3, i64* %_515
  %_513 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array508, i32 0, i32 1, i32 2
  store i64 2, i64* %_513
  %_511 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array508, i32 0, i32 1, i32 1
  store i64 1, i64* %_511
  %_509 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array508, i32 0, i32 1, i32 0
  store i64 0, i64* %_509
  %_raw_array505 = call i64* @oat_alloc_array(i64 3)
  %_array506 = bitcast i64* %_raw_array505 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_541 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array506, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array528, { i64, [0 x i64] }** %_541
  %_539 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array506, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array518, { i64, [0 x i64] }** %_539
  %_537 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array506, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array508, { i64, [0 x i64] }** %_537
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array506, { i64, [0 x { i64, [0 x i64] }*] }** @a
  store i64 0, i64* %_543
  store i64 0, i64* %_544
  br label %_cond567
_cond567:
  %_id_i545 = load i64, i64* %_544
  %_bop546 = icmp slt i64 %_id_i545, 3
  br i1 %_bop546, label %_if566, label %_merge568
_if566:
  store i64 0, i64* %_547
  br label %_cond562
_cond562:
  %_id_j548 = load i64, i64* %_547
  %_bop549 = icmp slt i64 %_id_j548, 4
  br i1 %_bop549, label %_if561, label %_merge563
_if561:
  %_id_s550 = load i64, i64* %_543
  %_id_a551 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @a
  %_id_i552 = load i64, i64* %_544
  %_index_pointer554 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a551, i32 0, i32 1, i64 %_id_i552
  %_index_value553 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer554
  %_id_j555 = load i64, i64* %_547
  %_index_pointer557 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value553, i32 0, i32 1, i64 %_id_j555
  %_index_value556 = load i64, i64* %_index_pointer557
  %_bop558 = add i64 %_id_s550, %_index_value556
  store i64 %_bop558, i64* %_543
  %_id_j559 = load i64, i64* %_547
  %_bop560 = add i64 %_id_j559, 1
  store i64 %_bop560, i64* %_547
  br label %_cond562
_merge563:
  %_id_i564 = load i64, i64* %_544
  %_bop565 = add i64 %_id_i564, 1
  store i64 %_bop565, i64* %_544
  br label %_cond567
_merge568:
  %_id_s569 = load i64, i64* %_543
  ret i64 %_id_s569
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
