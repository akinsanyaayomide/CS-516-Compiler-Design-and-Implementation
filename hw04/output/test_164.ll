; generated from: hw4programs/run23.oat
target triple = "x86_64-apple-macosx10.13.0"
@_raw_string1636 = global [4 x i8] c"123\00"
@_raw_string1634 = global [4 x i8] c"789\00"
@_raw_string1626 = global [4 x i8] c"def\00"
@_raw_string1624 = global [4 x i8] c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1616 = alloca i64
  %_argv1617 = alloca { i64, [0 x i8*] }*
  %_1618 = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  store i64 %argc, i64* %_argc1616
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1617
  %_result_id1635 = bitcast [4 x i8]* @_raw_string1636 to i8*
  %_result_id1633 = bitcast [4 x i8]* @_raw_string1634 to i8*
  %_raw_array1631 = call i64* @oat_alloc_array(i64 2)
  %_array1632 = bitcast i64* %_raw_array1631 to { i64, [0 x i8*] }*
  %_1639 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1632, i32 0, i32 1, i32 1
  store i8* %_result_id1635, i8** %_1639
  %_1637 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1632, i32 0, i32 1, i32 0
  store i8* %_result_id1633, i8** %_1637
  %_result_id1625 = bitcast [4 x i8]* @_raw_string1626 to i8*
  %_result_id1623 = bitcast [4 x i8]* @_raw_string1624 to i8*
  %_raw_array1621 = call i64* @oat_alloc_array(i64 2)
  %_array1622 = bitcast i64* %_raw_array1621 to { i64, [0 x i8*] }*
  %_1629 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1622, i32 0, i32 1, i32 1
  store i8* %_result_id1625, i8** %_1629
  %_1627 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1622, i32 0, i32 1, i32 0
  store i8* %_result_id1623, i8** %_1627
  %_raw_array1619 = call i64* @oat_alloc_array(i64 2)
  %_array1620 = bitcast i64* %_raw_array1619 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_1643 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1620, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array1632, { i64, [0 x i8*] }** %_1643
  %_1641 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1620, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array1622, { i64, [0 x i8*] }** %_1641
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array1620, { i64, [0 x { i64, [0 x i8*] }*] }** %_1618
  %_id_strs1645 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_1618
  %_index_pointer1646 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_id_strs1645, i32 0, i32 1, i32 1
  %_index_value1647 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_index_pointer1646
  %_index_pointer1648 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_index_value1647, i32 0, i32 1, i32 1
  %_index_value1649 = load i8*, i8** %_index_pointer1648
  call void @print_string(i8* %_index_value1649)
  ret i64 0
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
