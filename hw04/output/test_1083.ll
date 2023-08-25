; generated from: hw4programs/run36.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc574 = alloca i64
  %_argv575 = alloca { i64, [0 x i8*] }*
  %_576 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc574
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv575
  %_raw_array577 = call i64* @oat_alloc_array(i64 2)
  %_array578 = bitcast i64* %_raw_array577 to { i64, [0 x i64] }*
  %_581 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array578, i32 0, i32 1, i32 1
  store i64 0, i64* %_581
  %_579 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array578, i32 0, i32 1, i32 0
  store i64 0, i64* %_579
  store { i64, [0 x i64] }* %_array578, { i64, [0 x i64] }** %_576
  %_id_a583 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_576
  %_index_pointer584 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a583, i32 0, i32 1, i32 1
  %_index_value585 = load i64, i64* %_index_pointer584
  ret i64 %_index_value585
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
