; generated from: hw4programs/run6.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc917 = alloca i64
  %_argv918 = alloca { i64, [0 x i8*] }*
  %_919 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc917
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv918
  %_raw_array928 = call i64* @oat_alloc_array(i64 2)
  %_array929 = bitcast i64* %_raw_array928 to { i64, [0 x i64] }*
  %_932 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array929, i32 0, i32 1, i32 1
  store i64 4, i64* %_932
  %_930 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array929, i32 0, i32 1, i32 0
  store i64 3, i64* %_930
  %_raw_array922 = call i64* @oat_alloc_array(i64 2)
  %_array923 = bitcast i64* %_raw_array922 to { i64, [0 x i64] }*
  %_926 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array923, i32 0, i32 1, i32 1
  store i64 2, i64* %_926
  %_924 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array923, i32 0, i32 1, i32 0
  store i64 1, i64* %_924
  %_raw_array920 = call i64* @oat_alloc_array(i64 2)
  %_array921 = bitcast i64* %_raw_array920 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_936 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array921, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array929, { i64, [0 x i64] }** %_936
  %_934 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array921, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array923, { i64, [0 x i64] }** %_934
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array921, { i64, [0 x { i64, [0 x i64] }*] }** %_919
  %_id_arr938 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_919
  %_index_pointer939 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr938, i32 0, i32 1, i32 0
  %_index_value940 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer939
  %_index_pointer941 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value940, i32 0, i32 1, i32 0
  %_index_value942 = load i64, i64* %_index_pointer941
  ret i64 %_index_value942
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
