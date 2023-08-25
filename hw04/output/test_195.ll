; generated from: hw4programs/josh_joyce_test.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr1 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr2 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }

define i64 @arrcheck({ i64, [0 x i64] }* %ar1, { i64, [0 x i64] }* %ar2, i64 %len) {
  %_ar14354 = alloca { i64, [0 x i64] }*
  %_ar24355 = alloca { i64, [0 x i64] }*
  %_len4356 = alloca i64
  %_4357 = alloca i64
  %_4358 = alloca i64
  store { i64, [0 x i64] }* %ar1, { i64, [0 x i64] }** %_ar14354
  store { i64, [0 x i64] }* %ar2, { i64, [0 x i64] }** %_ar24355
  store i64 %len, i64* %_len4356
  store i64 0, i64* %_4357
  store i64 0, i64* %_4358
  br label %_start4377
_start4377:
  %_id_len4360 = load i64, i64* %_len4356
  %_id_i4359 = load i64, i64* %_4358
  %_4361 = icmp slt i64 %_id_i4359, %_id_len4360
  br i1 %_4361, label %_body4378, label %_else4379
_body4378:
  br label %_start4371
_start4371:
  %_id_ar24366 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar24355
  %_id_i4367 = load i64, i64* %_4358
  %_index_pointer4368 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_ar24366, i32 0, i32 1, i64 %_id_i4367
  %_index_value4369 = load i64, i64* %_index_pointer4368
  %_id_ar14362 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar14354
  %_id_i4363 = load i64, i64* %_4358
  %_index_pointer4364 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_ar14362, i32 0, i32 1, i64 %_id_i4363
  %_index_value4365 = load i64, i64* %_index_pointer4364
  %_4370 = icmp ne i64 %_index_value4365, %_index_value4369
  br i1 %_4370, label %_then4372, label %_else4373
_then4372:
  store i64 1, i64* %_4357
  br label %_post4374
_else4373:
  br label %_post4374
_post4374:
  %_id_i4375 = load i64, i64* %_4358
  %_4376 = add i64 %_id_i4375, 1
  store i64 %_4376, i64* %_4358
  br label %_start4377
_else4379:
  %_id_val4380 = load i64, i64* %_4357
  ret i64 %_id_val4380
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4342 = alloca i64
  %_argv4343 = alloca { i64, [0 x i8*] }*
  %_4344 = alloca i64
  store i64 %argc, i64* %_argc4342
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4343
  store i64 1, i64* %_4344
  br label %_start4349
_start4349:
  %_id_arr14345 = load { i64, [4 x i64] }, { i64, [4 x i64] }* @arr1
  %_id_arr24346 = load { i64, [4 x i64] }, { i64, [4 x i64] }* @arr2
  %_4347 = call i64 @arrcheck({ i64, [4 x i64] } %_id_arr14345, { i64, [4 x i64] } %_id_arr24346, i64 4)
  %_4348 = icmp eq i64 %_4347, 1
  br i1 %_4348, label %_then4350, label %_else4351
_then4350:
  store i64 0, i64* %_4344
  br label %_post4352
_else4351:
  br label %_post4352
_post4352:
  %_id_val4353 = load i64, i64* %_4344
  ret i64 %_id_val4353
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
