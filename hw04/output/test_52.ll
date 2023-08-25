; generated from: hw4programs/run6.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc956 = alloca i64
  %_argv957 = alloca { i64, [0 x i8*] }*
  %_958 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc956
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv957
  %_raw_array967 = call i64* @oat_alloc_array(i64 2)
  %_array968 = bitcast i64* %_raw_array967 to { i64, [0 x i64] }*
  %_971 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array968, i32 0, i32 1, i32 1
  store i64 4, i64* %_971
  %_969 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array968, i32 0, i32 1, i32 0
  store i64 3, i64* %_969
  %_raw_array961 = call i64* @oat_alloc_array(i64 2)
  %_array962 = bitcast i64* %_raw_array961 to { i64, [0 x i64] }*
  %_965 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array962, i32 0, i32 1, i32 1
  store i64 2, i64* %_965
  %_963 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array962, i32 0, i32 1, i32 0
  store i64 1, i64* %_963
  %_raw_array959 = call i64* @oat_alloc_array(i64 2)
  %_array960 = bitcast i64* %_raw_array959 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_975 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array960, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array968, { i64, [0 x i64] }** %_975
  %_973 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array960, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array962, { i64, [0 x i64] }** %_973
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array960, { i64, [0 x { i64, [0 x i64] }*] }** %_958
  %_id_arr977 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_958
  %_index_pointer978 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr977, i32 0, i32 1, i32 0
  %_index_value979 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer978
  %_index_pointer980 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value979, i32 0, i32 1, i32 0
  %_index_value981 = load i64, i64* %_index_pointer980
  ret i64 %_index_value981
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
