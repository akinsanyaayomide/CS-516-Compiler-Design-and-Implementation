; generated from: hw4programs/run14.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f({ i64, [0 x i64] }* %a) {
  %_a1597 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a1597
  %_id_a1598 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1597
  %_index_pointer1600 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a1598, i32 0, i32 1, i32 1
  %_index_value1599 = load i64, i64* %_index_pointer1600
  ret i64 %_index_value1599
}

define i64 @g(i64 %x) {
  %_x1578 = alloca i64
  %_1579 = alloca { i64, [0 x i64] }*
  %_1582 = alloca i64
  store i64 %x, i64* %_x1578
  %_raw_array1580 = call i64* @oat_alloc_array(i64 3)
  %_array1581 = bitcast i64* %_raw_array1580 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1581, { i64, [0 x i64] }** %_1579
  store i64 0, i64* %_1582
  br label %_cond1592
_cond1592:
  %_id_i1583 = load i64, i64* %_1582
  %_bop1584 = icmp slt i64 %_id_i1583, 3
  br i1 %_bop1584, label %_if1591, label %_merge1593
_if1591:
  %_id_x1585 = load i64, i64* %_x1578
  %_id_arr1586 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1579
  %_id_i1587 = load i64, i64* %_1582
  %_1588 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1586, i32 0, i32 1, i64 %_id_i1587
  store i64 %_id_x1585, i64* %_1588
  %_id_i1589 = load i64, i64* %_1582
  %_bop1590 = add i64 %_id_i1589, 1
  store i64 %_bop1590, i64* %_1582
  br label %_cond1592
_merge1593:
  %_id_arr1594 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1579
  %_index_pointer1596 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1594, i32 0, i32 1, i32 1
  %_index_value1595 = load i64, i64* %_index_pointer1596
  ret i64 %_index_value1595
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1516 = alloca i64
  %_argv1517 = alloca { i64, [0 x i8*] }*
  %_1518 = alloca { i64, [0 x i64] }*
  %_1521 = alloca i64
  %_1533 = alloca { i64, [0 x i64] }*
  %_1536 = alloca i64
  %_1550 = alloca { i64, [0 x i64] }*
  %_1553 = alloca i64
  store i64 %argc, i64* %_argc1516
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1517
  %_raw_array1519 = call i64* @oat_alloc_array(i64 3)
  %_array1520 = bitcast i64* %_raw_array1519 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1520, { i64, [0 x i64] }** %_1518
  store i64 0, i64* %_1521
  br label %_cond1531
_cond1531:
  %_id_i1522 = load i64, i64* %_1521
  %_bop1523 = icmp slt i64 %_id_i1522, 3
  br i1 %_bop1523, label %_if1530, label %_merge1532
_if1530:
  %_id_i1524 = load i64, i64* %_1521
  %_id_a1525 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1518
  %_id_i1526 = load i64, i64* %_1521
  %_1527 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a1525, i32 0, i32 1, i64 %_id_i1526
  store i64 %_id_i1524, i64* %_1527
  %_id_i1528 = load i64, i64* %_1521
  %_bop1529 = add i64 %_id_i1528, 1
  store i64 %_bop1529, i64* %_1521
  br label %_cond1531
_merge1532:
  %_raw_array1534 = call i64* @oat_alloc_array(i64 4)
  %_array1535 = bitcast i64* %_raw_array1534 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1535, { i64, [0 x i64] }** %_1533
  store i64 0, i64* %_1536
  br label %_cond1548
_cond1548:
  %_id_i1537 = load i64, i64* %_1536
  %_bop1538 = icmp slt i64 %_id_i1537, 4
  br i1 %_bop1538, label %_if1547, label %_merge1549
_if1547:
  %_id_i1539 = load i64, i64* %_1536
  %_id_i1540 = load i64, i64* %_1536
  %_bop1541 = mul i64 %_id_i1539, %_id_i1540
  %_id_arr1542 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1533
  %_id_i1543 = load i64, i64* %_1536
  %_1544 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1542, i32 0, i32 1, i64 %_id_i1543
  store i64 %_bop1541, i64* %_1544
  %_id_i1545 = load i64, i64* %_1536
  %_bop1546 = add i64 %_id_i1545, 1
  store i64 %_bop1546, i64* %_1536
  br label %_cond1548
_merge1549:
  %_raw_array1551 = call i64* @oat_alloc_array(i64 3)
  %_array1552 = bitcast i64* %_raw_array1551 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1552, { i64, [0 x i64] }** %_1550
  store i64 0, i64* %_1553
  br label %_cond1564
_cond1564:
  %_id_i1554 = load i64, i64* %_1553
  %_bop1555 = icmp slt i64 %_id_i1554, 3
  br i1 %_bop1555, label %_if1563, label %_merge1565
_if1563:
  %_id_i1556 = load i64, i64* %_1553
  %_bop1557 = mul i64 2, %_id_i1556
  %_id_arr01558 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1550
  %_id_i1559 = load i64, i64* %_1553
  %_1560 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr01558, i32 0, i32 1, i64 %_id_i1559
  store i64 %_bop1557, i64* %_1560
  %_id_i1561 = load i64, i64* %_1553
  %_bop1562 = add i64 %_id_i1561, 1
  store i64 %_bop1562, i64* %_1553
  br label %_cond1564
_merge1565:
  %_id_arr1566 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1533
  %_index_pointer1568 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1566, i32 0, i32 1, i32 3
  %_index_value1567 = load i64, i64* %_index_pointer1568
  %_id_a1569 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1518
  %_index_pointer1571 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a1569, i32 0, i32 1, i32 1
  %_index_value1570 = load i64, i64* %_index_pointer1571
  %_bop1572 = add i64 %_index_value1567, %_index_value1570
  %_id_arr01573 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1550
  %_1574 = call i64 @f({ i64, [0 x i64] }* %_id_arr01573)
  %_bop1575 = add i64 %_bop1572, %_1574
  %_1576 = call i64 @g(i64 4)
  %_bop1577 = add i64 %_bop1575, %_1576
  ret i64 %_bop1577
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
