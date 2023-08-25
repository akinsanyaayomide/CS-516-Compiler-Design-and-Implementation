; generated from: hw4programs/run34.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc420 = alloca i64
  %_argv421 = alloca { i64, [0 x i8*] }*
  %_422 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_461 = alloca i64
  %_462 = alloca i64
  %_465 = alloca i64
  store i64 %argc, i64* %_argc420
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv421
  %_raw_array445 = call i64* @oat_alloc_array(i64 4)
  %_array446 = bitcast i64* %_raw_array445 to { i64, [0 x i64] }*
  %_453 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array446, i32 0, i32 1, i32 3
  store i64 11, i64* %_453
  %_451 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array446, i32 0, i32 1, i32 2
  store i64 10, i64* %_451
  %_449 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array446, i32 0, i32 1, i32 1
  store i64 9, i64* %_449
  %_447 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array446, i32 0, i32 1, i32 0
  store i64 8, i64* %_447
  %_raw_array435 = call i64* @oat_alloc_array(i64 4)
  %_array436 = bitcast i64* %_raw_array435 to { i64, [0 x i64] }*
  %_443 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array436, i32 0, i32 1, i32 3
  store i64 7, i64* %_443
  %_441 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array436, i32 0, i32 1, i32 2
  store i64 6, i64* %_441
  %_439 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array436, i32 0, i32 1, i32 1
  store i64 5, i64* %_439
  %_437 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array436, i32 0, i32 1, i32 0
  store i64 4, i64* %_437
  %_raw_array425 = call i64* @oat_alloc_array(i64 4)
  %_array426 = bitcast i64* %_raw_array425 to { i64, [0 x i64] }*
  %_433 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array426, i32 0, i32 1, i32 3
  store i64 3, i64* %_433
  %_431 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array426, i32 0, i32 1, i32 2
  store i64 2, i64* %_431
  %_429 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array426, i32 0, i32 1, i32 1
  store i64 1, i64* %_429
  %_427 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array426, i32 0, i32 1, i32 0
  store i64 0, i64* %_427
  %_raw_array423 = call i64* @oat_alloc_array(i64 3)
  %_array424 = bitcast i64* %_raw_array423 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_459 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array424, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array446, { i64, [0 x i64] }** %_459
  %_457 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array424, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array436, { i64, [0 x i64] }** %_457
  %_455 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array424, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array426, { i64, [0 x i64] }** %_455
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array424, { i64, [0 x { i64, [0 x i64] }*] }** %_422
  store i64 0, i64* %_461
  store i64 0, i64* %_462
  br label %_cond485
_cond485:
  %_id_i463 = load i64, i64* %_462
  %_464 = icmp slt i64 %_id_i463, 3
  br i1 %_464, label %_if484, label %_merge486
_if484:
  store i64 0, i64* %_465
  br label %_cond480
_cond480:
  %_id_j466 = load i64, i64* %_465
  %_467 = icmp slt i64 %_id_j466, 4
  br i1 %_467, label %_if479, label %_merge481
_if479:
  %_id_a469 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_422
  %_id_i470 = load i64, i64* %_462
  %_index_pointer471 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a469, i32 0, i32 1, i64 %_id_i470
  %_index_value472 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer471
  %_id_j473 = load i64, i64* %_465
  %_index_pointer474 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value472, i32 0, i32 1, i64 %_id_j473
  %_index_value475 = load i64, i64* %_index_pointer474
  %_id_s468 = load i64, i64* %_461
  %_476 = add i64 %_id_s468, %_index_value475
  store i64 %_476, i64* %_461
  %_id_j477 = load i64, i64* %_465
  %_478 = add i64 %_id_j477, 1
  store i64 %_478, i64* %_465
  br label %_cond480
_merge481:
  %_id_i482 = load i64, i64* %_462
  %_483 = add i64 %_id_i482, 1
  store i64 %_483, i64* %_462
  br label %_cond485
_merge486:
  %_id_s487 = load i64, i64* %_461
  ret i64 %_id_s487
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
