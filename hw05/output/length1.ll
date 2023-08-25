; generated from: hw5programs/length1.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc4, { i64, [0 x i8*] }* %_argv1) {
  %_argc5 = alloca i64
  %_argv2 = alloca { i64, [0 x i8*] }*
  %_x19 = alloca { i64, [0 x i64] }*
  store i64 %_argc4, i64* %_argc5
  store { i64, [0 x i8*] }* %_argv1, { i64, [0 x i8*] }** %_argv2
  %_raw_array7 = call i64* @oat_alloc_array(i64 5)
  %_array8 = bitcast i64* %_raw_array7 to { i64, [0 x i64] }*
  %_ind9 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind9
  %_ind11 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind11
  %_ind13 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8, i32 0, i32 1, i32 2
  store i64 5, i64* %_ind13
  %_ind15 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8, i32 0, i32 1, i32 3
  store i64 6, i64* %_ind15
  %_ind17 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8, i32 0, i32 1, i32 4
  store i64 7, i64* %_ind17
  store { i64, [0 x i64] }* %_array8, { i64, [0 x i64] }** %_x19
  %_x21 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x19
  %_pointer22 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x21, i32 0, i32 0
  %lenght = load i64, i64* %_pointer22
  ret i64 %lenght
}


declare i64* @oat_malloc(i64)
declare i64* @oat_alloc_array(i64)
declare void @oat_assert_not_null(i8*)
declare void @oat_assert_array_length(i64*, i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
