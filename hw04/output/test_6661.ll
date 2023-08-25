; generated from: hw4programs/run16.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1527 = alloca i64
  %_argv1528 = alloca { i64, [0 x i8*] }*
  %_x1529 = alloca i64
  %_a1589 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b1591 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1527
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1528
  store i64 10, i64* %_x1529
  %_id_x1574 = load i64, i64* %_x1529
  %_bop1575 = add i64 %_id_x1574, 2
  %_bop1576 = add i64 %_bop1575, 2
  %_id_x1571 = load i64, i64* %_x1529
  %_bop1572 = add i64 %_id_x1571, 2
  %_bop1573 = add i64 %_bop1572, 1
  %_id_x1568 = load i64, i64* %_x1529
  %_bop1569 = add i64 %_id_x1568, 2
  %_bop1570 = add i64 %_bop1569, 0
  %_raw_array1566 = call i64* @oat_alloc_array(i64 3)
  %_array1567 = bitcast i64* %_raw_array1566 to { i64, [0 x i64] }*
  %_1581 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1567, i32 0, i32 1, i32 2
  store i64 %_bop1576, i64* %_1581
  %_1579 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1567, i32 0, i32 1, i32 1
  store i64 %_bop1573, i64* %_1579
  %_1577 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1567, i32 0, i32 1, i32 0
  store i64 %_bop1570, i64* %_1577
  %_id_x1557 = load i64, i64* %_x1529
  %_bop1558 = add i64 %_id_x1557, 1
  %_bop1559 = add i64 %_bop1558, 2
  %_id_x1554 = load i64, i64* %_x1529
  %_bop1555 = add i64 %_id_x1554, 1
  %_bop1556 = add i64 %_bop1555, 1
  %_id_x1551 = load i64, i64* %_x1529
  %_bop1552 = add i64 %_id_x1551, 1
  %_bop1553 = add i64 %_bop1552, 0
  %_raw_array1549 = call i64* @oat_alloc_array(i64 3)
  %_array1550 = bitcast i64* %_raw_array1549 to { i64, [0 x i64] }*
  %_1564 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1550, i32 0, i32 1, i32 2
  store i64 %_bop1559, i64* %_1564
  %_1562 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1550, i32 0, i32 1, i32 1
  store i64 %_bop1556, i64* %_1562
  %_1560 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1550, i32 0, i32 1, i32 0
  store i64 %_bop1553, i64* %_1560
  %_id_x1540 = load i64, i64* %_x1529
  %_bop1541 = add i64 %_id_x1540, 0
  %_bop1542 = add i64 %_bop1541, 2
  %_id_x1537 = load i64, i64* %_x1529
  %_bop1538 = add i64 %_id_x1537, 0
  %_bop1539 = add i64 %_bop1538, 1
  %_id_x1534 = load i64, i64* %_x1529
  %_bop1535 = add i64 %_id_x1534, 0
  %_bop1536 = add i64 %_bop1535, 0
  %_raw_array1532 = call i64* @oat_alloc_array(i64 3)
  %_array1533 = bitcast i64* %_raw_array1532 to { i64, [0 x i64] }*
  %_1547 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1533, i32 0, i32 1, i32 2
  store i64 %_bop1542, i64* %_1547
  %_1545 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1533, i32 0, i32 1, i32 1
  store i64 %_bop1539, i64* %_1545
  %_1543 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1533, i32 0, i32 1, i32 0
  store i64 %_bop1536, i64* %_1543
  %_raw_array1530 = call i64* @oat_alloc_array(i64 3)
  %_array1531 = bitcast i64* %_raw_array1530 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1587 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1531, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1567, { i64, [0 x i64] }** %_1587
  %_1585 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1531, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1550, { i64, [0 x i64] }** %_1585
  %_1583 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1531, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1533, { i64, [0 x i64] }** %_1583
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1531, { i64, [0 x { i64, [0 x i64] }*] }** %_a1589
  %_id_a1590 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1589
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a1590, { i64, [0 x { i64, [0 x i64] }*] }** %_b1591
  %_id_b1592 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b1591
  %_index_pointer1594 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_b1592, i32 0, i32 1, i32 2
  %_index_value1593 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1594
  %_index_pointer1596 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1593, i32 0, i32 1, i32 1
  %_index_value1595 = load i64, i64* %_index_pointer1596
  ret i64 %_index_value1595
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
