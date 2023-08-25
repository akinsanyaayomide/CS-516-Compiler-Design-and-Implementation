; generated from: hw4programs/run34.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc451 = alloca i64
  %_argv452 = alloca { i64, [0 x i8*] }*
  %_453 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_522 = alloca i64
  %_523 = alloca i64
  %_526 = alloca i64
  store i64 %argc, i64* %_argc451
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv452
  %_raw_array476 = call i64* @oat_alloc_array(i64 4)
  %_array477 = bitcast i64* %_raw_array476 to { i64, [0 x i64] }*
  %_484 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array477, i32 0, i32 1, i32 3
  store i64 11, i64* %_484
  %_482 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array477, i32 0, i32 1, i32 2
  store i64 10, i64* %_482
  %_480 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array477, i32 0, i32 1, i32 1
  store i64 9, i64* %_480
  %_478 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array477, i32 0, i32 1, i32 0
  store i64 8, i64* %_478
  %_raw_array466 = call i64* @oat_alloc_array(i64 4)
  %_array467 = bitcast i64* %_raw_array466 to { i64, [0 x i64] }*
  %_474 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array467, i32 0, i32 1, i32 3
  store i64 7, i64* %_474
  %_472 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array467, i32 0, i32 1, i32 2
  store i64 6, i64* %_472
  %_470 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array467, i32 0, i32 1, i32 1
  store i64 5, i64* %_470
  %_468 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array467, i32 0, i32 1, i32 0
  store i64 4, i64* %_468
  %_raw_array456 = call i64* @oat_alloc_array(i64 4)
  %_array457 = bitcast i64* %_raw_array456 to { i64, [0 x i64] }*
  %_464 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array457, i32 0, i32 1, i32 3
  store i64 3, i64* %_464
  %_462 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array457, i32 0, i32 1, i32 2
  store i64 2, i64* %_462
  %_460 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array457, i32 0, i32 1, i32 1
  store i64 1, i64* %_460
  %_458 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array457, i32 0, i32 1, i32 0
  store i64 0, i64* %_458
  %_raw_array454 = call i64* @oat_alloc_array(i64 3)
  %_array455 = bitcast i64* %_raw_array454 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_520 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array455, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array507, { i64, [0 x i64] }** %_520
  %_518 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array455, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array497, { i64, [0 x i64] }** %_518
  %_516 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array455, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array487, { i64, [0 x i64] }** %_516
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array455, { i64, [0 x { i64, [0 x i64] }*] }** %_453
  store i64 0, i64* %_522
  store i64 0, i64* %_523
  br label %_cond546
_cond546:
  %_id_i524 = load i64, i64* %_523
  %_bop525 = icmp slt i64 %_id_i524, 3
  br i1 %_bop525, label %_if545, label %_merge547
_if545:
  store i64 0, i64* %_526
  br label %_cond541
_cond541:
  %_id_j527 = load i64, i64* %_526
  %_bop528 = icmp slt i64 %_id_j527, 4
  br i1 %_bop528, label %_if540, label %_merge542
_if540:
  %_id_s529 = load i64, i64* %_522
  %_id_a530 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_453
  %_id_i531 = load i64, i64* %_523
  %_index_pointer533 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a530, i32 0, i32 1, i64 %_id_i531
  %_index_value532 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer533
  %_id_j534 = load i64, i64* %_526
  %_index_pointer536 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value532, i32 0, i32 1, i64 %_id_j534
  %_index_value535 = load i64, i64* %_index_pointer536
  %_bop537 = add i64 %_id_s529, %_index_value535
  store i64 %_bop537, i64* %_522
  %_id_j538 = load i64, i64* %_526
  %_bop539 = add i64 %_id_j538, 1
  store i64 %_bop539, i64* %_526
  br label %_cond541
_merge542:
  %_id_i543 = load i64, i64* %_523
  %_bop544 = add i64 %_id_i543, 1
  store i64 %_bop544, i64* %_523
  br label %_cond546
_merge547:
  %_id_s548 = load i64, i64* %_522
  ret i64 %_id_s548
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
