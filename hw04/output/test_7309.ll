; generated from: hw4programs/run47.oat
target triple = "x86_64-apple-macosx10.13.0"
@a = global i64 1

define i64 @f() {
  %_id_a2354 = load i64, i64* @a
  %_bop2355 = add i64 %_id_a2354, 1
  store i64 %_bop2355, i64* @a
  %_id_a2356 = load i64, i64* @a
  ret i64 %_id_a2356
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2335 = alloca i64
  %_argv2336 = alloca { i64, [0 x i8*] }*
  %_b2340 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2335
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2336
  %_2337 = call i64 @f()
  %_raw_array2338 = call i64* @oat_alloc_array(i64 %_2337)
  %_array2339 = bitcast i64* %_raw_array2338 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2339, { i64, [0 x i64] }** %_b2340
  %_id_b2341 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2340
  %_2342 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2341, i32 0, i32 1, i32 0
  store i64 0, i64* %_2342
  %_id_b2343 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2340
  %_2344 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2343, i32 0, i32 1, i32 1
  store i64 1, i64* %_2344
  %_id_a2345 = load i64, i64* @a
  %_id_b2346 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2340
  %_index_pointer2348 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2346, i32 0, i32 1, i32 0
  %_index_value2347 = load i64, i64* %_index_pointer2348
  %_bop2349 = add i64 %_id_a2345, %_index_value2347
  %_id_b2350 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2340
  %_index_pointer2352 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2350, i32 0, i32 1, i32 1
  %_index_value2351 = load i64, i64* %_index_pointer2352
  %_bop2353 = add i64 %_bop2349, %_index_value2351
  ret i64 %_bop2353
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
