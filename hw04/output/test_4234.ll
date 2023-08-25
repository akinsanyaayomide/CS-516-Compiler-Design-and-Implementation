; generated from: hw4programs/run5.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1010 = alloca i64
  %_argv1011 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc1010
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1011
  %_raw_array1022 = call i64* @oat_alloc_array(i64 2)
  %_array1023 = bitcast i64* %_raw_array1022 to { i64, [0 x i64] }*
  %_1029 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1023, i32 0, i32 1, i32 1
  store i64 4, i64* %_1027
  %_1026 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1023, i32 0, i32 1, i32 0
  store i64 3, i64* %_1024
  %_raw_array1014 = call i64* @oat_alloc_array(i64 2)
  %_array1015 = bitcast i64* %_raw_array1014 to { i64, [0 x i64] }*
  %_1021 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1015, i32 0, i32 1, i32 1
  store i64 2, i64* %_1019
  %_1018 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1015, i32 0, i32 1, i32 0
  store i64 1, i64* %_1016
  %_raw_array1012 = call i64* @oat_alloc_array(i64 2)
  %_array1013 = bitcast i64* %_raw_array1012 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1035 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1013, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1023, { i64, [0 x i64] }** %_1033
  %_1032 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1013, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1015, { i64, [0 x i64] }** %_1030
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1013, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_id_arr1036 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_index_pointer1038 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr1036, i32 0, i32 1, i32 1
  %_index_value1037 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1038
  %_index_pointer1040 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1037, i32 0, i32 1, i32 1
  %_index_value1039 = load i64, i64* %_index_pointer1040
  ret i64 %_index_value1039
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
