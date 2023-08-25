; generated from: hw4programs/run9.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc813 = alloca i64
  %_argv814 = alloca { i64, [0 x i8*] }*
  %_815 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc813
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv814
  %_raw_array824 = call i64* @oat_alloc_array(i64 2)
  %_array825 = bitcast i64* %_raw_array824 to { i64, [0 x i64] }*
  %_828 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array825, i32 0, i32 1, i32 1
  store i64 4, i64* %_828
  %_826 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array825, i32 0, i32 1, i32 0
  store i64 3, i64* %_826
  %_raw_array818 = call i64* @oat_alloc_array(i64 2)
  %_array819 = bitcast i64* %_raw_array818 to { i64, [0 x i64] }*
  %_822 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array819, i32 0, i32 1, i32 1
  store i64 2, i64* %_822
  %_820 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array819, i32 0, i32 1, i32 0
  store i64 1, i64* %_820
  %_raw_array816 = call i64* @oat_alloc_array(i64 2)
  %_array817 = bitcast i64* %_raw_array816 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_832 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array817, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array825, { i64, [0 x i64] }** %_832
  %_830 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array817, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array819, { i64, [0 x i64] }** %_830
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array817, { i64, [0 x { i64, [0 x i64] }*] }** %_815
  %_id_arr834 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_815
  %_index_pointer835 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr834, i32 0, i32 1, i32 1
  %_index_value836 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer835
  %_index_pointer837 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value836, i32 0, i32 1, i32 1
  %_index_value838 = load i64, i64* %_index_pointer837
  ret i64 %_index_value838
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
