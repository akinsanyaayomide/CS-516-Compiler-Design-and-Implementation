; generated from: hw4programs/run19.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1571 = alloca i64
  %_argv1572 = alloca { i64, [0 x i8*] }*
  %_1573 = alloca i64
  %_1574 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1571
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1572
  store i64 999, i64* %_1573
  %_raw_array1575 = call i64* @oat_alloc_array(i64 3)
  %_array1576 = bitcast i64* %_raw_array1575 to { i64, [0 x i64] }*
  %_1581 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1576, i32 0, i32 1, i32 2
  store i64 999, i64* %_1581
  %_1579 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1576, i32 0, i32 1, i32 1
  store i64 100, i64* %_1579
  %_1577 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1576, i32 0, i32 1, i32 0
  store i64 1, i64* %_1577
  store { i64, [0 x i64] }* %_array1576, { i64, [0 x i64] }** %_1574
  %_id_a1583 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1574
  %_index_pointer1584 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a1583, i32 0, i32 1, i32 2
  %_index_value1585 = load i64, i64* %_index_pointer1584
  ret i64 %_index_value1585
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
