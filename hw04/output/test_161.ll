; generated from: hw4programs/run19.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1570 = alloca i64
  %_argv1571 = alloca { i64, [0 x i8*] }*
  %_1572 = alloca i64
  %_1573 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1570
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1571
  store i64 999, i64* %_1572
  %_raw_array1574 = call i64* @oat_alloc_array(i64 3)
  %_array1575 = bitcast i64* %_raw_array1574 to { i64, [0 x i64] }*
  %_1580 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1575, i32 0, i32 1, i32 2
  store i64 999, i64* %_1580
  %_1578 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1575, i32 0, i32 1, i32 1
  store i64 100, i64* %_1578
  %_1576 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1575, i32 0, i32 1, i32 0
  store i64 1, i64* %_1576
  store { i64, [0 x i64] }* %_array1575, { i64, [0 x i64] }** %_1573
  %_id_a1582 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1573
  %_index_pointer1583 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a1582, i32 0, i32 1, i32 2
  %_index_value1584 = load i64, i64* %_index_pointer1583
  ret i64 %_index_value1584
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
