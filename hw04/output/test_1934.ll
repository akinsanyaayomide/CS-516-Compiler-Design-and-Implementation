; generated from: hw4programs/lib14.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1868 = alloca i64
  %_argv1869 = alloca { i64, [0 x i8*] }*
  %_1870 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1868
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1869
  %_raw_array1871 = call i64* @oat_alloc_array(i64 10)
  %_array1872 = bitcast i64* %_raw_array1871 to { i64, [0 x i64] }*
  %_1891 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1872, i32 0, i32 1, i32 9
  store i64 117, i64* %_1891
  %_1889 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1872, i32 0, i32 1, i32 8
  store i64 118, i64* %_1889
  %_1887 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1872, i32 0, i32 1, i32 7
  store i64 119, i64* %_1887
  %_1885 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1872, i32 0, i32 1, i32 6
  store i64 120, i64* %_1885
  %_1883 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1872, i32 0, i32 1, i32 5
  store i64 121, i64* %_1883
  %_1881 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1872, i32 0, i32 1, i32 4
  store i64 122, i64* %_1881
  %_1879 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1872, i32 0, i32 1, i32 3
  store i64 123, i64* %_1879
  %_1877 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1872, i32 0, i32 1, i32 2
  store i64 124, i64* %_1877
  %_1875 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1872, i32 0, i32 1, i32 1
  store i64 125, i64* %_1875
  %_1873 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1872, i32 0, i32 1, i32 0
  store i64 126, i64* %_1873
  store { i64, [0 x i64] }* %_array1872, { i64, [0 x i64] }** %_1870
  %_id_a1893 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1870
  %_1894 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a1893)
  call void @print_string(i8* %_1894)
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
