; generated from: hw4programs/run44.oat
target triple = "x86_64-apple-macosx10.13.0"
@str = global { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }* null
@_string1918 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1896 = alloca i64
  %_argv1897 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc1896
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1897
  %_string11919 = getelementptr [6 x i8], [6 x i8]* @_string1918, i32 0, i32 0
  %_raw_array1916 = call i64* @oat_alloc_array(i64 1)
  %_array1917 = bitcast i64* %_raw_array1916 to { i64, [0 x i8*] }*
  %_1920 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1917, i32 0, i32 1, i32 0
  store i8* %_string11919, i8** %_1920
  %_raw_array1914 = call i64* @oat_alloc_array(i64 1)
  %_array1915 = bitcast i64* %_raw_array1914 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_1922 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1915, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array1917, { i64, [0 x i8*] }** %_1922
  %_raw_array1912 = call i64* @oat_alloc_array(i64 1)
  %_array1913 = bitcast i64* %_raw_array1912 to { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*
  %_1924 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }* %_array1913, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array1915, { i64, [0 x { i64, [0 x i8*] }*] }** %_1924
  %_raw_array1910 = call i64* @oat_alloc_array(i64 1)
  %_array1911 = bitcast i64* %_raw_array1910 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*
  %_1926 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }* %_array1911, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }* %_array1913, { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }** %_1926
  %_raw_array1908 = call i64* @oat_alloc_array(i64 1)
  %_array1909 = bitcast i64* %_raw_array1908 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*
  %_1928 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }* %_array1909, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }* %_array1911, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }** %_1928
  %_raw_array1906 = call i64* @oat_alloc_array(i64 1)
  %_array1907 = bitcast i64* %_raw_array1906 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*
  %_1930 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }* %_array1907, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }* %_array1909, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }** %_1930
  %_raw_array1904 = call i64* @oat_alloc_array(i64 1)
  %_array1905 = bitcast i64* %_raw_array1904 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*
  %_1932 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }* %_array1905, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }* %_array1907, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }** %_1932
  %_raw_array1902 = call i64* @oat_alloc_array(i64 1)
  %_array1903 = bitcast i64* %_raw_array1902 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*
  %_1934 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }* %_array1903, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }* %_array1905, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }** %_1934
  %_raw_array1900 = call i64* @oat_alloc_array(i64 1)
  %_array1901 = bitcast i64* %_raw_array1900 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*
  %_1936 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }* %_array1901, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }* %_array1903, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }** %_1936
  %_raw_array1898 = call i64* @oat_alloc_array(i64 1)
  %_array1899 = bitcast i64* %_raw_array1898 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }*
  %_1938 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }* %_array1899, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }* %_array1901, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }** %_1938
  store { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }* %_array1899, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }** @str
  %_id_str1940 = load { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }** @str
  %_index_pointer1941 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }* %_id_str1940, i32 0, i32 1, i32 0
  %_index_value1942 = load { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }** %_index_pointer1941
  %_index_pointer1943 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }* %_index_value1942, i32 0, i32 1, i32 0
  %_index_value1944 = load { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }** %_index_pointer1943
  %_index_pointer1945 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }* %_index_value1944, i32 0, i32 1, i32 0
  %_index_value1946 = load { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }** %_index_pointer1945
  %_index_pointer1947 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }* %_index_value1946, i32 0, i32 1, i32 0
  %_index_value1948 = load { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }** %_index_pointer1947
  %_index_pointer1949 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }* %_index_value1948, i32 0, i32 1, i32 0
  %_index_value1950 = load { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }** %_index_pointer1949
  %_index_pointer1951 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }* %_index_value1950, i32 0, i32 1, i32 0
  %_index_value1952 = load { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }** %_index_pointer1951
  %_index_pointer1953 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }* %_index_value1952, i32 0, i32 1, i32 0
  %_index_value1954 = load { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }** %_index_pointer1953
  %_index_pointer1955 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }* %_index_value1954, i32 0, i32 1, i32 0
  %_index_value1956 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_index_pointer1955
  %_index_pointer1957 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_index_value1956, i32 0, i32 1, i32 0
  %_index_value1958 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_index_pointer1957
  %_index_pointer1959 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_index_value1958, i32 0, i32 1, i32 0
  %_index_value1960 = load i8*, i8** %_index_pointer1959
  call void @print_string(i8* %_index_value1960)
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
