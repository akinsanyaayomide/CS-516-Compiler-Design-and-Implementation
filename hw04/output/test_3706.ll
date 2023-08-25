; generated from: hw4programs/run7.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc978 = alloca i64
  %_argv979 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc978
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv979
  %_raw_array1016 = call i64* @oat_alloc_array(i64 2)
  %_array1017 = bitcast i64* %_raw_array1016 to { i64, [0 x i64] }*
  %_1020 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1017, i32 0, i32 1, i32 1
  store i64 40, i64* %_1020
  %_1018 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1017, i32 0, i32 1, i32 0
  store i64 30, i64* %_1018
  %_raw_array1010 = call i64* @oat_alloc_array(i64 2)
  %_array1011 = bitcast i64* %_raw_array1010 to { i64, [0 x i64] }*
  %_1014 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1011, i32 0, i32 1, i32 1
  store i64 20, i64* %_1014
  %_1012 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1011, i32 0, i32 1, i32 0
  store i64 10, i64* %_1012
  %_raw_array1008 = call i64* @oat_alloc_array(i64 2)
  %_array1009 = bitcast i64* %_raw_array1008 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1024 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1009, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1017, { i64, [0 x i64] }** %_1024
  %_1022 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1009, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1011, { i64, [0 x i64] }** %_1022
  %_raw_array1002 = call i64* @oat_alloc_array(i64 1)
  %_array1003 = bitcast i64* %_raw_array1002 to { i64, [0 x i64] }*
  %_1004 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1003, i32 0, i32 1, i32 0
  store i64 5, i64* %_1004
  %_raw_array1000 = call i64* @oat_alloc_array(i64 1)
  %_array1001 = bitcast i64* %_raw_array1000 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1006 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1001, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1003, { i64, [0 x i64] }** %_1006
  %_raw_array990 = call i64* @oat_alloc_array(i64 2)
  %_array991 = bitcast i64* %_raw_array990 to { i64, [0 x i64] }*
  %_994 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array991, i32 0, i32 1, i32 1
  store i64 4, i64* %_994
  %_992 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array991, i32 0, i32 1, i32 0
  store i64 3, i64* %_992
  %_raw_array984 = call i64* @oat_alloc_array(i64 2)
  %_array985 = bitcast i64* %_raw_array984 to { i64, [0 x i64] }*
  %_988 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array985, i32 0, i32 1, i32 1
  store i64 2, i64* %_988
  %_986 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array985, i32 0, i32 1, i32 0
  store i64 1, i64* %_986
  %_raw_array982 = call i64* @oat_alloc_array(i64 2)
  %_array983 = bitcast i64* %_raw_array982 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_998 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array983, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array991, { i64, [0 x i64] }** %_998
  %_996 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array983, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array985, { i64, [0 x i64] }** %_996
  %_raw_array980 = call i64* @oat_alloc_array(i64 3)
  %_array981 = bitcast i64* %_raw_array980 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_1030 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array981, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1009, { i64, [0 x { i64, [0 x i64] }*] }** %_1030
  %_1028 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array981, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1001, { i64, [0 x { i64, [0 x i64] }*] }** %_1028
  %_1026 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array981, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array983, { i64, [0 x { i64, [0 x i64] }*] }** %_1026
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array981, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_id_arr1032 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_index_pointer1033 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_id_arr1032, i32 0, i32 1, i32 2
  %_index_value1034 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_index_pointer1033
  %_index_pointer1035 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_index_value1034, i32 0, i32 1, i32 0
  %_index_value1036 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1035
  %_index_pointer1037 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1036, i32 0, i32 1, i32 1
  %_index_value1038 = load i64, i64* %_index_pointer1037
  ret i64 %_index_value1038
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
