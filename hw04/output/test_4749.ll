; generated from: hw4programs/run37.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc658 = alloca i64
  %_argv659 = alloca { i64, [0 x i8*] }*
  %_660 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc658
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv659
  %_raw_array669 = call i64* @oat_alloc_array(i64 2)
  %_array670 = bitcast i64* %_raw_array669 to { i64, [0 x i64] }*
  %_673 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array670, i32 0, i32 1, i32 1
  store i64 4, i64* %_673
  %_671 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array670, i32 0, i32 1, i32 0
  store i64 3, i64* %_671
  %_raw_array663 = call i64* @oat_alloc_array(i64 2)
  %_array664 = bitcast i64* %_raw_array663 to { i64, [0 x i64] }*
  %_667 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array664, i32 0, i32 1, i32 1
  store i64 2, i64* %_667
  %_665 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array664, i32 0, i32 1, i32 0
  store i64 1, i64* %_665
  %_raw_array661 = call i64* @oat_alloc_array(i64 2)
  %_array662 = bitcast i64* %_raw_array661 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_689 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array662, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array682, { i64, [0 x i64] }** %_689
  %_687 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array662, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array676, { i64, [0 x i64] }** %_687
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array662, { i64, [0 x { i64, [0 x i64] }*] }** %_660
  %_id_a691 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_660
  %_index_pointer693 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a691, i32 0, i32 1, i32 0
  %_index_value692 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer693
  %_index_pointer695 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value692, i32 0, i32 1, i32 1
  %_index_value694 = load i64, i64* %_index_pointer695
  ret i64 %_index_value694
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
