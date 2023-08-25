; generated from: hw4programs/run23.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string1912 = global [4 x i8] c"123\00"
@_string1910 = global [4 x i8] c"789\00"
@_string1900 = global [4 x i8] c"def\00"
@_string1898 = global [4 x i8] c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1891 = alloca i64
  %_argv1892 = alloca { i64, [0 x i8*] }*
  %_1893 = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  store i64 %argc, i64* %_argc1891
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1892
  %_string11913 = getelementptr [4 x i8], [4 x i8]* @_string1912, i32 0, i32 0
  %_string11911 = getelementptr [4 x i8], [4 x i8]* @_string1910, i32 0, i32 0
  %_raw_array1908 = call i64* @oat_alloc_array(i64 2)
  %_array1909 = bitcast i64* %_raw_array1908 to { i64, [0 x i8*] }*
  %_1919 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1909, i32 0, i32 1, i32 1
  store i8* %_string11913, i8** %_1917
  %_1916 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1909, i32 0, i32 1, i32 0
  store i8* %_string11911, i8** %_1914
  %_string11901 = getelementptr [4 x i8], [4 x i8]* @_string1900, i32 0, i32 0
  %_string11899 = getelementptr [4 x i8], [4 x i8]* @_string1898, i32 0, i32 0
  %_raw_array1896 = call i64* @oat_alloc_array(i64 2)
  %_array1897 = bitcast i64* %_raw_array1896 to { i64, [0 x i8*] }*
  %_1907 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1897, i32 0, i32 1, i32 1
  store i8* %_string11901, i8** %_1905
  %_1904 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1897, i32 0, i32 1, i32 0
  store i8* %_string11899, i8** %_1902
  %_raw_array1894 = call i64* @oat_alloc_array(i64 2)
  %_array1895 = bitcast i64* %_raw_array1894 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_1925 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1895, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array1909, { i64, [0 x i8*] }** %_1923
  %_1922 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1895, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array1897, { i64, [0 x i8*] }** %_1920
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array1895, { i64, [0 x { i64, [0 x i8*] }*] }** %_1893
  %_id_strs1926 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_1893
  %_index_pointer1928 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_id_strs1926, i32 0, i32 1, i32 1
  %_index_value1927 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_index_pointer1928
  %_index_pointer1930 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_index_value1927, i32 0, i32 1, i32 1
  %_index_value1929 = load i8*, i8** %_index_pointer1930
  call void @print_string(i8* %_index_value1929)
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
