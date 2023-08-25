; generated from: hw4programs/run48.oat
target triple = "x86_64-apple-macosx10.13.0"
@a = global i64 1

define i64 @f() {
  %_id_a2063 = load i64, i64* @a
  %_bop2064 = add i64 %_id_a2063, 1
  store i64 %_bop2064, i64* @a
  %_id_a2065 = load i64, i64* @a
  ret i64 %_id_a2065
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2042 = alloca i64
  %_argv2043 = alloca { i64, [0 x i8*] }*
  %_2044 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2042
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2043
  %_2045 = call i64 @f()
  %_raw_array2046 = call i64* @oat_alloc_array(i64 %_2045)
  %_array2047 = bitcast i64* %_raw_array2046 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2047, { i64, [0 x i64] }** %_2044
  %_2048 = call i64 @f()
  %_id_b2049 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2044
  %_2050 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2049, i32 0, i32 1, i32 0
  store i64 %_2048, i64* %_2050
  %_2051 = call i64 @f()
  %_id_b2052 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2044
  %_2053 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2052, i32 0, i32 1, i32 1
  store i64 %_2051, i64* %_2053
  %_id_a2054 = load i64, i64* @a
  %_id_b2055 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2044
  %_index_pointer2056 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2055, i32 0, i32 1, i32 0
  %_index_value2057 = load i64, i64* %_index_pointer2056
  %_bop2058 = add i64 %_id_a2054, %_index_value2057
  %_id_b2059 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2044
  %_index_pointer2060 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2059, i32 0, i32 1, i32 1
  %_index_value2061 = load i64, i64* %_index_pointer2060
  %_bop2062 = add i64 %_bop2058, %_index_value2061
  ret i64 %_bop2062
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
