; generated from: hw4programs/run34.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc439 = alloca i64
  %_argv440 = alloca { i64, [0 x i8*] }*
  %_441 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_480 = alloca i64
  %_481 = alloca i64
  %_484 = alloca i64
  store i64 %argc, i64* %_argc439
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv440
  %_raw_array464 = call i64* @oat_alloc_array(i64 4)
  %_array465 = bitcast i64* %_raw_array464 to { i64, [0 x i64] }*
  %_472 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array465, i32 0, i32 1, i32 3
  store i64 11, i64* %_472
  %_470 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array465, i32 0, i32 1, i32 2
  store i64 10, i64* %_470
  %_468 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array465, i32 0, i32 1, i32 1
  store i64 9, i64* %_468
  %_466 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array465, i32 0, i32 1, i32 0
  store i64 8, i64* %_466
  %_raw_array454 = call i64* @oat_alloc_array(i64 4)
  %_array455 = bitcast i64* %_raw_array454 to { i64, [0 x i64] }*
  %_462 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array455, i32 0, i32 1, i32 3
  store i64 7, i64* %_462
  %_460 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array455, i32 0, i32 1, i32 2
  store i64 6, i64* %_460
  %_458 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array455, i32 0, i32 1, i32 1
  store i64 5, i64* %_458
  %_456 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array455, i32 0, i32 1, i32 0
  store i64 4, i64* %_456
  %_raw_array444 = call i64* @oat_alloc_array(i64 4)
  %_array445 = bitcast i64* %_raw_array444 to { i64, [0 x i64] }*
  %_452 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array445, i32 0, i32 1, i32 3
  store i64 3, i64* %_452
  %_450 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array445, i32 0, i32 1, i32 2
  store i64 2, i64* %_450
  %_448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array445, i32 0, i32 1, i32 1
  store i64 1, i64* %_448
  %_446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array445, i32 0, i32 1, i32 0
  store i64 0, i64* %_446
  %_raw_array442 = call i64* @oat_alloc_array(i64 3)
  %_array443 = bitcast i64* %_raw_array442 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_478 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array443, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array465, { i64, [0 x i64] }** %_478
  %_476 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array443, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array455, { i64, [0 x i64] }** %_476
  %_474 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array443, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array445, { i64, [0 x i64] }** %_474
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array443, { i64, [0 x { i64, [0 x i64] }*] }** %_441
  store i64 0, i64* %_480
  store i64 0, i64* %_481
  br label %_start503
_start503:
  %_id_i482 = load i64, i64* %_481
  %_483 = icmp slt i64 %_id_i482, 3
  br i1 %_483, label %_body504, label %_else505
_body504:
  store i64 0, i64* %_484
  br label %_start498
_start498:
  %_id_j485 = load i64, i64* %_484
  %_486 = icmp slt i64 %_id_j485, 4
  br i1 %_486, label %_body499, label %_else500
_body499:
  %_id_a488 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_441
  %_id_i489 = load i64, i64* %_481
  %_index_pointer490 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a488, i32 0, i32 1, i64 %_id_i489
  %_index_value491 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer490
  %_id_j492 = load i64, i64* %_484
  %_index_pointer493 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value491, i32 0, i32 1, i64 %_id_j492
  %_index_value494 = load i64, i64* %_index_pointer493
  %_id_s487 = load i64, i64* %_480
  %_495 = add i64 %_id_s487, %_index_value494
  store i64 %_495, i64* %_480
  %_id_j496 = load i64, i64* %_484
  %_497 = add i64 %_id_j496, 1
  store i64 %_497, i64* %_484
  br label %_start498
_else500:
  %_id_i501 = load i64, i64* %_481
  %_502 = add i64 %_id_i501, 1
  store i64 %_502, i64* %_481
  br label %_start503
_else505:
  %_id_s506 = load i64, i64* %_480
  ret i64 %_id_s506
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
