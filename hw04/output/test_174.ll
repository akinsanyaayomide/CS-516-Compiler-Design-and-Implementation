; generated from: hw4programs/lib7.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2298 = alloca i64
  %_argv2299 = alloca { i64, [0 x i8*] }*
  %_2300 = alloca { i64, [0 x i64] }*
  %_2313 = alloca i8*
  %_2316 = alloca { i64, [0 x i64] }*
  %_2319 = alloca i64
  %_2320 = alloca i64
  store i64 %argc, i64* %_argc2298
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2299
  %_raw_array2301 = call i64* @oat_alloc_array(i64 5)
  %_array2302 = bitcast i64* %_raw_array2301 to { i64, [0 x i64] }*
  %_2311 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2302, i32 0, i32 1, i32 4
  store i64 115, i64* %_2311
  %_2309 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2302, i32 0, i32 1, i32 3
  store i64 114, i64* %_2309
  %_2307 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2302, i32 0, i32 1, i32 2
  store i64 113, i64* %_2307
  %_2305 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2302, i32 0, i32 1, i32 1
  store i64 112, i64* %_2305
  %_2303 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2302, i32 0, i32 1, i32 0
  store i64 111, i64* %_2303
  store { i64, [0 x i64] }* %_array2302, { i64, [0 x i64] }** %_2300
  %_id_arr12314 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2300
  %_2315 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_arr12314)
  store i8* %_2315, i8** %_2313
  %_id_str2317 = load i8*, i8** %_2313
  %_2318 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_str2317)
  store { i64, [0 x i64] }* %_2318, { i64, [0 x i64] }** %_2316
  store i64 0, i64* %_2319
  store i64 0, i64* %_2320
  br label %_start2331
_start2331:
  %_id_i2321 = load i64, i64* %_2320
  %_2322 = icmp slt i64 %_id_i2321, 5
  br i1 %_2322, label %_body2332, label %_else2333
_body2332:
  %_id_arr22324 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2316
  %_id_i2325 = load i64, i64* %_2320
  %_index_pointer2326 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr22324, i32 0, i32 1, i64 %_id_i2325
  %_index_value2327 = load i64, i64* %_index_pointer2326
  %_id_s2323 = load i64, i64* %_2319
  %_2328 = add i64 %_id_s2323, %_index_value2327
  store i64 %_2328, i64* %_2319
  %_id_i2329 = load i64, i64* %_2320
  %_2330 = add i64 %_id_i2329, 1
  store i64 %_2330, i64* %_2320
  br label %_start2331
_else2333:
  %_id_s2334 = load i64, i64* %_2319
  ret i64 %_id_s2334
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
