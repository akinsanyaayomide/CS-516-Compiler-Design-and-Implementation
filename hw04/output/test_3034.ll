; generated from: hw4programs/lib11.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string2326 = global [11 x i8] c"1234967890\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2323 = alloca i64
  %_argv2324 = alloca { i64, [0 x i8*] }*
  %_2325 = alloca { i64, [0 x i64] }*
  %_2329 = alloca i64
  %_2330 = alloca i64
  %_2342 = alloca i64
  store i64 %argc, i64* %_argc2323
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2324
  %_string12327 = getelementptr [11 x i8], [11 x i8]* @_string2326, i32 0, i32 0
  %_2328 = call { i64, [0 x i64] }* @array_of_string(i8* %_string12327)
  store { i64, [0 x i64] }* %_2328, { i64, [0 x i64] }** %_2325
  store i64 0, i64* %_2329
  store i64 0, i64* %_2330
  br label %_cond2340
_cond2340:
  %_id_i2331 = load i64, i64* %_2330
  %_2332 = icmp slt i64 %_id_i2331, 10
  br i1 %_2332, label %_if2339, label %_merge2341
_if2339:
  %_id_i2333 = load i64, i64* %_2330
  %_id_arr2334 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2325
  %_id_i2335 = load i64, i64* %_2330
  %_2336 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr2334, i32 0, i32 1, i64 %_id_i2335
  store i64 %_id_i2333, i64* %_2336
  %_id_i2337 = load i64, i64* %_2330
  %_2338 = add i64 %_id_i2337, 1
  store i64 %_2338, i64* %_2330
  br label %_cond2340
_merge2341:
  store i64 0, i64* %_2342
  br label %_cond2354
_cond2354:
  %_id_i2343 = load i64, i64* %_2342
  %_2344 = icmp slt i64 %_id_i2343, 10
  br i1 %_2344, label %_if2353, label %_merge2355
_if2353:
  %_id_arr2346 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2325
  %_id_i2347 = load i64, i64* %_2342
  %_index_pointer2348 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr2346, i32 0, i32 1, i64 %_id_i2347
  %_index_value2349 = load i64, i64* %_index_pointer2348
  %_id_sum2345 = load i64, i64* %_2329
  %_2350 = add i64 %_id_sum2345, %_index_value2349
  store i64 %_2350, i64* %_2329
  %_id_i2351 = load i64, i64* %_2342
  %_2352 = add i64 %_id_i2351, 1
  store i64 %_2352, i64* %_2342
  br label %_cond2354
_merge2355:
  %_id_sum2356 = load i64, i64* %_2329
  ret i64 %_id_sum2356
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
