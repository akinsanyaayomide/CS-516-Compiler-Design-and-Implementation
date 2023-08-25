; generated from: hw4programs/run19.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2250 = alloca i64
  %_argv2251 = alloca { i64, [0 x i8*] }*
  %_2252 = alloca i64
  %_2253 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2250
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2251
  store i64 999, i64* %_2252
  %_raw_array2254 = call i64* @oat_alloc_array(i64 3)
  %_array2255 = bitcast i64* %_raw_array2254 to { i64, [0 x i64] }*
  %_2260 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2255, i32 0, i32 1, i32 2
  store i64 999, i64* %_2260
  %_2258 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2255, i32 0, i32 1, i32 1
  store i64 100, i64* %_2258
  %_2256 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2255, i32 0, i32 1, i32 0
  store i64 1, i64* %_2256
  store { i64, [0 x i64] }* %_array2255, { i64, [0 x i64] }** %_2253
  %_id_a2262 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2253
  %_index_pointer2264 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2262, i32 0, i32 1, i32 2
  %_index_value2263 = load i64, i64* %_index_pointer2264
  ret i64 %_index_value2263
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
