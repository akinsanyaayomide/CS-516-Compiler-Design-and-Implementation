; generated from: hw4programs/run47.oat
target triple = "x86_64-apple-macosx10.13.0"
@a = global i64 1

define i64 @f() {
  %_id_a2358 = load i64, i64* @a
  %_2359 = add i64 %_id_a2358, 1
  store i64 %_2359, i64* @a
  %_id_a2360 = load i64, i64* @a
  ret i64 %_id_a2360
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2339 = alloca i64
  %_argv2340 = alloca { i64, [0 x i8*] }*
  %_2341 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2339
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2340
  %_2342 = call i64 @f()
  %_raw_array2343 = call i64* @oat_alloc_array(i64 %_2342)
  %_array2344 = bitcast i64* %_raw_array2343 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2344, { i64, [0 x i64] }** %_2341
  %_id_b2345 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2341
  %_2346 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2345, i32 0, i32 1, i32 0
  store i64 0, i64* %_2346
  %_id_b2347 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2341
  %_2348 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2347, i32 0, i32 1, i32 1
  store i64 1, i64* %_2348
  %_id_b2354 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2341
  %_index_pointer2355 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2354, i32 0, i32 1, i32 1
  %_index_value2356 = load i64, i64* %_index_pointer2355
  %_id_b2350 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2341
  %_index_pointer2351 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2350, i32 0, i32 1, i32 0
  %_index_value2352 = load i64, i64* %_index_pointer2351
  %_id_a2349 = load i64, i64* @a
  %_2353 = add i64 %_id_a2349, %_index_value2352
  %_2357 = add i64 %_2353, %_index_value2356
  ret i64 %_2357
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
