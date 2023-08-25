; generated from: hw4programs/run16.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1487 = alloca i64
  %_argv1488 = alloca { i64, [0 x i8*] }*
  %_1489 = alloca i64
  %_1490 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1550 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1487
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1488
  store i64 10, i64* %_1489
  %_id_x1535 = load i64, i64* %_1489
  %_1536 = add i64 %_id_x1535, 2
  %_1537 = add i64 %_1536, 2
  %_id_x1532 = load i64, i64* %_1489
  %_1533 = add i64 %_id_x1532, 2
  %_1534 = add i64 %_1533, 1
  %_id_x1529 = load i64, i64* %_1489
  %_1530 = add i64 %_id_x1529, 2
  %_1531 = add i64 %_1530, 0
  %_raw_array1527 = call i64* @oat_alloc_array(i64 3)
  %_array1528 = bitcast i64* %_raw_array1527 to { i64, [0 x i64] }*
  %_1542 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1528, i32 0, i32 1, i32 2
  store i64 %_1537, i64* %_1542
  %_1540 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1528, i32 0, i32 1, i32 1
  store i64 %_1534, i64* %_1540
  %_1538 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1528, i32 0, i32 1, i32 0
  store i64 %_1531, i64* %_1538
  %_id_x1518 = load i64, i64* %_1489
  %_1519 = add i64 %_id_x1518, 1
  %_1520 = add i64 %_1519, 2
  %_id_x1515 = load i64, i64* %_1489
  %_1516 = add i64 %_id_x1515, 1
  %_1517 = add i64 %_1516, 1
  %_id_x1512 = load i64, i64* %_1489
  %_1513 = add i64 %_id_x1512, 1
  %_1514 = add i64 %_1513, 0
  %_raw_array1510 = call i64* @oat_alloc_array(i64 3)
  %_array1511 = bitcast i64* %_raw_array1510 to { i64, [0 x i64] }*
  %_1525 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1511, i32 0, i32 1, i32 2
  store i64 %_1520, i64* %_1525
  %_1523 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1511, i32 0, i32 1, i32 1
  store i64 %_1517, i64* %_1523
  %_1521 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1511, i32 0, i32 1, i32 0
  store i64 %_1514, i64* %_1521
  %_id_x1501 = load i64, i64* %_1489
  %_1502 = add i64 %_id_x1501, 0
  %_1503 = add i64 %_1502, 2
  %_id_x1498 = load i64, i64* %_1489
  %_1499 = add i64 %_id_x1498, 0
  %_1500 = add i64 %_1499, 1
  %_id_x1495 = load i64, i64* %_1489
  %_1496 = add i64 %_id_x1495, 0
  %_1497 = add i64 %_1496, 0
  %_raw_array1493 = call i64* @oat_alloc_array(i64 3)
  %_array1494 = bitcast i64* %_raw_array1493 to { i64, [0 x i64] }*
  %_1508 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1494, i32 0, i32 1, i32 2
  store i64 %_1503, i64* %_1508
  %_1506 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1494, i32 0, i32 1, i32 1
  store i64 %_1500, i64* %_1506
  %_1504 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1494, i32 0, i32 1, i32 0
  store i64 %_1497, i64* %_1504
  %_raw_array1491 = call i64* @oat_alloc_array(i64 3)
  %_array1492 = bitcast i64* %_raw_array1491 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1548 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1492, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1528, { i64, [0 x i64] }** %_1548
  %_1546 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1492, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1511, { i64, [0 x i64] }** %_1546
  %_1544 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1492, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1494, { i64, [0 x i64] }** %_1544
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1492, { i64, [0 x { i64, [0 x i64] }*] }** %_1490
  %_id_a1551 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1490
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a1551, { i64, [0 x { i64, [0 x i64] }*] }** %_1550
  %_id_b1552 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1550
  %_index_pointer1553 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_b1552, i32 0, i32 1, i32 2
  %_index_value1554 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1553
  %_index_pointer1555 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1554, i32 0, i32 1, i32 1
  %_index_value1556 = load i64, i64* %_index_pointer1555
  ret i64 %_index_value1556
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
