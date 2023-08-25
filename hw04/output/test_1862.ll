; generated from: hw4programs/run47.oat
target triple = "x86_64-apple-macosx10.13.0"
@a = global i64 1

define i64 @f() {
  %_id_a2354 = load i64, i64* @a
  %_2355 = add i64 %_id_a2354, 1
  store i64 %_2355, i64* @a
  %_id_a2356 = load i64, i64* @a
  ret i64 %_id_a2356
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2335 = alloca i64
  %_argv2336 = alloca { i64, [0 x i8*] }*
  %_2337 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2335
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2336
  %_2338 = call i64 @f()
  %_raw_array2339 = call i64* @oat_alloc_array(i64 %_2338)
  %_array2340 = bitcast i64* %_raw_array2339 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2340, { i64, [0 x i64] }** %_2337
  %_id_b2341 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2337
  %_2342 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2341, i32 0, i32 1, i32 0
  store i64 0, i64* %_2342
  %_id_b2343 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2337
  %_2344 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2343, i32 0, i32 1, i32 1
  store i64 1, i64* %_2344
  %_id_b2350 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2337
  %_index_pointer2351 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2350, i32 0, i32 1, i32 1
  %_index_value2352 = load i64, i64* %_index_pointer2351
  %_id_b2346 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2337
  %_index_pointer2347 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2346, i32 0, i32 1, i32 0
  %_index_value2348 = load i64, i64* %_index_pointer2347
  %_id_a2345 = load i64, i64* @a
  %_2349 = add i64 %_id_a2345, %_index_value2348
  %_2353 = add i64 %_2349, %_index_value2352
  ret i64 %_2353
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
