; generated from: hw4programs/run5.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc931 = alloca i64
  %_argv932 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc931
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv932
  %_raw_array941 = call i64* @oat_alloc_array(i64 2)
  %_array942 = bitcast i64* %_raw_array941 to { i64, [0 x i64] }*
  %_945 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array942, i32 0, i32 1, i32 1
  store i64 4, i64* %_945
  %_943 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array942, i32 0, i32 1, i32 0
  store i64 3, i64* %_943
  %_raw_array935 = call i64* @oat_alloc_array(i64 2)
  %_array936 = bitcast i64* %_raw_array935 to { i64, [0 x i64] }*
  %_939 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array936, i32 0, i32 1, i32 1
  store i64 2, i64* %_939
  %_937 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array936, i32 0, i32 1, i32 0
  store i64 1, i64* %_937
  %_raw_array933 = call i64* @oat_alloc_array(i64 2)
  %_array934 = bitcast i64* %_raw_array933 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_949 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array934, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array942, { i64, [0 x i64] }** %_949
  %_947 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array934, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array936, { i64, [0 x i64] }** %_947
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array934, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_id_arr951 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_index_pointer952 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr951, i32 0, i32 1, i32 1
  %_index_value953 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer952
  %_index_pointer954 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value953, i32 0, i32 1, i32 1
  %_index_value955 = load i64, i64* %_index_pointer954
  ret i64 %_index_value955
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
