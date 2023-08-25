; generated from: hw4programs/run16.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1531 = alloca i64
  %_argv1532 = alloca { i64, [0 x i8*] }*
  %_1533 = alloca i64
  %_1534 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1594 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1531
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1532
  store i64 10, i64* %_1533
  %_id_x1579 = load i64, i64* %_1533
  %_1580 = add i64 %_id_x1579, 2
  %_1581 = add i64 %_1580, 2
  %_id_x1576 = load i64, i64* %_1533
  %_1577 = add i64 %_id_x1576, 2
  %_1578 = add i64 %_1577, 1
  %_id_x1573 = load i64, i64* %_1533
  %_1574 = add i64 %_id_x1573, 2
  %_1575 = add i64 %_1574, 0
  %_raw_array1571 = call i64* @oat_alloc_array(i64 3)
  %_array1572 = bitcast i64* %_raw_array1571 to { i64, [0 x i64] }*
  %_1586 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1572, i32 0, i32 1, i32 2
  store i64 %_1581, i64* %_1586
  %_1584 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1572, i32 0, i32 1, i32 1
  store i64 %_1578, i64* %_1584
  %_1582 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1572, i32 0, i32 1, i32 0
  store i64 %_1575, i64* %_1582
  %_id_x1562 = load i64, i64* %_1533
  %_1563 = add i64 %_id_x1562, 1
  %_1564 = add i64 %_1563, 2
  %_id_x1559 = load i64, i64* %_1533
  %_1560 = add i64 %_id_x1559, 1
  %_1561 = add i64 %_1560, 1
  %_id_x1556 = load i64, i64* %_1533
  %_1557 = add i64 %_id_x1556, 1
  %_1558 = add i64 %_1557, 0
  %_raw_array1554 = call i64* @oat_alloc_array(i64 3)
  %_array1555 = bitcast i64* %_raw_array1554 to { i64, [0 x i64] }*
  %_1569 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1555, i32 0, i32 1, i32 2
  store i64 %_1564, i64* %_1569
  %_1567 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1555, i32 0, i32 1, i32 1
  store i64 %_1561, i64* %_1567
  %_1565 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1555, i32 0, i32 1, i32 0
  store i64 %_1558, i64* %_1565
  %_id_x1545 = load i64, i64* %_1533
  %_1546 = add i64 %_id_x1545, 0
  %_1547 = add i64 %_1546, 2
  %_id_x1542 = load i64, i64* %_1533
  %_1543 = add i64 %_id_x1542, 0
  %_1544 = add i64 %_1543, 1
  %_id_x1539 = load i64, i64* %_1533
  %_1540 = add i64 %_id_x1539, 0
  %_1541 = add i64 %_1540, 0
  %_raw_array1537 = call i64* @oat_alloc_array(i64 3)
  %_array1538 = bitcast i64* %_raw_array1537 to { i64, [0 x i64] }*
  %_1552 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1538, i32 0, i32 1, i32 2
  store i64 %_1547, i64* %_1552
  %_1550 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1538, i32 0, i32 1, i32 1
  store i64 %_1544, i64* %_1550
  %_1548 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1538, i32 0, i32 1, i32 0
  store i64 %_1541, i64* %_1548
  %_raw_array1535 = call i64* @oat_alloc_array(i64 3)
  %_array1536 = bitcast i64* %_raw_array1535 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1592 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1536, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1572, { i64, [0 x i64] }** %_1592
  %_1590 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1536, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1555, { i64, [0 x i64] }** %_1590
  %_1588 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1536, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1538, { i64, [0 x i64] }** %_1588
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1536, { i64, [0 x { i64, [0 x i64] }*] }** %_1534
  %_id_a1595 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1534
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a1595, { i64, [0 x { i64, [0 x i64] }*] }** %_1594
  %_id_b1596 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1594
  %_index_pointer1597 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_b1596, i32 0, i32 1, i32 2
  %_index_value1598 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1597
  %_index_pointer1599 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1598, i32 0, i32 1, i32 1
  %_index_value1600 = load i64, i64* %_index_pointer1599
  ret i64 %_index_value1600
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
