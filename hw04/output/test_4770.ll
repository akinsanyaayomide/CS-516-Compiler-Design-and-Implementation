; generated from: hw4programs/run11.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 1

define i64 @f({ i64, [0 x i64] }* %arr) {
  %_arr1512 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1512
  %_id_arr1513 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1512
  %_index_pointer1515 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1513, i32 0, i32 1, i32 3
  %_index_value1514 = load i64, i64* %_index_pointer1515
  ret i64 %_index_value1514
}

define { i64, [0 x i64] }* @g() {
  %_1500 = alloca { i64, [0 x i64] }*
  %_raw_array1501 = call i64* @oat_alloc_array(i64 4)
  %_array1502 = bitcast i64* %_raw_array1501 to { i64, [0 x i64] }*
  %_1509 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1502, i32 0, i32 1, i32 3
  store i64 99, i64* %_1509
  %_1507 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1502, i32 0, i32 1, i32 2
  store i64 99, i64* %_1507
  %_1505 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1502, i32 0, i32 1, i32 1
  store i64 1, i64* %_1505
  %_1503 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1502, i32 0, i32 1, i32 0
  store i64 99, i64* %_1503
  store { i64, [0 x i64] }* %_array1502, { i64, [0 x i64] }** %_1500
  %_id_arr1511 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1500
  ret { i64, [0 x i64] }* %_id_arr1511
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1388 = alloca i64
  %_argv1389 = alloca { i64, [0 x i8*] }*
  %_1390 = alloca { i64, [0 x i64] }*
  %_1399 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1456 = alloca i64
  %_1457 = alloca { i64, [0 x i64] }*
  %_1459 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1388
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1389
  %_raw_array1391 = call i64* @oat_alloc_array(i64 3)
  %_array1392 = bitcast i64* %_raw_array1391 to { i64, [0 x i64] }*
  %_1397 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1392, i32 0, i32 1, i32 2
  store i64 99, i64* %_1397
  %_1395 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1392, i32 0, i32 1, i32 1
  store i64 1, i64* %_1395
  %_1393 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1392, i32 0, i32 1, i32 0
  store i64 99, i64* %_1393
  store { i64, [0 x i64] }* %_array1392, { i64, [0 x i64] }** %_1390
  %_raw_array1418 = call i64* @oat_alloc_array(i64 3)
  %_array1419 = bitcast i64* %_raw_array1418 to { i64, [0 x i64] }*
  %_1424 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1419, i32 0, i32 1, i32 2
  store i64 99, i64* %_1424
  %_1422 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1419, i32 0, i32 1, i32 1
  store i64 99, i64* %_1422
  %_1420 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1419, i32 0, i32 1, i32 0
  store i64 99, i64* %_1420
  %_raw_array1410 = call i64* @oat_alloc_array(i64 3)
  %_array1411 = bitcast i64* %_raw_array1410 to { i64, [0 x i64] }*
  %_1416 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1411, i32 0, i32 1, i32 2
  store i64 99, i64* %_1416
  %_1414 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1411, i32 0, i32 1, i32 1
  store i64 1, i64* %_1414
  %_1412 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1411, i32 0, i32 1, i32 0
  store i64 99, i64* %_1412
  %_raw_array1402 = call i64* @oat_alloc_array(i64 3)
  %_array1403 = bitcast i64* %_raw_array1402 to { i64, [0 x i64] }*
  %_1408 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1403, i32 0, i32 1, i32 2
  store i64 99, i64* %_1408
  %_1406 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1403, i32 0, i32 1, i32 1
  store i64 99, i64* %_1406
  %_1404 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1403, i32 0, i32 1, i32 0
  store i64 99, i64* %_1404
  %_raw_array1400 = call i64* @oat_alloc_array(i64 3)
  %_array1401 = bitcast i64* %_raw_array1400 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1454 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1401, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1443, { i64, [0 x i64] }** %_1454
  %_1452 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1401, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1435, { i64, [0 x i64] }** %_1452
  %_1450 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1401, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1427, { i64, [0 x i64] }** %_1450
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1401, { i64, [0 x { i64, [0 x i64] }*] }** %_1399
  store i64 1, i64* %_1456
  %_1458 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_1458, { i64, [0 x i64] }** %_1457
  %_raw_array1460 = call i64* @oat_alloc_array(i64 4)
  %_array1461 = bitcast i64* %_raw_array1460 to { i64, [0 x i64] }*
  %_1468 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1461, i32 0, i32 1, i32 3
  store i64 1, i64* %_1468
  %_1466 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1461, i32 0, i32 1, i32 2
  store i64 99, i64* %_1466
  %_1464 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1461, i32 0, i32 1, i32 1
  store i64 99, i64* %_1464
  %_1462 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1461, i32 0, i32 1, i32 0
  store i64 99, i64* %_1462
  store { i64, [0 x i64] }* %_array1461, { i64, [0 x i64] }** %_1459
  %_id_c1470 = load i64, i64* %_1456
  %_id_i1471 = load i64, i64* @i
  %_bop1472 = add i64 %_id_c1470, %_id_i1471
  store i64 %_bop1472, i64* %_1456
  %_id_c1473 = load i64, i64* %_1456
  %_id_arr11474 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1390
  %_index_pointer1476 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr11474, i32 0, i32 1, i32 1
  %_index_value1475 = load i64, i64* %_index_pointer1476
  %_bop1477 = add i64 %_id_c1473, %_index_value1475
  store i64 %_bop1477, i64* %_1456
  %_id_c1478 = load i64, i64* %_1456
  %_id_arr21479 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1399
  %_index_pointer1481 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr21479, i32 0, i32 1, i32 1
  %_index_value1480 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1481
  %_index_pointer1483 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1480, i32 0, i32 1, i32 1
  %_index_value1482 = load i64, i64* %_index_pointer1483
  %_bop1484 = add i64 %_id_c1478, %_index_value1482
  store i64 %_bop1484, i64* %_1456
  %_id_c1485 = load i64, i64* %_1456
  %_id_arr31486 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1459
  %_index_pointer1488 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr31486, i32 0, i32 1, i32 3
  %_index_value1487 = load i64, i64* %_index_pointer1488
  %_bop1489 = add i64 %_id_c1485, %_index_value1487
  store i64 %_bop1489, i64* %_1456
  %_id_c1490 = load i64, i64* %_1456
  %_id_arr31491 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1459
  %_1492 = call i64 @f({ i64, [0 x i64] }* %_id_arr31491)
  %_bop1493 = add i64 %_id_c1490, %_1492
  store i64 %_bop1493, i64* %_1456
  %_id_c1494 = load i64, i64* %_1456
  %_id_arr41495 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1457
  %_index_pointer1497 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr41495, i32 0, i32 1, i32 1
  %_index_value1496 = load i64, i64* %_index_pointer1497
  %_bop1498 = add i64 %_id_c1494, %_index_value1496
  store i64 %_bop1498, i64* %_1456
  %_id_c1499 = load i64, i64* %_1456
  ret i64 %_id_c1499
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
