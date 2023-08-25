; generated from: hw4programs/run34.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc425 = alloca i64
  %_argv426 = alloca { i64, [0 x i8*] }*
  %_427 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_466 = alloca i64
  %_467 = alloca i64
  %_470 = alloca i64
  store i64 %argc, i64* %_argc425
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv426
  %_raw_array450 = call i64* @oat_alloc_array(i64 4)
  %_array451 = bitcast i64* %_raw_array450 to { i64, [0 x i64] }*
  %_458 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array451, i32 0, i32 1, i32 3
  store i64 11, i64* %_458
  %_456 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array451, i32 0, i32 1, i32 2
  store i64 10, i64* %_456
  %_454 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array451, i32 0, i32 1, i32 1
  store i64 9, i64* %_454
  %_452 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array451, i32 0, i32 1, i32 0
  store i64 8, i64* %_452
  %_raw_array440 = call i64* @oat_alloc_array(i64 4)
  %_array441 = bitcast i64* %_raw_array440 to { i64, [0 x i64] }*
  %_448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array441, i32 0, i32 1, i32 3
  store i64 7, i64* %_448
  %_446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array441, i32 0, i32 1, i32 2
  store i64 6, i64* %_446
  %_444 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array441, i32 0, i32 1, i32 1
  store i64 5, i64* %_444
  %_442 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array441, i32 0, i32 1, i32 0
  store i64 4, i64* %_442
  %_raw_array430 = call i64* @oat_alloc_array(i64 4)
  %_array431 = bitcast i64* %_raw_array430 to { i64, [0 x i64] }*
  %_438 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array431, i32 0, i32 1, i32 3
  store i64 3, i64* %_438
  %_436 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array431, i32 0, i32 1, i32 2
  store i64 2, i64* %_436
  %_434 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array431, i32 0, i32 1, i32 1
  store i64 1, i64* %_434
  %_432 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array431, i32 0, i32 1, i32 0
  store i64 0, i64* %_432
  %_raw_array428 = call i64* @oat_alloc_array(i64 3)
  %_array429 = bitcast i64* %_raw_array428 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_464 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array429, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array451, { i64, [0 x i64] }** %_464
  %_462 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array429, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array441, { i64, [0 x i64] }** %_462
  %_460 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array429, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array431, { i64, [0 x i64] }** %_460
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array429, { i64, [0 x { i64, [0 x i64] }*] }** %_427
  store i64 0, i64* %_466
  store i64 0, i64* %_467
  br label %_start489
_start489:
  %_id_i468 = load i64, i64* %_467
  %_469 = icmp slt i64 %_id_i468, 3
  br i1 %_469, label %_body490, label %_else491
_body490:
  store i64 0, i64* %_470
  br label %_start484
_start484:
  %_id_j471 = load i64, i64* %_470
  %_472 = icmp slt i64 %_id_j471, 4
  br i1 %_472, label %_body485, label %_else486
_body485:
  %_id_a474 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_427
  %_id_i475 = load i64, i64* %_467
  %_index_pointer476 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a474, i32 0, i32 1, i64 %_id_i475
  %_index_value477 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer476
  %_id_j478 = load i64, i64* %_470
  %_index_pointer479 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value477, i32 0, i32 1, i64 %_id_j478
  %_index_value480 = load i64, i64* %_index_pointer479
  %_id_s473 = load i64, i64* %_466
  %_481 = add i64 %_id_s473, %_index_value480
  store i64 %_481, i64* %_466
  %_id_j482 = load i64, i64* %_470
  %_483 = add i64 %_id_j482, 1
  store i64 %_483, i64* %_470
  br label %_start484
_else486:
  %_id_i487 = load i64, i64* %_467
  %_488 = add i64 %_id_i487, 1
  store i64 %_488, i64* %_467
  br label %_start489
_else491:
  %_id_s492 = load i64, i64* %_466
  ret i64 %_id_s492
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
