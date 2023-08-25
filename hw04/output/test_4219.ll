; generated from: hw4programs/run37.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc630 = alloca i64
  %_argv631 = alloca { i64, [0 x i8*] }*
  %_632 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc630
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv631
  %_raw_array643 = call i64* @oat_alloc_array(i64 2)
  %_array644 = bitcast i64* %_raw_array643 to { i64, [0 x i64] }*
  %_650 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array644, i32 0, i32 1, i32 1
  store i64 4, i64* %_648
  %_647 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array644, i32 0, i32 1, i32 0
  store i64 3, i64* %_645
  %_raw_array635 = call i64* @oat_alloc_array(i64 2)
  %_array636 = bitcast i64* %_raw_array635 to { i64, [0 x i64] }*
  %_642 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array636, i32 0, i32 1, i32 1
  store i64 2, i64* %_640
  %_639 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array636, i32 0, i32 1, i32 0
  store i64 1, i64* %_637
  %_raw_array633 = call i64* @oat_alloc_array(i64 2)
  %_array634 = bitcast i64* %_raw_array633 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_656 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array634, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array644, { i64, [0 x i64] }** %_654
  %_653 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array634, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array636, { i64, [0 x i64] }** %_651
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array634, { i64, [0 x { i64, [0 x i64] }*] }** %_632
  %_id_a657 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_632
  %_index_pointer659 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a657, i32 0, i32 1, i32 0
  %_index_value658 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer659
  %_index_pointer661 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value658, i32 0, i32 1, i32 1
  %_index_value660 = load i64, i64* %_index_pointer661
  ret i64 %_index_value660
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
