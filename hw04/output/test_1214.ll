; generated from: hw4programs/run16.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1527 = alloca i64
  %_argv1528 = alloca { i64, [0 x i8*] }*
  %_1529 = alloca i64
  %_1530 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1590 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1527
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1528
  store i64 10, i64* %_1529
  %_id_x1575 = load i64, i64* %_1529
  %_1576 = add i64 %_id_x1575, 2
  %_1577 = add i64 %_1576, 2
  %_id_x1572 = load i64, i64* %_1529
  %_1573 = add i64 %_id_x1572, 2
  %_1574 = add i64 %_1573, 1
  %_id_x1569 = load i64, i64* %_1529
  %_1570 = add i64 %_id_x1569, 2
  %_1571 = add i64 %_1570, 0
  %_raw_array1567 = call i64* @oat_alloc_array(i64 3)
  %_array1568 = bitcast i64* %_raw_array1567 to { i64, [0 x i64] }*
  %_1582 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1568, i32 0, i32 1, i32 2
  store i64 %_1577, i64* %_1582
  %_1580 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1568, i32 0, i32 1, i32 1
  store i64 %_1574, i64* %_1580
  %_1578 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1568, i32 0, i32 1, i32 0
  store i64 %_1571, i64* %_1578
  %_id_x1558 = load i64, i64* %_1529
  %_1559 = add i64 %_id_x1558, 1
  %_1560 = add i64 %_1559, 2
  %_id_x1555 = load i64, i64* %_1529
  %_1556 = add i64 %_id_x1555, 1
  %_1557 = add i64 %_1556, 1
  %_id_x1552 = load i64, i64* %_1529
  %_1553 = add i64 %_id_x1552, 1
  %_1554 = add i64 %_1553, 0
  %_raw_array1550 = call i64* @oat_alloc_array(i64 3)
  %_array1551 = bitcast i64* %_raw_array1550 to { i64, [0 x i64] }*
  %_1565 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1551, i32 0, i32 1, i32 2
  store i64 %_1560, i64* %_1565
  %_1563 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1551, i32 0, i32 1, i32 1
  store i64 %_1557, i64* %_1563
  %_1561 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1551, i32 0, i32 1, i32 0
  store i64 %_1554, i64* %_1561
  %_id_x1541 = load i64, i64* %_1529
  %_1542 = add i64 %_id_x1541, 0
  %_1543 = add i64 %_1542, 2
  %_id_x1538 = load i64, i64* %_1529
  %_1539 = add i64 %_id_x1538, 0
  %_1540 = add i64 %_1539, 1
  %_id_x1535 = load i64, i64* %_1529
  %_1536 = add i64 %_id_x1535, 0
  %_1537 = add i64 %_1536, 0
  %_raw_array1533 = call i64* @oat_alloc_array(i64 3)
  %_array1534 = bitcast i64* %_raw_array1533 to { i64, [0 x i64] }*
  %_1548 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1534, i32 0, i32 1, i32 2
  store i64 %_1543, i64* %_1548
  %_1546 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1534, i32 0, i32 1, i32 1
  store i64 %_1540, i64* %_1546
  %_1544 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1534, i32 0, i32 1, i32 0
  store i64 %_1537, i64* %_1544
  %_raw_array1531 = call i64* @oat_alloc_array(i64 3)
  %_array1532 = bitcast i64* %_raw_array1531 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1588 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1532, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1568, { i64, [0 x i64] }** %_1588
  %_1586 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1532, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1551, { i64, [0 x i64] }** %_1586
  %_1584 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1532, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1534, { i64, [0 x i64] }** %_1584
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1532, { i64, [0 x { i64, [0 x i64] }*] }** %_1530
  %_id_a1591 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1530
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a1591, { i64, [0 x { i64, [0 x i64] }*] }** %_1590
  %_id_b1592 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1590
  %_index_pointer1593 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_b1592, i32 0, i32 1, i32 2
  %_index_value1594 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1593
  %_index_pointer1595 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1594, i32 0, i32 1, i32 1
  %_index_value1596 = load i64, i64* %_index_pointer1595
  ret i64 %_index_value1596
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
