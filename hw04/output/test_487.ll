; generated from: hw4programs/lib4.oat
target triple = "x86_64-apple-macosx10.13.0"
@str = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2399 = alloca i64
  %_argv2400 = alloca { i64, [0 x i8*] }*
  %_2401 = alloca { i64, [0 x i64] }*
  %_2404 = alloca i64
  %_2405 = alloca i64
  store i64 %argc, i64* %_argc2399
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2400
  %_id_str2402 = bitcast [6 x i8]* @str to i8*
  %_2403 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_str2402)
  store { i64, [0 x i64] }* %_2403, { i64, [0 x i64] }** %_2401
  store i64 0, i64* %_2404
  store i64 0, i64* %_2405
  br label %_start2416
_start2416:
  %_id_i2406 = load i64, i64* %_2405
  %_2407 = icmp slt i64 %_id_i2406, 5
  br i1 %_2407, label %_body2417, label %_else2418
_body2417:
  %_id_arr2409 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2401
  %_id_i2410 = load i64, i64* %_2405
  %_index_pointer2411 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr2409, i32 0, i32 1, i64 %_id_i2410
  %_index_value2412 = load i64, i64* %_index_pointer2411
  %_id_s2408 = load i64, i64* %_2404
  %_2413 = add i64 %_id_s2408, %_index_value2412
  store i64 %_2413, i64* %_2404
  %_id_i2414 = load i64, i64* %_2405
  %_2415 = add i64 %_id_i2414, 1
  store i64 %_2415, i64* %_2405
  br label %_start2416
_else2418:
  %_id_s2419 = load i64, i64* %_2404
  call void @print_int(i64 %_id_s2419)
  %_id_s2421 = load i64, i64* %_2404
  ret i64 %_id_s2421
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
