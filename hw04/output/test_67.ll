; generated from: hw4programs/run25.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1701 = alloca i64
  %_argv1702 = alloca { i64, [0 x i8*] }*
  %_1703 = alloca { i64, [0 x i64] }*
  %_1712 = alloca i8*
  store i64 %argc, i64* %_argc1701
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1702
  %_raw_array1704 = call i64* @oat_alloc_array(i64 3)
  %_array1705 = bitcast i64* %_raw_array1704 to { i64, [0 x i64] }*
  %_1710 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1705, i32 0, i32 1, i32 2
  store i64 110, i64* %_1710
  %_1708 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1705, i32 0, i32 1, i32 1
  store i64 110, i64* %_1708
  %_1706 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1705, i32 0, i32 1, i32 0
  store i64 110, i64* %_1706
  store { i64, [0 x i64] }* %_array1705, { i64, [0 x i64] }** %_1703
  %_id_a1713 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1703
  %_1714 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a1713)
  store i8* %_1714, i8** %_1712
  %_id_str1715 = load i8*, i8** %_1712
  call void @print_string(i8* %_id_str1715)
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
