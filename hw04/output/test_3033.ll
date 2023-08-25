; generated from: hw4programs/lib7.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2275 = alloca i64
  %_argv2276 = alloca { i64, [0 x i8*] }*
  %_2277 = alloca { i64, [0 x i64] }*
  %_2290 = alloca i8*
  %_2293 = alloca { i64, [0 x i64] }*
  %_2296 = alloca i64
  %_2297 = alloca i64
  store i64 %argc, i64* %_argc2275
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2276
  %_raw_array2278 = call i64* @oat_alloc_array(i64 5)
  %_array2279 = bitcast i64* %_raw_array2278 to { i64, [0 x i64] }*
  %_2288 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2279, i32 0, i32 1, i32 4
  store i64 115, i64* %_2288
  %_2286 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2279, i32 0, i32 1, i32 3
  store i64 114, i64* %_2286
  %_2284 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2279, i32 0, i32 1, i32 2
  store i64 113, i64* %_2284
  %_2282 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2279, i32 0, i32 1, i32 1
  store i64 112, i64* %_2282
  %_2280 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2279, i32 0, i32 1, i32 0
  store i64 111, i64* %_2280
  store { i64, [0 x i64] }* %_array2279, { i64, [0 x i64] }** %_2277
  %_id_arr12291 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2277
  %_2292 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_arr12291)
  store i8* %_2292, i8** %_2290
  %_id_str2294 = load i8*, i8** %_2290
  %_2295 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_str2294)
  store { i64, [0 x i64] }* %_2295, { i64, [0 x i64] }** %_2293
  store i64 0, i64* %_2296
  store i64 0, i64* %_2297
  br label %_cond2309
_cond2309:
  %_id_i2298 = load i64, i64* %_2297
  %_2299 = icmp slt i64 %_id_i2298, 5
  br i1 %_2299, label %_if2308, label %_merge2310
_if2308:
  %_id_arr22301 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2293
  %_id_i2302 = load i64, i64* %_2297
  %_index_pointer2303 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr22301, i32 0, i32 1, i64 %_id_i2302
  %_index_value2304 = load i64, i64* %_index_pointer2303
  %_id_s2300 = load i64, i64* %_2296
  %_2305 = add i64 %_id_s2300, %_index_value2304
  store i64 %_2305, i64* %_2296
  %_id_i2306 = load i64, i64* %_2297
  %_2307 = add i64 %_id_i2306, 1
  store i64 %_2307, i64* %_2297
  br label %_cond2309
_merge2310:
  %_id_s2311 = load i64, i64* %_2296
  ret i64 %_id_s2311
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
