; generated from: hw4programs/run6.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc714 = alloca i64
  %_argv715 = alloca { i64, [0 x i8*] }*
  %_716 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc714
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv715
  %_raw_array725 = call i64* @oat_alloc_array(i64 2)
  %_array726 = bitcast i64* %_raw_array725 to { i64, [0 x i64] }*
  %_729 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array726, i32 0, i32 1, i32 1
  store i64 4, i64* %_729
  %_727 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array726, i32 0, i32 1, i32 0
  store i64 3, i64* %_727
  %_raw_array719 = call i64* @oat_alloc_array(i64 2)
  %_array720 = bitcast i64* %_raw_array719 to { i64, [0 x i64] }*
  %_723 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array720, i32 0, i32 1, i32 1
  store i64 2, i64* %_723
  %_721 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array720, i32 0, i32 1, i32 0
  store i64 1, i64* %_721
  %_raw_array717 = call i64* @oat_alloc_array(i64 2)
  %_array718 = bitcast i64* %_raw_array717 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_733 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array718, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array726, { i64, [0 x i64] }** %_733
  %_731 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array718, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array720, { i64, [0 x i64] }** %_731
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array718, { i64, [0 x { i64, [0 x i64] }*] }** %_716
  %_id_arr735 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_716
  %_index_pointer736 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr735, i32 0, i32 1, i32 0
  %_index_value737 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer736
  %_index_pointer738 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value737, i32 0, i32 1, i32 0
  %_index_value739 = load i64, i64* %_index_pointer738
  ret i64 %_index_value739
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
