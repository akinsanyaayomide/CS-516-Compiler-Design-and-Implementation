; generated from: hw4programs/lib9.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2529 = alloca i64
  %_argv2530 = alloca { i64, [0 x i8*] }*
  %_2531 = alloca i64
  store i64 %argc, i64* %_argc2529
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2530
  store i64 1, i64* %_2531
  br label %_start2542
_start2542:
  %_id_argc2533 = load i64, i64* %_argc2529
  %_id_i2532 = load i64, i64* %_2531
  %_2534 = icmp slt i64 %_id_i2532, %_id_argc2533
  br i1 %_2534, label %_body2543, label %_else2544
_body2543:
  %_id_argv2535 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2530
  %_id_i2536 = load i64, i64* %_2531
  %_index_pointer2537 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_id_argv2535, i32 0, i32 1, i64 %_id_i2536
  %_index_value2538 = load i8*, i8** %_index_pointer2537
  call void @print_string(i8* %_index_value2538)
  %_id_i2540 = load i64, i64* %_2531
  %_2541 = add i64 %_id_i2540, 1
  store i64 %_2541, i64* %_2531
  br label %_start2542
_else2544:
  %_id_argc2545 = load i64, i64* %_argc2529
  ret i64 %_id_argc2545
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
