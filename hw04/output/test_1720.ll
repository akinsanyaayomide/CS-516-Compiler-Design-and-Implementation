; generated from: hw4programs/run37.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc582 = alloca i64
  %_argv583 = alloca { i64, [0 x i8*] }*
  %_584 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc582
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv583
  %_raw_array593 = call i64* @oat_alloc_array(i64 2)
  %_array594 = bitcast i64* %_raw_array593 to { i64, [0 x i64] }*
  %_597 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array594, i32 0, i32 1, i32 1
  store i64 4, i64* %_597
  %_595 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array594, i32 0, i32 1, i32 0
  store i64 3, i64* %_595
  %_raw_array587 = call i64* @oat_alloc_array(i64 2)
  %_array588 = bitcast i64* %_raw_array587 to { i64, [0 x i64] }*
  %_591 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array588, i32 0, i32 1, i32 1
  store i64 2, i64* %_591
  %_589 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array588, i32 0, i32 1, i32 0
  store i64 1, i64* %_589
  %_raw_array585 = call i64* @oat_alloc_array(i64 2)
  %_array586 = bitcast i64* %_raw_array585 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_601 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array586, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array594, { i64, [0 x i64] }** %_601
  %_599 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array586, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array588, { i64, [0 x i64] }** %_599
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array586, { i64, [0 x { i64, [0 x i64] }*] }** %_584
  %_id_a603 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_584
  %_index_pointer604 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a603, i32 0, i32 1, i32 0
  %_index_value605 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer604
  %_index_pointer606 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value605, i32 0, i32 1, i32 1
  %_index_value607 = load i64, i64* %_index_pointer606
  ret i64 %_index_value607
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
