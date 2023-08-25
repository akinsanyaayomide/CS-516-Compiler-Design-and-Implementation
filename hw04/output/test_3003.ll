; generated from: hw4programs/run36.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc555 = alloca i64
  %_argv556 = alloca { i64, [0 x i8*] }*
  %_557 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc555
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv556
  %_raw_array558 = call i64* @oat_alloc_array(i64 2)
  %_array559 = bitcast i64* %_raw_array558 to { i64, [0 x i64] }*
  %_562 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array559, i32 0, i32 1, i32 1
  store i64 0, i64* %_562
  %_560 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array559, i32 0, i32 1, i32 0
  store i64 0, i64* %_560
  store { i64, [0 x i64] }* %_array559, { i64, [0 x i64] }** %_557
  %_id_a564 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_557
  %_index_pointer565 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a564, i32 0, i32 1, i32 1
  %_index_value566 = load i64, i64* %_index_pointer565
  ret i64 %_index_value566
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
