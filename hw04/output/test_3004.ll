; generated from: hw4programs/run37.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc567 = alloca i64
  %_argv568 = alloca { i64, [0 x i8*] }*
  %_569 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc567
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv568
  %_raw_array578 = call i64* @oat_alloc_array(i64 2)
  %_array579 = bitcast i64* %_raw_array578 to { i64, [0 x i64] }*
  %_582 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array579, i32 0, i32 1, i32 1
  store i64 4, i64* %_582
  %_580 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array579, i32 0, i32 1, i32 0
  store i64 3, i64* %_580
  %_raw_array572 = call i64* @oat_alloc_array(i64 2)
  %_array573 = bitcast i64* %_raw_array572 to { i64, [0 x i64] }*
  %_576 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array573, i32 0, i32 1, i32 1
  store i64 2, i64* %_576
  %_574 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array573, i32 0, i32 1, i32 0
  store i64 1, i64* %_574
  %_raw_array570 = call i64* @oat_alloc_array(i64 2)
  %_array571 = bitcast i64* %_raw_array570 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_586 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array571, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array579, { i64, [0 x i64] }** %_586
  %_584 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array571, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array573, { i64, [0 x i64] }** %_584
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array571, { i64, [0 x { i64, [0 x i64] }*] }** %_569
  %_id_a588 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_569
  %_index_pointer589 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a588, i32 0, i32 1, i32 0
  %_index_value590 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer589
  %_index_pointer591 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value590, i32 0, i32 1, i32 1
  %_index_value592 = load i64, i64* %_index_pointer591
  ret i64 %_index_value592
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
