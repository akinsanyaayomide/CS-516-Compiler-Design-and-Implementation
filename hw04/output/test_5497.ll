; generated from: hw4programs/run19.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1611 = alloca i64
  %_argv1612 = alloca { i64, [0 x i8*] }*
  %_i1613 = alloca i64
  %_a1622 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1611
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1612
  store i64 999, i64* %_i1613
  %_raw_array1614 = call i64* @oat_alloc_array(i64 3)
  %_array1615 = bitcast i64* %_raw_array1614 to { i64, [0 x i64] }*
  %_1620 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1615, i32 0, i32 1, i32 2
  store i64 999, i64* %_1620
  %_1618 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1615, i32 0, i32 1, i32 1
  store i64 100, i64* %_1618
  %_1616 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1615, i32 0, i32 1, i32 0
  store i64 1, i64* %_1616
  store { i64, [0 x i64] }* %_array1615, { i64, [0 x i64] }** %_a1622
  %_id_a1623 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1622
  %_index_pointer1625 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a1623, i32 0, i32 1, i32 2
  %_index_value1624 = load i64, i64* %_index_pointer1625
  ret i64 %_index_value1624
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
