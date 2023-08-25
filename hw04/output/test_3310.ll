; generated from: hw4programs/run5.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc689 = alloca i64
  %_argv690 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc689
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv690
  %_raw_array699 = call i64* @oat_alloc_array(i64 2)
  %_array700 = bitcast i64* %_raw_array699 to { i64, [0 x i64] }*
  %_703 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array700, i32 0, i32 1, i32 1
  store i64 4, i64* %_703
  %_701 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array700, i32 0, i32 1, i32 0
  store i64 3, i64* %_701
  %_raw_array693 = call i64* @oat_alloc_array(i64 2)
  %_array694 = bitcast i64* %_raw_array693 to { i64, [0 x i64] }*
  %_697 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array694, i32 0, i32 1, i32 1
  store i64 2, i64* %_697
  %_695 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array694, i32 0, i32 1, i32 0
  store i64 1, i64* %_695
  %_raw_array691 = call i64* @oat_alloc_array(i64 2)
  %_array692 = bitcast i64* %_raw_array691 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_707 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array692, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array700, { i64, [0 x i64] }** %_707
  %_705 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array692, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array694, { i64, [0 x i64] }** %_705
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array692, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_id_arr709 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_index_pointer710 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr709, i32 0, i32 1, i32 1
  %_index_value711 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer710
  %_index_pointer712 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value711, i32 0, i32 1, i32 1
  %_index_value713 = load i64, i64* %_index_pointer712
  ret i64 %_index_value713
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
