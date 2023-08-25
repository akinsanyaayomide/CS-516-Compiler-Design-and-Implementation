; generated from: hw4programs/lib14.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2576 = alloca i64
  %_argv2577 = alloca { i64, [0 x i8*] }*
  %_a2600 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2576
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2577
  %_raw_array2578 = call i64* @oat_alloc_array(i64 10)
  %_array2579 = bitcast i64* %_raw_array2578 to { i64, [0 x i64] }*
  %_2598 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2579, i32 0, i32 1, i32 9
  store i64 117, i64* %_2598
  %_2596 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2579, i32 0, i32 1, i32 8
  store i64 118, i64* %_2596
  %_2594 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2579, i32 0, i32 1, i32 7
  store i64 119, i64* %_2594
  %_2592 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2579, i32 0, i32 1, i32 6
  store i64 120, i64* %_2592
  %_2590 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2579, i32 0, i32 1, i32 5
  store i64 121, i64* %_2590
  %_2588 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2579, i32 0, i32 1, i32 4
  store i64 122, i64* %_2588
  %_2586 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2579, i32 0, i32 1, i32 3
  store i64 123, i64* %_2586
  %_2584 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2579, i32 0, i32 1, i32 2
  store i64 124, i64* %_2584
  %_2582 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2579, i32 0, i32 1, i32 1
  store i64 125, i64* %_2582
  %_2580 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2579, i32 0, i32 1, i32 0
  store i64 126, i64* %_2580
  store { i64, [0 x i64] }* %_array2579, { i64, [0 x i64] }** %_a2600
  %_id_a2601 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2600
  %_2602 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a2601)
  call void @print_string(i8* %_2602)
  ret i64 0
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
