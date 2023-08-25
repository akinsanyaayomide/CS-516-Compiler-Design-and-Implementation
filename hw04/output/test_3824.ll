; generated from: hw4programs/run23.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string1676 = global [4 x i8] c"123\00"
@_string1674 = global [4 x i8] c"789\00"
@_string1666 = global [4 x i8] c"def\00"
@_string1664 = global [4 x i8] c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1657 = alloca i64
  %_argv1658 = alloca { i64, [0 x i8*] }*
  %_1659 = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  store i64 %argc, i64* %_argc1657
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1658
  %_string11677 = getelementptr [4 x i8], [4 x i8]* @_string1676, i32 0, i32 0
  %_string11675 = getelementptr [4 x i8], [4 x i8]* @_string1674, i32 0, i32 0
  %_raw_array1672 = call i64* @oat_alloc_array(i64 2)
  %_array1673 = bitcast i64* %_raw_array1672 to { i64, [0 x i8*] }*
  %_1680 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1673, i32 0, i32 1, i32 1
  store i8* %_string11677, i8** %_1680
  %_1678 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1673, i32 0, i32 1, i32 0
  store i8* %_string11675, i8** %_1678
  %_string11667 = getelementptr [4 x i8], [4 x i8]* @_string1666, i32 0, i32 0
  %_string11665 = getelementptr [4 x i8], [4 x i8]* @_string1664, i32 0, i32 0
  %_raw_array1662 = call i64* @oat_alloc_array(i64 2)
  %_array1663 = bitcast i64* %_raw_array1662 to { i64, [0 x i8*] }*
  %_1670 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1663, i32 0, i32 1, i32 1
  store i8* %_string11667, i8** %_1670
  %_1668 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1663, i32 0, i32 1, i32 0
  store i8* %_string11665, i8** %_1668
  %_raw_array1660 = call i64* @oat_alloc_array(i64 2)
  %_array1661 = bitcast i64* %_raw_array1660 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_1684 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1661, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array1673, { i64, [0 x i8*] }** %_1684
  %_1682 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1661, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array1663, { i64, [0 x i8*] }** %_1682
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array1661, { i64, [0 x { i64, [0 x i8*] }*] }** %_1659
  %_id_strs1686 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_1659
  %_index_pointer1687 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_id_strs1686, i32 0, i32 1, i32 1
  %_index_value1688 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_index_pointer1687
  %_index_pointer1689 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_index_value1688, i32 0, i32 1, i32 1
  %_index_value1690 = load i8*, i8** %_index_pointer1689
  call void @print_string(i8* %_index_value1690)
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
