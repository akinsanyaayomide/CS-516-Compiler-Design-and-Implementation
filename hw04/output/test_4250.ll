; generated from: hw4programs/run25.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1937 = alloca i64
  %_argv1938 = alloca { i64, [0 x i8*] }*
  %_1939 = alloca { i64, [0 x i64] }*
  %_1951 = alloca i8*
  store i64 %argc, i64* %_argc1937
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1938
  %_raw_array1940 = call i64* @oat_alloc_array(i64 3)
  %_array1941 = bitcast i64* %_raw_array1940 to { i64, [0 x i64] }*
  %_1950 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1941, i32 0, i32 1, i32 2
  store i64 110, i64* %_1948
  %_1947 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1941, i32 0, i32 1, i32 1
  store i64 110, i64* %_1945
  %_1944 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1941, i32 0, i32 1, i32 0
  store i64 110, i64* %_1942
  store { i64, [0 x i64] }* %_array1941, { i64, [0 x i64] }** %_1939
  %_id_a1952 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1939
  %_1953 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a1952)
  store i8* %_1953, i8** %_1951
  %_id_str1954 = load i8*, i8** %_1951
  call void @print_string(i8* %_id_str1954)
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
