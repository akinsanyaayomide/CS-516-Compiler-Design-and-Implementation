; generated from: hw4programs/lib6.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2259 = alloca i64
  %_argv2260 = alloca { i64, [0 x i8*] }*
  %_2261 = alloca { i64, [0 x i64] }*
  %_2274 = alloca i8*
  %_2277 = alloca { i64, [0 x i64] }*
  %_2280 = alloca i64
  %_2281 = alloca i64
  store i64 %argc, i64* %_argc2259
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2260
  %_raw_array2262 = call i64* @oat_alloc_array(i64 5)
  %_array2263 = bitcast i64* %_raw_array2262 to { i64, [0 x i64] }*
  %_2272 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2263, i32 0, i32 1, i32 4
  store i64 115, i64* %_2272
  %_2270 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2263, i32 0, i32 1, i32 3
  store i64 114, i64* %_2270
  %_2268 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2263, i32 0, i32 1, i32 2
  store i64 113, i64* %_2268
  %_2266 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2263, i32 0, i32 1, i32 1
  store i64 112, i64* %_2266
  %_2264 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2263, i32 0, i32 1, i32 0
  store i64 111, i64* %_2264
  store { i64, [0 x i64] }* %_array2263, { i64, [0 x i64] }** %_2261
  %_id_arr12275 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2261
  %_2276 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_arr12275)
  store i8* %_2276, i8** %_2274
  %_id_str2278 = load i8*, i8** %_2274
  %_2279 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_str2278)
  store { i64, [0 x i64] }* %_2279, { i64, [0 x i64] }** %_2277
  store i64 0, i64* %_2280
  store i64 0, i64* %_2281
  br label %_start2292
_start2292:
  %_id_i2282 = load i64, i64* %_2281
  %_2283 = icmp slt i64 %_id_i2282, 5
  br i1 %_2283, label %_body2293, label %_else2294
_body2293:
  %_id_arr22285 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2277
  %_id_i2286 = load i64, i64* %_2281
  %_index_pointer2287 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr22285, i32 0, i32 1, i64 %_id_i2286
  %_index_value2288 = load i64, i64* %_index_pointer2287
  %_id_s2284 = load i64, i64* %_2280
  %_2289 = add i64 %_id_s2284, %_index_value2288
  store i64 %_2289, i64* %_2280
  %_id_i2290 = load i64, i64* %_2281
  %_2291 = add i64 %_id_i2290, 1
  store i64 %_2291, i64* %_2281
  br label %_start2292
_else2294:
  %_id_s2295 = load i64, i64* %_2280
  call void @print_int(i64 %_id_s2295)
  %_id_s2297 = load i64, i64* %_2280
  ret i64 %_id_s2297
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
