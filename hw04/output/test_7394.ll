; generated from: hw4programs/run5.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc927 = alloca i64
  %_argv928 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc927
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv928
  %_raw_array937 = call i64* @oat_alloc_array(i64 2)
  %_array938 = bitcast i64* %_raw_array937 to { i64, [0 x i64] }*
  %_941 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array938, i32 0, i32 1, i32 1
  store i64 4, i64* %_941
  %_939 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array938, i32 0, i32 1, i32 0
  store i64 3, i64* %_939
  %_raw_array931 = call i64* @oat_alloc_array(i64 2)
  %_array932 = bitcast i64* %_raw_array931 to { i64, [0 x i64] }*
  %_935 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array932, i32 0, i32 1, i32 1
  store i64 2, i64* %_935
  %_933 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array932, i32 0, i32 1, i32 0
  store i64 1, i64* %_933
  %_raw_array929 = call i64* @oat_alloc_array(i64 2)
  %_array930 = bitcast i64* %_raw_array929 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_945 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array930, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array938, { i64, [0 x i64] }** %_945
  %_943 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array930, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array932, { i64, [0 x i64] }** %_943
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array930, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_id_arr947 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_index_pointer949 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr947, i32 0, i32 1, i32 1
  %_index_value948 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer949
  %_index_pointer951 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value948, i32 0, i32 1, i32 1
  %_index_value950 = load i64, i64* %_index_pointer951
  ret i64 %_index_value950
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
