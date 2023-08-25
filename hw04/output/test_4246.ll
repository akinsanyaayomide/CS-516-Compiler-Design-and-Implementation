; generated from: hw4programs/run20.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f() {
  ret i64 19
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1855 = alloca i64
  %_argv1856 = alloca { i64, [0 x i8*] }*
  %_1857 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1855
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1856
  %_raw_array1858 = call i64* @oat_alloc_array(i64 3)
  %_array1859 = bitcast i64* %_raw_array1858 to { i64, [0 x i64] }*
  %_1868 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1859, i32 0, i32 1, i32 2
  store i64 19, i64* %_1866
  %_1865 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1859, i32 0, i32 1, i32 1
  store i64 100, i64* %_1863
  %_1862 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1859, i32 0, i32 1, i32 0
  store i64 1, i64* %_1860
  store { i64, [0 x i64] }* %_array1859, { i64, [0 x i64] }** %_1857
  %_id_a1869 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1857
  %_index_pointer1871 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a1869, i32 0, i32 1, i32 2
  %_index_value1870 = load i64, i64* %_index_pointer1871
  ret i64 %_index_value1870
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
