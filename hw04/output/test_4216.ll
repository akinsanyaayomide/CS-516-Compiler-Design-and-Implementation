; generated from: hw4programs/run34.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc451 = alloca i64
  %_argv452 = alloca { i64, [0 x i8*] }*
  %_453 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_507 = alloca i64
  %_508 = alloca i64
  %_511 = alloca i64
  store i64 %argc, i64* %_argc451
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv452
  %_raw_array484 = call i64* @oat_alloc_array(i64 4)
  %_array485 = bitcast i64* %_raw_array484 to { i64, [0 x i64] }*
  %_497 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array485, i32 0, i32 1, i32 3
  store i64 11, i64* %_495
  %_494 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array485, i32 0, i32 1, i32 2
  store i64 10, i64* %_492
  %_491 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array485, i32 0, i32 1, i32 1
  store i64 9, i64* %_489
  %_488 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array485, i32 0, i32 1, i32 0
  store i64 8, i64* %_486
  %_raw_array470 = call i64* @oat_alloc_array(i64 4)
  %_array471 = bitcast i64* %_raw_array470 to { i64, [0 x i64] }*
  %_483 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array471, i32 0, i32 1, i32 3
  store i64 7, i64* %_481
  %_480 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array471, i32 0, i32 1, i32 2
  store i64 6, i64* %_478
  %_477 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array471, i32 0, i32 1, i32 1
  store i64 5, i64* %_475
  %_474 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array471, i32 0, i32 1, i32 0
  store i64 4, i64* %_472
  %_raw_array456 = call i64* @oat_alloc_array(i64 4)
  %_array457 = bitcast i64* %_raw_array456 to { i64, [0 x i64] }*
  %_469 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array457, i32 0, i32 1, i32 3
  store i64 3, i64* %_467
  %_466 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array457, i32 0, i32 1, i32 2
  store i64 2, i64* %_464
  %_463 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array457, i32 0, i32 1, i32 1
  store i64 1, i64* %_461
  %_460 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array457, i32 0, i32 1, i32 0
  store i64 0, i64* %_458
  %_raw_array454 = call i64* @oat_alloc_array(i64 3)
  %_array455 = bitcast i64* %_raw_array454 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_506 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array455, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array485, { i64, [0 x i64] }** %_504
  %_503 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array455, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array471, { i64, [0 x i64] }** %_501
  %_500 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array455, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array457, { i64, [0 x i64] }** %_498
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array455, { i64, [0 x { i64, [0 x i64] }*] }** %_453
  store i64 0, i64* %_507
  store i64 0, i64* %_508
  br label %_cond531
_cond531:
  %_id_i509 = load i64, i64* %_508
  %_bop510 = icmp slt i64 %_id_i509, 3
  br i1 %_bop510, label %_if530, label %_merge532
_if530:
  store i64 0, i64* %_511
  br label %_cond526
_cond526:
  %_id_j512 = load i64, i64* %_511
  %_bop513 = icmp slt i64 %_id_j512, 4
  br i1 %_bop513, label %_if525, label %_merge527
_if525:
  %_id_s514 = load i64, i64* %_507
  %_id_a515 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_453
  %_id_i516 = load i64, i64* %_508
  %_index_pointer518 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a515, i32 0, i32 1, i64 %_id_i516
  %_index_value517 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer518
  %_id_j519 = load i64, i64* %_511
  %_index_pointer521 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value517, i32 0, i32 1, i64 %_id_j519
  %_index_value520 = load i64, i64* %_index_pointer521
  %_bop522 = add i64 %_id_s514, %_index_value520
  store i64 %_bop522, i64* %_507
  %_id_j523 = load i64, i64* %_511
  %_bop524 = add i64 %_id_j523, 1
  store i64 %_bop524, i64* %_511
  br label %_cond526
_merge527:
  %_id_i528 = load i64, i64* %_508
  %_bop529 = add i64 %_id_i528, 1
  store i64 %_bop529, i64* %_508
  br label %_cond531
_merge532:
  %_id_s533 = load i64, i64* %_507
  ret i64 %_id_s533
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
