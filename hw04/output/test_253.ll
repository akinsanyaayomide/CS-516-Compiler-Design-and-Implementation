; generated from: hw4programs/run7.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc982 = alloca i64
  %_argv983 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc982
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv983
  %_raw_array1020 = call i64* @oat_alloc_array(i64 2)
  %_array1021 = bitcast i64* %_raw_array1020 to { i64, [0 x i64] }*
  %_1024 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1021, i32 0, i32 1, i32 1
  store i64 40, i64* %_1024
  %_1022 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1021, i32 0, i32 1, i32 0
  store i64 30, i64* %_1022
  %_raw_array1014 = call i64* @oat_alloc_array(i64 2)
  %_array1015 = bitcast i64* %_raw_array1014 to { i64, [0 x i64] }*
  %_1018 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1015, i32 0, i32 1, i32 1
  store i64 20, i64* %_1018
  %_1016 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1015, i32 0, i32 1, i32 0
  store i64 10, i64* %_1016
  %_raw_array1012 = call i64* @oat_alloc_array(i64 2)
  %_array1013 = bitcast i64* %_raw_array1012 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1028 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1013, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1021, { i64, [0 x i64] }** %_1028
  %_1026 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1013, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1015, { i64, [0 x i64] }** %_1026
  %_raw_array1006 = call i64* @oat_alloc_array(i64 1)
  %_array1007 = bitcast i64* %_raw_array1006 to { i64, [0 x i64] }*
  %_1008 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1007, i32 0, i32 1, i32 0
  store i64 5, i64* %_1008
  %_raw_array1004 = call i64* @oat_alloc_array(i64 1)
  %_array1005 = bitcast i64* %_raw_array1004 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1010 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1005, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1007, { i64, [0 x i64] }** %_1010
  %_raw_array994 = call i64* @oat_alloc_array(i64 2)
  %_array995 = bitcast i64* %_raw_array994 to { i64, [0 x i64] }*
  %_998 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array995, i32 0, i32 1, i32 1
  store i64 4, i64* %_998
  %_996 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array995, i32 0, i32 1, i32 0
  store i64 3, i64* %_996
  %_raw_array988 = call i64* @oat_alloc_array(i64 2)
  %_array989 = bitcast i64* %_raw_array988 to { i64, [0 x i64] }*
  %_992 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array989, i32 0, i32 1, i32 1
  store i64 2, i64* %_992
  %_990 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array989, i32 0, i32 1, i32 0
  store i64 1, i64* %_990
  %_raw_array986 = call i64* @oat_alloc_array(i64 2)
  %_array987 = bitcast i64* %_raw_array986 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1002 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array987, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array995, { i64, [0 x i64] }** %_1002
  %_1000 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array987, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array989, { i64, [0 x i64] }** %_1000
  %_raw_array984 = call i64* @oat_alloc_array(i64 3)
  %_array985 = bitcast i64* %_raw_array984 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_1034 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array985, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1013, { i64, [0 x { i64, [0 x i64] }*] }** %_1034
  %_1032 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array985, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1005, { i64, [0 x { i64, [0 x i64] }*] }** %_1032
  %_1030 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array985, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array987, { i64, [0 x { i64, [0 x i64] }*] }** %_1030
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array985, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_id_arr1036 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_index_pointer1037 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_id_arr1036, i32 0, i32 1, i32 2
  %_index_value1038 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_index_pointer1037
  %_index_pointer1039 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_index_value1038, i32 0, i32 1, i32 0
  %_index_value1040 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1039
  %_index_pointer1041 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1040, i32 0, i32 1, i32 1
  %_index_value1042 = load i64, i64* %_index_pointer1041
  ret i64 %_index_value1042
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
