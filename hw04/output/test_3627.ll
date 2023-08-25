; generated from: hw4programs/lib9.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2525 = alloca i64
  %_argv2526 = alloca { i64, [0 x i8*] }*
  %_2527 = alloca i64
  store i64 %argc, i64* %_argc2525
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2526
  store i64 1, i64* %_2527
  br label %_cond2539
_cond2539:
  %_id_i2528 = load i64, i64* %_2527
  %_id_argc2529 = load i64, i64* %_argc2525
  %_bop2530 = icmp slt i64 %_id_i2528, %_id_argc2529
  br i1 %_bop2530, label %_if2538, label %_merge2540
_if2538:
  %_id_argv2531 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2526
  %_id_i2532 = load i64, i64* %_2527
  %_index_pointer2533 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_id_argv2531, i32 0, i32 1, i64 %_id_i2532
  %_index_value2534 = load i8*, i8** %_index_pointer2533
  call void @print_string(i8* %_index_value2534)
  %_id_i2536 = load i64, i64* %_2527
  %_bop2537 = add i64 %_id_i2536, 1
  store i64 %_bop2537, i64* %_2527
  br label %_cond2539
_merge2540:
  %_id_argc2541 = load i64, i64* %_argc2525
  ret i64 %_id_argc2541
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
