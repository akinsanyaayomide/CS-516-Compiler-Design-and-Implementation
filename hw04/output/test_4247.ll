; generated from: hw4programs/run22.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string1879 = global [4 x i8] c"def\00"
@_string1877 = global [4 x i8] c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1872 = alloca i64
  %_argv1873 = alloca { i64, [0 x i8*] }*
  %_1874 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc1872
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1873
  %_string11880 = getelementptr [4 x i8], [4 x i8]* @_string1879, i32 0, i32 0
  %_string11878 = getelementptr [4 x i8], [4 x i8]* @_string1877, i32 0, i32 0
  %_raw_array1875 = call i64* @oat_alloc_array(i64 2)
  %_array1876 = bitcast i64* %_raw_array1875 to { i64, [0 x i8*] }*
  %_1886 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1876, i32 0, i32 1, i32 1
  store i8* %_string11880, i8** %_1884
  %_1883 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1876, i32 0, i32 1, i32 0
  store i8* %_string11878, i8** %_1881
  store { i64, [0 x i8*] }* %_array1876, { i64, [0 x i8*] }** %_1874
  %_id_strs1887 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_1874
  %_index_pointer1889 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_id_strs1887, i32 0, i32 1, i32 0
  %_index_value1888 = load i8*, i8** %_index_pointer1889
  call void @print_string(i8* %_index_value1888)
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
