; generated from: hw4programs/run37.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc582 = alloca i64
  %_argv583 = alloca { i64, [0 x i8*] }*
  %_a602 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc582
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv583
  %_raw_array592 = call i64* @oat_alloc_array(i64 2)
  %_array593 = bitcast i64* %_raw_array592 to { i64, [0 x i64] }*
  %_596 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array593, i32 0, i32 1, i32 1
  store i64 4, i64* %_596
  %_594 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array593, i32 0, i32 1, i32 0
  store i64 3, i64* %_594
  %_raw_array586 = call i64* @oat_alloc_array(i64 2)
  %_array587 = bitcast i64* %_raw_array586 to { i64, [0 x i64] }*
  %_590 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array587, i32 0, i32 1, i32 1
  store i64 2, i64* %_590
  %_588 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array587, i32 0, i32 1, i32 0
  store i64 1, i64* %_588
  %_raw_array584 = call i64* @oat_alloc_array(i64 2)
  %_array585 = bitcast i64* %_raw_array584 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_600 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array585, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array593, { i64, [0 x i64] }** %_600
  %_598 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array585, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array587, { i64, [0 x i64] }** %_598
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array585, { i64, [0 x { i64, [0 x i64] }*] }** %_a602
  %_id_a603 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a602
  %_index_pointer605 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a603, i32 0, i32 1, i32 0
  %_index_value604 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer605
  %_index_pointer607 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value604, i32 0, i32 1, i32 1
  %_index_value606 = load i64, i64* %_index_pointer607
  ret i64 %_index_value606
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
