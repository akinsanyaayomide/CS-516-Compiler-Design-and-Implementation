; generated from: hw4programs/run16.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1738 = alloca i64
  %_argv1739 = alloca { i64, [0 x i8*] }*
  %_1740 = alloca i64
  %_1741 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1813 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1738
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1739
  store i64 10, i64* %_1740
  %_id_x1792 = load i64, i64* %_1740
  %_bop1793 = add i64 %_id_x1792, 2
  %_bop1794 = add i64 %_bop1793, 2
  %_id_x1789 = load i64, i64* %_1740
  %_bop1790 = add i64 %_id_x1789, 2
  %_bop1791 = add i64 %_bop1790, 1
  %_id_x1786 = load i64, i64* %_1740
  %_bop1787 = add i64 %_id_x1786, 2
  %_bop1788 = add i64 %_bop1787, 0
  %_raw_array1784 = call i64* @oat_alloc_array(i64 3)
  %_array1785 = bitcast i64* %_raw_array1784 to { i64, [0 x i64] }*
  %_1803 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1785, i32 0, i32 1, i32 2
  store i64 %_bop1794, i64* %_1801
  %_1800 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1785, i32 0, i32 1, i32 1
  store i64 %_bop1791, i64* %_1798
  %_1797 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1785, i32 0, i32 1, i32 0
  store i64 %_bop1788, i64* %_1795
  %_id_x1772 = load i64, i64* %_1740
  %_bop1773 = add i64 %_id_x1772, 1
  %_bop1774 = add i64 %_bop1773, 2
  %_id_x1769 = load i64, i64* %_1740
  %_bop1770 = add i64 %_id_x1769, 1
  %_bop1771 = add i64 %_bop1770, 1
  %_id_x1766 = load i64, i64* %_1740
  %_bop1767 = add i64 %_id_x1766, 1
  %_bop1768 = add i64 %_bop1767, 0
  %_raw_array1764 = call i64* @oat_alloc_array(i64 3)
  %_array1765 = bitcast i64* %_raw_array1764 to { i64, [0 x i64] }*
  %_1783 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1765, i32 0, i32 1, i32 2
  store i64 %_bop1774, i64* %_1781
  %_1780 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1765, i32 0, i32 1, i32 1
  store i64 %_bop1771, i64* %_1778
  %_1777 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1765, i32 0, i32 1, i32 0
  store i64 %_bop1768, i64* %_1775
  %_id_x1752 = load i64, i64* %_1740
  %_bop1753 = add i64 %_id_x1752, 0
  %_bop1754 = add i64 %_bop1753, 2
  %_id_x1749 = load i64, i64* %_1740
  %_bop1750 = add i64 %_id_x1749, 0
  %_bop1751 = add i64 %_bop1750, 1
  %_id_x1746 = load i64, i64* %_1740
  %_bop1747 = add i64 %_id_x1746, 0
  %_bop1748 = add i64 %_bop1747, 0
  %_raw_array1744 = call i64* @oat_alloc_array(i64 3)
  %_array1745 = bitcast i64* %_raw_array1744 to { i64, [0 x i64] }*
  %_1763 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1745, i32 0, i32 1, i32 2
  store i64 %_bop1754, i64* %_1761
  %_1760 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1745, i32 0, i32 1, i32 1
  store i64 %_bop1751, i64* %_1758
  %_1757 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1745, i32 0, i32 1, i32 0
  store i64 %_bop1748, i64* %_1755
  %_raw_array1742 = call i64* @oat_alloc_array(i64 3)
  %_array1743 = bitcast i64* %_raw_array1742 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1812 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1743, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1785, { i64, [0 x i64] }** %_1810
  %_1809 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1743, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1765, { i64, [0 x i64] }** %_1807
  %_1806 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1743, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1745, { i64, [0 x i64] }** %_1804
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1743, { i64, [0 x { i64, [0 x i64] }*] }** %_1741
  %_id_a1814 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1741
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a1814, { i64, [0 x { i64, [0 x i64] }*] }** %_1813
  %_id_b1815 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1813
  %_index_pointer1817 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_b1815, i32 0, i32 1, i32 2
  %_index_value1816 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1817
  %_index_pointer1819 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1816, i32 0, i32 1, i32 1
  %_index_value1818 = load i64, i64* %_index_pointer1819
  ret i64 %_index_value1818
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
