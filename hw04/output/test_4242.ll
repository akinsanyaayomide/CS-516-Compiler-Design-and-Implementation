; generated from: hw4programs/run15.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %a) {
  %_a1732 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a, { i64, [0 x { i64, [0 x i64] }*] }** %_a1732
  %_id_a1733 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1732
  %_index_pointer1735 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a1733, i32 0, i32 1, i32 1
  %_index_value1734 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1735
  %_index_pointer1737 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1734, i32 0, i32 1, i32 1
  %_index_value1736 = load i64, i64* %_index_pointer1737
  ret i64 %_index_value1736
}

define i64 @g(i64 %x) {
  %_x1672 = alloca i64
  %_1673 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %x, i64* %_x1672
  %_id_x1708 = load i64, i64* %_x1672
  %_id_x1707 = load i64, i64* %_x1672
  %_id_x1706 = load i64, i64* %_x1672
  %_raw_array1704 = call i64* @oat_alloc_array(i64 3)
  %_array1705 = bitcast i64* %_raw_array1704 to { i64, [0 x i64] }*
  %_1717 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1705, i32 0, i32 1, i32 2
  store i64 %_id_x1708, i64* %_1715
  %_1714 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1705, i32 0, i32 1, i32 1
  store i64 %_id_x1707, i64* %_1712
  %_1711 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1705, i32 0, i32 1, i32 0
  store i64 %_id_x1706, i64* %_1709
  %_id_x1694 = load i64, i64* %_x1672
  %_id_x1693 = load i64, i64* %_x1672
  %_id_x1692 = load i64, i64* %_x1672
  %_raw_array1690 = call i64* @oat_alloc_array(i64 3)
  %_array1691 = bitcast i64* %_raw_array1690 to { i64, [0 x i64] }*
  %_1703 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1691, i32 0, i32 1, i32 2
  store i64 %_id_x1694, i64* %_1701
  %_1700 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1691, i32 0, i32 1, i32 1
  store i64 %_id_x1693, i64* %_1698
  %_1697 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1691, i32 0, i32 1, i32 0
  store i64 %_id_x1692, i64* %_1695
  %_id_x1680 = load i64, i64* %_x1672
  %_id_x1679 = load i64, i64* %_x1672
  %_id_x1678 = load i64, i64* %_x1672
  %_raw_array1676 = call i64* @oat_alloc_array(i64 3)
  %_array1677 = bitcast i64* %_raw_array1676 to { i64, [0 x i64] }*
  %_1689 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1677, i32 0, i32 1, i32 2
  store i64 %_id_x1680, i64* %_1687
  %_1686 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1677, i32 0, i32 1, i32 1
  store i64 %_id_x1679, i64* %_1684
  %_1683 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1677, i32 0, i32 1, i32 0
  store i64 %_id_x1678, i64* %_1681
  %_raw_array1674 = call i64* @oat_alloc_array(i64 3)
  %_array1675 = bitcast i64* %_raw_array1674 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1726 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1675, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1705, { i64, [0 x i64] }** %_1724
  %_1723 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1675, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1691, { i64, [0 x i64] }** %_1721
  %_1720 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1675, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1677, { i64, [0 x i64] }** %_1718
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1675, { i64, [0 x { i64, [0 x i64] }*] }** %_1673
  %_id_arr1727 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1673
  %_index_pointer1729 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr1727, i32 0, i32 1, i32 1
  %_index_value1728 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1729
  %_index_pointer1731 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1728, i32 0, i32 1, i32 1
  %_index_value1730 = load i64, i64* %_index_pointer1731
  ret i64 %_index_value1730
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1452 = alloca i64
  %_argv1453 = alloca { i64, [0 x i8*] }*
  %_1454 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1499 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1602 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1452
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1453
  %_raw_array1479 = call i64* @oat_alloc_array(i64 3)
  %_array1480 = bitcast i64* %_raw_array1479 to { i64, [0 x i64] }*
  %_1489 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1480, i32 0, i32 1, i32 2
  store i64 2, i64* %_1487
  %_1486 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1480, i32 0, i32 1, i32 1
  store i64 1, i64* %_1484
  %_1483 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1480, i32 0, i32 1, i32 0
  store i64 0, i64* %_1481
  %_raw_array1468 = call i64* @oat_alloc_array(i64 3)
  %_array1469 = bitcast i64* %_raw_array1468 to { i64, [0 x i64] }*
  %_1478 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1469, i32 0, i32 1, i32 2
  store i64 2, i64* %_1476
  %_1475 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1469, i32 0, i32 1, i32 1
  store i64 1, i64* %_1473
  %_1472 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1469, i32 0, i32 1, i32 0
  store i64 0, i64* %_1470
  %_raw_array1457 = call i64* @oat_alloc_array(i64 3)
  %_array1458 = bitcast i64* %_raw_array1457 to { i64, [0 x i64] }*
  %_1467 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1458, i32 0, i32 1, i32 2
  store i64 2, i64* %_1465
  %_1464 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1458, i32 0, i32 1, i32 1
  store i64 1, i64* %_1462
  %_1461 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1458, i32 0, i32 1, i32 0
  store i64 0, i64* %_1459
  %_raw_array1455 = call i64* @oat_alloc_array(i64 3)
  %_array1456 = bitcast i64* %_raw_array1455 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1498 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1456, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1480, { i64, [0 x i64] }** %_1496
  %_1495 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1456, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1469, { i64, [0 x i64] }** %_1493
  %_1492 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1456, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1458, { i64, [0 x i64] }** %_1490
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1456, { i64, [0 x { i64, [0 x i64] }*] }** %_1454
  %_bop1574 = mul i64 3, 4
  %_bop1573 = mul i64 3, 3
  %_bop1572 = mul i64 3, 2
  %_bop1571 = mul i64 3, 1
  %_bop1570 = mul i64 3, 0
  %_raw_array1568 = call i64* @oat_alloc_array(i64 5)
  %_array1569 = bitcast i64* %_raw_array1568 to { i64, [0 x i64] }*
  %_1589 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1569, i32 0, i32 1, i32 4
  store i64 %_bop1574, i64* %_1587
  %_1586 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1569, i32 0, i32 1, i32 3
  store i64 %_bop1573, i64* %_1584
  %_1583 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1569, i32 0, i32 1, i32 2
  store i64 %_bop1572, i64* %_1581
  %_1580 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1569, i32 0, i32 1, i32 1
  store i64 %_bop1571, i64* %_1578
  %_1577 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1569, i32 0, i32 1, i32 0
  store i64 %_bop1570, i64* %_1575
  %_bop1552 = mul i64 2, 4
  %_bop1551 = mul i64 2, 3
  %_bop1550 = mul i64 2, 2
  %_bop1549 = mul i64 2, 1
  %_bop1548 = mul i64 2, 0
  %_raw_array1546 = call i64* @oat_alloc_array(i64 5)
  %_array1547 = bitcast i64* %_raw_array1546 to { i64, [0 x i64] }*
  %_1567 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1547, i32 0, i32 1, i32 4
  store i64 %_bop1552, i64* %_1565
  %_1564 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1547, i32 0, i32 1, i32 3
  store i64 %_bop1551, i64* %_1562
  %_1561 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1547, i32 0, i32 1, i32 2
  store i64 %_bop1550, i64* %_1559
  %_1558 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1547, i32 0, i32 1, i32 1
  store i64 %_bop1549, i64* %_1556
  %_1555 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1547, i32 0, i32 1, i32 0
  store i64 %_bop1548, i64* %_1553
  %_bop1530 = mul i64 1, 4
  %_bop1529 = mul i64 1, 3
  %_bop1528 = mul i64 1, 2
  %_bop1527 = mul i64 1, 1
  %_bop1526 = mul i64 1, 0
  %_raw_array1524 = call i64* @oat_alloc_array(i64 5)
  %_array1525 = bitcast i64* %_raw_array1524 to { i64, [0 x i64] }*
  %_1545 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1525, i32 0, i32 1, i32 4
  store i64 %_bop1530, i64* %_1543
  %_1542 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1525, i32 0, i32 1, i32 3
  store i64 %_bop1529, i64* %_1540
  %_1539 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1525, i32 0, i32 1, i32 2
  store i64 %_bop1528, i64* %_1537
  %_1536 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1525, i32 0, i32 1, i32 1
  store i64 %_bop1527, i64* %_1534
  %_1533 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1525, i32 0, i32 1, i32 0
  store i64 %_bop1526, i64* %_1531
  %_bop1508 = mul i64 0, 4
  %_bop1507 = mul i64 0, 3
  %_bop1506 = mul i64 0, 2
  %_bop1505 = mul i64 0, 1
  %_bop1504 = mul i64 0, 0
  %_raw_array1502 = call i64* @oat_alloc_array(i64 5)
  %_array1503 = bitcast i64* %_raw_array1502 to { i64, [0 x i64] }*
  %_1523 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1503, i32 0, i32 1, i32 4
  store i64 %_bop1508, i64* %_1521
  %_1520 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1503, i32 0, i32 1, i32 3
  store i64 %_bop1507, i64* %_1518
  %_1517 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1503, i32 0, i32 1, i32 2
  store i64 %_bop1506, i64* %_1515
  %_1514 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1503, i32 0, i32 1, i32 1
  store i64 %_bop1505, i64* %_1512
  %_1511 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1503, i32 0, i32 1, i32 0
  store i64 %_bop1504, i64* %_1509
  %_raw_array1500 = call i64* @oat_alloc_array(i64 4)
  %_array1501 = bitcast i64* %_raw_array1500 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1601 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1501, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array1569, { i64, [0 x i64] }** %_1599
  %_1598 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1501, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1547, { i64, [0 x i64] }** %_1596
  %_1595 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1501, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1525, { i64, [0 x i64] }** %_1593
  %_1592 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1501, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1503, { i64, [0 x i64] }** %_1590
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1501, { i64, [0 x { i64, [0 x i64] }*] }** %_1499
  %_bop1637 = mul i64 2, 2
  %_bop1636 = mul i64 2, 1
  %_bop1635 = mul i64 2, 0
  %_raw_array1633 = call i64* @oat_alloc_array(i64 3)
  %_array1634 = bitcast i64* %_raw_array1633 to { i64, [0 x i64] }*
  %_1646 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1634, i32 0, i32 1, i32 2
  store i64 %_bop1637, i64* %_1644
  %_1643 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1634, i32 0, i32 1, i32 1
  store i64 %_bop1636, i64* %_1641
  %_1640 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1634, i32 0, i32 1, i32 0
  store i64 %_bop1635, i64* %_1638
  %_bop1623 = mul i64 1, 2
  %_bop1622 = mul i64 1, 1
  %_bop1621 = mul i64 1, 0
  %_raw_array1619 = call i64* @oat_alloc_array(i64 3)
  %_array1620 = bitcast i64* %_raw_array1619 to { i64, [0 x i64] }*
  %_1632 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1620, i32 0, i32 1, i32 2
  store i64 %_bop1623, i64* %_1630
  %_1629 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1620, i32 0, i32 1, i32 1
  store i64 %_bop1622, i64* %_1627
  %_1626 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1620, i32 0, i32 1, i32 0
  store i64 %_bop1621, i64* %_1624
  %_bop1609 = mul i64 0, 2
  %_bop1608 = mul i64 0, 1
  %_bop1607 = mul i64 0, 0
  %_raw_array1605 = call i64* @oat_alloc_array(i64 3)
  %_array1606 = bitcast i64* %_raw_array1605 to { i64, [0 x i64] }*
  %_1618 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1606, i32 0, i32 1, i32 2
  store i64 %_bop1609, i64* %_1616
  %_1615 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1606, i32 0, i32 1, i32 1
  store i64 %_bop1608, i64* %_1613
  %_1612 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1606, i32 0, i32 1, i32 0
  store i64 %_bop1607, i64* %_1610
  %_raw_array1603 = call i64* @oat_alloc_array(i64 3)
  %_array1604 = bitcast i64* %_raw_array1603 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1655 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1604, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1634, { i64, [0 x i64] }** %_1653
  %_1652 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1604, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1620, { i64, [0 x i64] }** %_1650
  %_1649 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1604, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1606, { i64, [0 x i64] }** %_1647
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1604, { i64, [0 x { i64, [0 x i64] }*] }** %_1602
  %_id_arr1656 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1499
  %_index_pointer1658 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr1656, i32 0, i32 1, i32 3
  %_index_value1657 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1658
  %_index_pointer1660 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1657, i32 0, i32 1, i32 4
  %_index_value1659 = load i64, i64* %_index_pointer1660
  %_id_a1661 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1454
  %_index_pointer1663 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a1661, i32 0, i32 1, i32 1
  %_index_value1662 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1663
  %_index_pointer1665 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1662, i32 0, i32 1, i32 2
  %_index_value1664 = load i64, i64* %_index_pointer1665
  %_bop1666 = add i64 %_index_value1659, %_index_value1664
  %_id_arr01667 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1602
  %_1668 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_id_arr01667)
  %_bop1669 = add i64 %_bop1666, %_1668
  %_1670 = call i64 @g(i64 4)
  %_bop1671 = add i64 %_bop1669, %_1670
  ret i64 %_bop1671
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
