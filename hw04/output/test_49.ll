; generated from: hw4programs/run3.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr = global { i64, [0 x i64] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc909 = alloca i64
  %_argv910 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc909
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv910
  %_raw_array911 = call i64* @oat_alloc_array(i64 2)
  %_array912 = bitcast i64* %_raw_array911 to { i64, [0 x i64] }*
  %_915 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array912, i32 0, i32 1, i32 1
  store i64 2, i64* %_915
  %_913 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array912, i32 0, i32 1, i32 0
  store i64 1, i64* %_913
  store { i64, [0 x i64] }* %_array912, { i64, [0 x i64] }** @arr
  %_id_arr917 = bitcast { i64, [0 x i64] }* @arr to { i64, [0 x i64] }*
  %_index_pointer918 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr917, i32 0, i32 1, i32 1
  %_index_value919 = load i64, i64* %_index_pointer918
  ret i64 %_index_value919
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
