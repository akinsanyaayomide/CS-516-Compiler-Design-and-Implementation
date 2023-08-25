; generated from: hw4programs/run4.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr = global { i64, [0 x i64] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc678 = alloca i64
  %_argv679 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc678
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv679
  %_raw_array680 = call i64* @oat_alloc_array(i64 2)
  %_array681 = bitcast i64* %_raw_array680 to { i64, [0 x i64] }*
  %_684 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array681, i32 0, i32 1, i32 1
  store i64 42, i64* %_684
  %_682 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array681, i32 0, i32 1, i32 0
  store i64 17, i64* %_682
  store { i64, [0 x i64] }* %_array681, { i64, [0 x i64] }** @arr
  %_id_arr686 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_index_pointer687 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr686, i32 0, i32 1, i32 1
  %_index_value688 = load i64, i64* %_index_pointer687
  ret i64 %_index_value688
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
