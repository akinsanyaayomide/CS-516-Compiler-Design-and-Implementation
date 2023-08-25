; generated from: hw4programs/run53.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2066 = alloca i64
  %_argv2067 = alloca { i64, [0 x i8*] }*
  %_2068 = alloca i8*
  store i64 %argc, i64* %_argc2066
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2067
  %_raw_array2069 = call i64* @oat_alloc_array(i64 3)
  %_array2070 = bitcast i64* %_raw_array2069 to { i64, [0 x i64] }*
  %_2075 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2070, i32 0, i32 1, i32 2
  store i64 110, i64* %_2075
  %_2073 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2070, i32 0, i32 1, i32 1
  store i64 110, i64* %_2073
  %_2071 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2070, i32 0, i32 1, i32 0
  store i64 110, i64* %_2071
  %_2077 = call i8* @string_of_array({ i64, [0 x i64] }* %_array2070)
  store i8* %_2077, i8** %_2068
  %_id_str2078 = load i8*, i8** %_2068
  call void @print_string(i8* %_id_str2078)
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
