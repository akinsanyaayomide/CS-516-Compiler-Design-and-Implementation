; generated from: hw4programs/run18.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2236 = alloca i64
  %_argv2237 = alloca { i64, [0 x i8*] }*
  %_2238 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2236
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2237
  %_raw_array2239 = call i64* @oat_alloc_array(i64 3)
  %_array2240 = bitcast i64* %_raw_array2239 to { i64, [0 x i64] }*
  %_2245 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2240, i32 0, i32 1, i32 2
  store i64 999, i64* %_2245
  %_2243 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2240, i32 0, i32 1, i32 1
  store i64 100, i64* %_2243
  %_2241 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2240, i32 0, i32 1, i32 0
  store i64 1, i64* %_2241
  store { i64, [0 x i64] }* %_array2240, { i64, [0 x i64] }** %_2238
  %_id_a2247 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2238
  %_index_pointer2249 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2247, i32 0, i32 1, i32 2
  %_index_value2248 = load i64, i64* %_index_pointer2249
  ret i64 %_index_value2248
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
