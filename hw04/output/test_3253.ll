; generated from: hw4programs/run10.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %arr) {
  %_arr872 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr872
  %_id_arr873 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr872
  ret { i64, [0 x i64] }* %_id_arr873
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc839 = alloca i64
  %_argv840 = alloca { i64, [0 x i8*] }*
  %_841 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_864 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc839
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv840
  %_raw_array852 = call i64* @oat_alloc_array(i64 3)
  %_array853 = bitcast i64* %_raw_array852 to { i64, [0 x i64] }*
  %_858 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array853, i32 0, i32 1, i32 2
  store i64 6, i64* %_858
  %_856 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array853, i32 0, i32 1, i32 1
  store i64 5, i64* %_856
  %_854 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array853, i32 0, i32 1, i32 0
  store i64 4, i64* %_854
  %_raw_array844 = call i64* @oat_alloc_array(i64 3)
  %_array845 = bitcast i64* %_raw_array844 to { i64, [0 x i64] }*
  %_850 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array845, i32 0, i32 1, i32 2
  store i64 3, i64* %_850
  %_848 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array845, i32 0, i32 1, i32 1
  store i64 2, i64* %_848
  %_846 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array845, i32 0, i32 1, i32 0
  store i64 1, i64* %_846
  %_raw_array842 = call i64* @oat_alloc_array(i64 2)
  %_array843 = bitcast i64* %_raw_array842 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_862 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array843, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array853, { i64, [0 x i64] }** %_862
  %_860 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array843, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array845, { i64, [0 x i64] }** %_860
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array843, { i64, [0 x { i64, [0 x i64] }*] }** %_841
  %_id_garr865 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_841
  %_index_pointer866 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_garr865, i32 0, i32 1, i32 1
  %_index_value867 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer866
  %_868 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_index_value867)
  store { i64, [0 x i64] }* %_868, { i64, [0 x i64] }** %_864
  %_id_arr869 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_864
  %_index_pointer870 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr869, i32 0, i32 1, i32 1
  %_index_value871 = load i64, i64* %_index_pointer870
  ret i64 %_index_value871
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
