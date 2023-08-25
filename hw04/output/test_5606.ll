; generated from: hw4programs/run23.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string1675 = global [4 x i8] c"123\00"
@_string1673 = global [4 x i8] c"789\00"
@_string1665 = global [4 x i8] c"def\00"
@_string1663 = global [4 x i8] c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1657 = alloca i64
  %_argv1658 = alloca { i64, [0 x i8*] }*
  %_strs1685 = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  store i64 %argc, i64* %_argc1657
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1658
  %_string11676 = getelementptr [4 x i8], [4 x i8]* @_string1675, i32 0, i32 0
  %_string11674 = getelementptr [4 x i8], [4 x i8]* @_string1673, i32 0, i32 0
  %_raw_array1671 = call i64* @oat_alloc_array(i64 2)
  %_array1672 = bitcast i64* %_raw_array1671 to { i64, [0 x i8*] }*
  %_1679 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1672, i32 0, i32 1, i32 1
  store i8* %_string11676, i8** %_1679
  %_1677 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1672, i32 0, i32 1, i32 0
  store i8* %_string11674, i8** %_1677
  %_string11666 = getelementptr [4 x i8], [4 x i8]* @_string1665, i32 0, i32 0
  %_string11664 = getelementptr [4 x i8], [4 x i8]* @_string1663, i32 0, i32 0
  %_raw_array1661 = call i64* @oat_alloc_array(i64 2)
  %_array1662 = bitcast i64* %_raw_array1661 to { i64, [0 x i8*] }*
  %_1669 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1662, i32 0, i32 1, i32 1
  store i8* %_string11666, i8** %_1669
  %_1667 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1662, i32 0, i32 1, i32 0
  store i8* %_string11664, i8** %_1667
  %_raw_array1659 = call i64* @oat_alloc_array(i64 2)
  %_array1660 = bitcast i64* %_raw_array1659 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_1683 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1660, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array1672, { i64, [0 x i8*] }** %_1683
  %_1681 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1660, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array1662, { i64, [0 x i8*] }** %_1681
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array1660, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs1685
  %_id_strs1686 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs1685
  %_index_pointer1688 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_id_strs1686, i32 0, i32 1, i32 1
  %_index_value1687 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_index_pointer1688
  %_index_pointer1690 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_index_value1687, i32 0, i32 1, i32 1
  %_index_value1689 = load i8*, i8** %_index_pointer1690
  call void @print_string(i8* %_index_value1689)
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
