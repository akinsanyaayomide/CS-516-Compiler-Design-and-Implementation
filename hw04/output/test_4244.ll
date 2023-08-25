; generated from: hw4programs/run18.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1820 = alloca i64
  %_argv1821 = alloca { i64, [0 x i8*] }*
  %_1822 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1820
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1821
  %_raw_array1823 = call i64* @oat_alloc_array(i64 3)
  %_array1824 = bitcast i64* %_raw_array1823 to { i64, [0 x i64] }*
  %_1833 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1824, i32 0, i32 1, i32 2
  store i64 999, i64* %_1831
  %_1830 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1824, i32 0, i32 1, i32 1
  store i64 100, i64* %_1828
  %_1827 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1824, i32 0, i32 1, i32 0
  store i64 1, i64* %_1825
  store { i64, [0 x i64] }* %_array1824, { i64, [0 x i64] }** %_1822
  %_id_a1834 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1822
  %_index_pointer1836 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a1834, i32 0, i32 1, i32 2
  %_index_value1835 = load i64, i64* %_index_pointer1836
  ret i64 %_index_value1835
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
