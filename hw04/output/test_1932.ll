; generated from: hw4programs/run53.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1743 = alloca i64
  %_argv1744 = alloca { i64, [0 x i8*] }*
  %_1745 = alloca i8*
  store i64 %argc, i64* %_argc1743
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1744
  %_raw_array1746 = call i64* @oat_alloc_array(i64 3)
  %_array1747 = bitcast i64* %_raw_array1746 to { i64, [0 x i64] }*
  %_1752 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1747, i32 0, i32 1, i32 2
  store i64 110, i64* %_1752
  %_1750 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1747, i32 0, i32 1, i32 1
  store i64 110, i64* %_1750
  %_1748 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1747, i32 0, i32 1, i32 0
  store i64 110, i64* %_1748
  %_1754 = call i8* @string_of_array({ i64, [0 x i64] }* %_array1747)
  store i8* %_1754, i8** %_1745
  %_id_str1755 = load i8*, i8** %_1745
  call void @print_string(i8* %_id_str1755)
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
