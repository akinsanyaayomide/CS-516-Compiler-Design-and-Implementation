; generated from: hw4programs/run36.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc570 = alloca i64
  %_argv571 = alloca { i64, [0 x i8*] }*
  %_a578 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc570
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv571
  %_raw_array572 = call i64* @oat_alloc_array(i64 2)
  %_array573 = bitcast i64* %_raw_array572 to { i64, [0 x i64] }*
  %_576 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array573, i32 0, i32 1, i32 1
  store i64 0, i64* %_576
  %_574 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array573, i32 0, i32 1, i32 0
  store i64 0, i64* %_574
  store { i64, [0 x i64] }* %_array573, { i64, [0 x i64] }** %_a578
  %_id_a579 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a578
  %_index_pointer581 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a579, i32 0, i32 1, i32 1
  %_index_value580 = load i64, i64* %_index_pointer581
  ret i64 %_index_value580
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
