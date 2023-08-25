; generated from: hw4programs/lib4.oat
target triple = "x86_64-apple-macosx10.13.0"
@str = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2395 = alloca i64
  %_argv2396 = alloca { i64, [0 x i8*] }*
  %_2397 = alloca { i64, [0 x i64] }*
  %_2400 = alloca i64
  %_2401 = alloca i64
  store i64 %argc, i64* %_argc2395
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2396
  %_id_str2398 = bitcast [6 x i8]* @str to i8*
  %_2399 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_str2398)
  store { i64, [0 x i64] }* %_2399, { i64, [0 x i64] }** %_2397
  store i64 0, i64* %_2400
  store i64 0, i64* %_2401
  br label %_cond2413
_cond2413:
  %_id_i2402 = load i64, i64* %_2401
  %_bop2403 = icmp slt i64 %_id_i2402, 5
  br i1 %_bop2403, label %_if2412, label %_merge2414
_if2412:
  %_id_s2404 = load i64, i64* %_2400
  %_id_arr2405 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2397
  %_id_i2406 = load i64, i64* %_2401
  %_index_pointer2407 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr2405, i32 0, i32 1, i64 %_id_i2406
  %_index_value2408 = load i64, i64* %_index_pointer2407
  %_bop2409 = add i64 %_id_s2404, %_index_value2408
  store i64 %_bop2409, i64* %_2400
  %_id_i2410 = load i64, i64* %_2401
  %_bop2411 = add i64 %_id_i2410, 1
  store i64 %_bop2411, i64* %_2401
  br label %_cond2413
_merge2414:
  %_id_s2415 = load i64, i64* %_2400
  call void @print_int(i64 %_id_s2415)
  %_id_s2417 = load i64, i64* %_2400
  ret i64 %_id_s2417
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
