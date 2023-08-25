; generated from: hw4programs/lib5.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string2421 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2418 = alloca i64
  %_argv2419 = alloca { i64, [0 x i8*] }*
  %_2420 = alloca i8*
  %_2423 = alloca { i64, [0 x i64] }*
  %_2426 = alloca i64
  %_2427 = alloca i64
  store i64 %argc, i64* %_argc2418
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2419
  %_string12422 = getelementptr [6 x i8], [6 x i8]* @_string2421, i32 0, i32 0
  store i8* %_string12422, i8** %_2420
  %_id_str2424 = load i8*, i8** %_2420
  %_2425 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_str2424)
  store { i64, [0 x i64] }* %_2425, { i64, [0 x i64] }** %_2423
  store i64 0, i64* %_2426
  store i64 0, i64* %_2427
  br label %_cond2439
_cond2439:
  %_id_i2428 = load i64, i64* %_2427
  %_bop2429 = icmp slt i64 %_id_i2428, 5
  br i1 %_bop2429, label %_if2438, label %_merge2440
_if2438:
  %_id_s2430 = load i64, i64* %_2426
  %_id_arr2431 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2423
  %_id_i2432 = load i64, i64* %_2427
  %_index_pointer2433 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr2431, i32 0, i32 1, i64 %_id_i2432
  %_index_value2434 = load i64, i64* %_index_pointer2433
  %_bop2435 = add i64 %_id_s2430, %_index_value2434
  store i64 %_bop2435, i64* %_2426
  %_id_i2436 = load i64, i64* %_2427
  %_bop2437 = add i64 %_id_i2436, 1
  store i64 %_bop2437, i64* %_2427
  br label %_cond2439
_merge2440:
  %_id_s2441 = load i64, i64* %_2426
  ret i64 %_id_s2441
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
