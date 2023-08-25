; generated from: hw4programs/run6.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc912 = alloca i64
  %_argv913 = alloca { i64, [0 x i8*] }*
  %_914 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc912
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv913
  %_raw_array923 = call i64* @oat_alloc_array(i64 2)
  %_array924 = bitcast i64* %_raw_array923 to { i64, [0 x i64] }*
  %_927 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array924, i32 0, i32 1, i32 1
  store i64 4, i64* %_927
  %_925 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array924, i32 0, i32 1, i32 0
  store i64 3, i64* %_925
  %_raw_array917 = call i64* @oat_alloc_array(i64 2)
  %_array918 = bitcast i64* %_raw_array917 to { i64, [0 x i64] }*
  %_921 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array918, i32 0, i32 1, i32 1
  store i64 2, i64* %_921
  %_919 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array918, i32 0, i32 1, i32 0
  store i64 1, i64* %_919
  %_raw_array915 = call i64* @oat_alloc_array(i64 2)
  %_array916 = bitcast i64* %_raw_array915 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_931 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array916, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array924, { i64, [0 x i64] }** %_931
  %_929 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array916, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array918, { i64, [0 x i64] }** %_929
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array916, { i64, [0 x { i64, [0 x i64] }*] }** %_914
  %_id_arr933 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_914
  %_index_pointer934 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr933, i32 0, i32 1, i32 0
  %_index_value935 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer934
  %_index_pointer936 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value935, i32 0, i32 1, i32 0
  %_index_value937 = load i64, i64* %_index_pointer936
  ret i64 %_index_value937
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
