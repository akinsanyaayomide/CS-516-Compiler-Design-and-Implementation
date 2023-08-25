; generated from: hw4programs/run36.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc543 = alloca i64
  %_argv544 = alloca { i64, [0 x i8*] }*
  %_545 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc543
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv544
  %_raw_array546 = call i64* @oat_alloc_array(i64 2)
  %_array547 = bitcast i64* %_raw_array546 to { i64, [0 x i64] }*
  %_550 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array547, i32 0, i32 1, i32 1
  store i64 0, i64* %_550
  %_548 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array547, i32 0, i32 1, i32 0
  store i64 0, i64* %_548
  store { i64, [0 x i64] }* %_array547, { i64, [0 x i64] }** %_545
  %_id_a552 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_545
  %_index_pointer553 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a552, i32 0, i32 1, i32 1
  %_index_value554 = load i64, i64* %_index_pointer553
  ret i64 %_index_value554
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
