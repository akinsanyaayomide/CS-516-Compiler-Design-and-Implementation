; generated from: hw4programs/lib5.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string2425 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2422 = alloca i64
  %_argv2423 = alloca { i64, [0 x i8*] }*
  %_2424 = alloca i8*
  %_2427 = alloca { i64, [0 x i64] }*
  %_2430 = alloca i64
  %_2431 = alloca i64
  store i64 %argc, i64* %_argc2422
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2423
  %_str2426 = getelementptr [6 x i8], [6 x i8]* @_string2425, i32 0, i32 0
  store i8* %_str2426, i8** %_2424
  %_id_str2428 = load i8*, i8** %_2424
  %_2429 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_str2428)
  store { i64, [0 x i64] }* %_2429, { i64, [0 x i64] }** %_2427
  store i64 0, i64* %_2430
  store i64 0, i64* %_2431
  br label %_start2442
_start2442:
  %_id_i2432 = load i64, i64* %_2431
  %_2433 = icmp slt i64 %_id_i2432, 5
  br i1 %_2433, label %_body2443, label %_else2444
_body2443:
  %_id_arr2435 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2427
  %_id_i2436 = load i64, i64* %_2431
  %_index_pointer2437 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr2435, i32 0, i32 1, i64 %_id_i2436
  %_index_value2438 = load i64, i64* %_index_pointer2437
  %_id_s2434 = load i64, i64* %_2430
  %_2439 = add i64 %_id_s2434, %_index_value2438
  store i64 %_2439, i64* %_2430
  %_id_i2440 = load i64, i64* %_2431
  %_2441 = add i64 %_id_i2440, 1
  store i64 %_2441, i64* %_2431
  br label %_start2442
_else2444:
  %_id_s2445 = load i64, i64* %_2430
  ret i64 %_id_s2445
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
