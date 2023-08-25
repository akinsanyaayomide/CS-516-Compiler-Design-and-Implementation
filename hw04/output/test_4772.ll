; generated from: hw4programs/run15.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %a) {
  %_a2055 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a, { i64, [0 x { i64, [0 x i64] }*] }** %_a2055
  %_id_a2056 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2055
  %_index_pointer2058 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2056, i32 0, i32 1, i32 1
  %_index_value2057 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer2058
  %_index_pointer2060 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value2057, i32 0, i32 1, i32 1
  %_index_value2059 = load i64, i64* %_index_pointer2060
  ret i64 %_index_value2059
}

define i64 @g(i64 %x) {
  %_x1956 = alloca i64
  %_1957 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %x, i64* %_x1956
  %_id_x1992 = load i64, i64* %_x1956
  %_id_x1991 = load i64, i64* %_x1956
  %_id_x1990 = load i64, i64* %_x1956
  %_raw_array1988 = call i64* @oat_alloc_array(i64 3)
  %_array1989 = bitcast i64* %_raw_array1988 to { i64, [0 x i64] }*
  %_2000 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1989, i32 0, i32 1, i32 2
  store i64 %_id_x1995, i64* %_2000
  %_1998 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1989, i32 0, i32 1, i32 1
  store i64 %_id_x1994, i64* %_1998
  %_1996 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1989, i32 0, i32 1, i32 0
  store i64 %_id_x1993, i64* %_1996
  %_id_x1978 = load i64, i64* %_x1956
  %_id_x1977 = load i64, i64* %_x1956
  %_id_x1976 = load i64, i64* %_x1956
  %_raw_array1974 = call i64* @oat_alloc_array(i64 3)
  %_array1975 = bitcast i64* %_raw_array1974 to { i64, [0 x i64] }*
  %_1986 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1975, i32 0, i32 1, i32 2
  store i64 %_id_x1981, i64* %_1986
  %_1984 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1975, i32 0, i32 1, i32 1
  store i64 %_id_x1980, i64* %_1984
  %_1982 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1975, i32 0, i32 1, i32 0
  store i64 %_id_x1979, i64* %_1982
  %_id_x1964 = load i64, i64* %_x1956
  %_id_x1963 = load i64, i64* %_x1956
  %_id_x1962 = load i64, i64* %_x1956
  %_raw_array1960 = call i64* @oat_alloc_array(i64 3)
  %_array1961 = bitcast i64* %_raw_array1960 to { i64, [0 x i64] }*
  %_1972 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1961, i32 0, i32 1, i32 2
  store i64 %_id_x1967, i64* %_1972
  %_1970 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1961, i32 0, i32 1, i32 1
  store i64 %_id_x1966, i64* %_1970
  %_1968 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1961, i32 0, i32 1, i32 0
  store i64 %_id_x1965, i64* %_1968
  %_raw_array1958 = call i64* @oat_alloc_array(i64 3)
  %_array1959 = bitcast i64* %_raw_array1958 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_2048 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1959, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array2031, { i64, [0 x i64] }** %_2048
  %_2046 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1959, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array2017, { i64, [0 x i64] }** %_2046
  %_2044 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1959, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array2003, { i64, [0 x i64] }** %_2044
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1959, { i64, [0 x { i64, [0 x i64] }*] }** %_1957
  %_id_arr2050 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1957
  %_index_pointer2052 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr2050, i32 0, i32 1, i32 1
  %_index_value2051 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer2052
  %_index_pointer2054 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value2051, i32 0, i32 1, i32 1
  %_index_value2053 = load i64, i64* %_index_pointer2054
  ret i64 %_index_value2053
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1601 = alloca i64
  %_argv1602 = alloca { i64, [0 x i8*] }*
  %_1603 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1660 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1847 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1601
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1602
  %_raw_array1622 = call i64* @oat_alloc_array(i64 3)
  %_array1623 = bitcast i64* %_raw_array1622 to { i64, [0 x i64] }*
  %_1628 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1623, i32 0, i32 1, i32 2
  store i64 2, i64* %_1628
  %_1626 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1623, i32 0, i32 1, i32 1
  store i64 1, i64* %_1626
  %_1624 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1623, i32 0, i32 1, i32 0
  store i64 0, i64* %_1624
  %_raw_array1614 = call i64* @oat_alloc_array(i64 3)
  %_array1615 = bitcast i64* %_raw_array1614 to { i64, [0 x i64] }*
  %_1620 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1615, i32 0, i32 1, i32 2
  store i64 2, i64* %_1620
  %_1618 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1615, i32 0, i32 1, i32 1
  store i64 1, i64* %_1618
  %_1616 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1615, i32 0, i32 1, i32 0
  store i64 0, i64* %_1616
  %_raw_array1606 = call i64* @oat_alloc_array(i64 3)
  %_array1607 = bitcast i64* %_raw_array1606 to { i64, [0 x i64] }*
  %_1612 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1607, i32 0, i32 1, i32 2
  store i64 2, i64* %_1612
  %_1610 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1607, i32 0, i32 1, i32 1
  store i64 1, i64* %_1610
  %_1608 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1607, i32 0, i32 1, i32 0
  store i64 0, i64* %_1608
  %_raw_array1604 = call i64* @oat_alloc_array(i64 3)
  %_array1605 = bitcast i64* %_raw_array1604 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1658 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1605, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1647, { i64, [0 x i64] }** %_1658
  %_1656 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1605, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1639, { i64, [0 x i64] }** %_1656
  %_1654 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1605, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1631, { i64, [0 x i64] }** %_1654
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1605, { i64, [0 x { i64, [0 x i64] }*] }** %_1603
  %_bop1735 = mul i64 3, 4
  %_bop1734 = mul i64 3, 3
  %_bop1733 = mul i64 3, 2
  %_bop1732 = mul i64 3, 1
  %_bop1731 = mul i64 3, 0
  %_raw_array1729 = call i64* @oat_alloc_array(i64 5)
  %_array1730 = bitcast i64* %_raw_array1729 to { i64, [0 x i64] }*
  %_1749 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1730, i32 0, i32 1, i32 4
  store i64 %_bop1740, i64* %_1749
  %_1747 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1730, i32 0, i32 1, i32 3
  store i64 %_bop1739, i64* %_1747
  %_1745 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1730, i32 0, i32 1, i32 2
  store i64 %_bop1738, i64* %_1745
  %_1743 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1730, i32 0, i32 1, i32 1
  store i64 %_bop1737, i64* %_1743
  %_1741 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1730, i32 0, i32 1, i32 0
  store i64 %_bop1736, i64* %_1741
  %_bop1713 = mul i64 2, 4
  %_bop1712 = mul i64 2, 3
  %_bop1711 = mul i64 2, 2
  %_bop1710 = mul i64 2, 1
  %_bop1709 = mul i64 2, 0
  %_raw_array1707 = call i64* @oat_alloc_array(i64 5)
  %_array1708 = bitcast i64* %_raw_array1707 to { i64, [0 x i64] }*
  %_1727 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1708, i32 0, i32 1, i32 4
  store i64 %_bop1718, i64* %_1727
  %_1725 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1708, i32 0, i32 1, i32 3
  store i64 %_bop1717, i64* %_1725
  %_1723 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1708, i32 0, i32 1, i32 2
  store i64 %_bop1716, i64* %_1723
  %_1721 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1708, i32 0, i32 1, i32 1
  store i64 %_bop1715, i64* %_1721
  %_1719 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1708, i32 0, i32 1, i32 0
  store i64 %_bop1714, i64* %_1719
  %_bop1691 = mul i64 1, 4
  %_bop1690 = mul i64 1, 3
  %_bop1689 = mul i64 1, 2
  %_bop1688 = mul i64 1, 1
  %_bop1687 = mul i64 1, 0
  %_raw_array1685 = call i64* @oat_alloc_array(i64 5)
  %_array1686 = bitcast i64* %_raw_array1685 to { i64, [0 x i64] }*
  %_1705 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1686, i32 0, i32 1, i32 4
  store i64 %_bop1696, i64* %_1705
  %_1703 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1686, i32 0, i32 1, i32 3
  store i64 %_bop1695, i64* %_1703
  %_1701 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1686, i32 0, i32 1, i32 2
  store i64 %_bop1694, i64* %_1701
  %_1699 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1686, i32 0, i32 1, i32 1
  store i64 %_bop1693, i64* %_1699
  %_1697 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1686, i32 0, i32 1, i32 0
  store i64 %_bop1692, i64* %_1697
  %_bop1669 = mul i64 0, 4
  %_bop1668 = mul i64 0, 3
  %_bop1667 = mul i64 0, 2
  %_bop1666 = mul i64 0, 1
  %_bop1665 = mul i64 0, 0
  %_raw_array1663 = call i64* @oat_alloc_array(i64 5)
  %_array1664 = bitcast i64* %_raw_array1663 to { i64, [0 x i64] }*
  %_1683 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1664, i32 0, i32 1, i32 4
  store i64 %_bop1674, i64* %_1683
  %_1681 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1664, i32 0, i32 1, i32 3
  store i64 %_bop1673, i64* %_1681
  %_1679 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1664, i32 0, i32 1, i32 2
  store i64 %_bop1672, i64* %_1679
  %_1677 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1664, i32 0, i32 1, i32 1
  store i64 %_bop1671, i64* %_1677
  %_1675 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1664, i32 0, i32 1, i32 0
  store i64 %_bop1670, i64* %_1675
  %_raw_array1661 = call i64* @oat_alloc_array(i64 4)
  %_array1662 = bitcast i64* %_raw_array1661 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1845 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1662, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array1818, { i64, [0 x i64] }** %_1845
  %_1843 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1662, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1796, { i64, [0 x i64] }** %_1843
  %_1841 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1662, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1774, { i64, [0 x i64] }** %_1841
  %_1839 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1662, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1752, { i64, [0 x i64] }** %_1839
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1662, { i64, [0 x { i64, [0 x i64] }*] }** %_1660
  %_bop1882 = mul i64 2, 2
  %_bop1881 = mul i64 2, 1
  %_bop1880 = mul i64 2, 0
  %_raw_array1878 = call i64* @oat_alloc_array(i64 3)
  %_array1879 = bitcast i64* %_raw_array1878 to { i64, [0 x i64] }*
  %_1890 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1879, i32 0, i32 1, i32 2
  store i64 %_bop1885, i64* %_1890
  %_1888 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1879, i32 0, i32 1, i32 1
  store i64 %_bop1884, i64* %_1888
  %_1886 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1879, i32 0, i32 1, i32 0
  store i64 %_bop1883, i64* %_1886
  %_bop1868 = mul i64 1, 2
  %_bop1867 = mul i64 1, 1
  %_bop1866 = mul i64 1, 0
  %_raw_array1864 = call i64* @oat_alloc_array(i64 3)
  %_array1865 = bitcast i64* %_raw_array1864 to { i64, [0 x i64] }*
  %_1876 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1865, i32 0, i32 1, i32 2
  store i64 %_bop1871, i64* %_1876
  %_1874 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1865, i32 0, i32 1, i32 1
  store i64 %_bop1870, i64* %_1874
  %_1872 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1865, i32 0, i32 1, i32 0
  store i64 %_bop1869, i64* %_1872
  %_bop1854 = mul i64 0, 2
  %_bop1853 = mul i64 0, 1
  %_bop1852 = mul i64 0, 0
  %_raw_array1850 = call i64* @oat_alloc_array(i64 3)
  %_array1851 = bitcast i64* %_raw_array1850 to { i64, [0 x i64] }*
  %_1862 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1851, i32 0, i32 1, i32 2
  store i64 %_bop1857, i64* %_1862
  %_1860 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1851, i32 0, i32 1, i32 1
  store i64 %_bop1856, i64* %_1860
  %_1858 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1851, i32 0, i32 1, i32 0
  store i64 %_bop1855, i64* %_1858
  %_raw_array1848 = call i64* @oat_alloc_array(i64 3)
  %_array1849 = bitcast i64* %_raw_array1848 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1938 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1849, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1921, { i64, [0 x i64] }** %_1938
  %_1936 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1849, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1907, { i64, [0 x i64] }** %_1936
  %_1934 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1849, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1893, { i64, [0 x i64] }** %_1934
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1849, { i64, [0 x { i64, [0 x i64] }*] }** %_1847
  %_id_arr1940 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1660
  %_index_pointer1942 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr1940, i32 0, i32 1, i32 3
  %_index_value1941 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1942
  %_index_pointer1944 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1941, i32 0, i32 1, i32 4
  %_index_value1943 = load i64, i64* %_index_pointer1944
  %_id_a1945 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1603
  %_index_pointer1947 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a1945, i32 0, i32 1, i32 1
  %_index_value1946 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1947
  %_index_pointer1949 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1946, i32 0, i32 1, i32 2
  %_index_value1948 = load i64, i64* %_index_pointer1949
  %_bop1950 = add i64 %_index_value1943, %_index_value1948
  %_id_arr01951 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1847
  %_1952 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_id_arr01951)
  %_bop1953 = add i64 %_bop1950, %_1952
  %_1954 = call i64 @g(i64 4)
  %_bop1955 = add i64 %_bop1953, %_1954
  ret i64 %_bop1955
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
