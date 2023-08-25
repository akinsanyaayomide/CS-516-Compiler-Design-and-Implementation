; generated from: hw4programs/lib14.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2932 = alloca i64
  %_argv2933 = alloca { i64, [0 x i8*] }*
  %_2934 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2932
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2933
  %_raw_array2935 = call i64* @oat_alloc_array(i64 10)
  %_array2936 = bitcast i64* %_raw_array2935 to { i64, [0 x i64] }*
  %_2966 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2936, i32 0, i32 1, i32 9
  store i64 117, i64* %_2964
  %_2963 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2936, i32 0, i32 1, i32 8
  store i64 118, i64* %_2961
  %_2960 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2936, i32 0, i32 1, i32 7
  store i64 119, i64* %_2958
  %_2957 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2936, i32 0, i32 1, i32 6
  store i64 120, i64* %_2955
  %_2954 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2936, i32 0, i32 1, i32 5
  store i64 121, i64* %_2952
  %_2951 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2936, i32 0, i32 1, i32 4
  store i64 122, i64* %_2949
  %_2948 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2936, i32 0, i32 1, i32 3
  store i64 123, i64* %_2946
  %_2945 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2936, i32 0, i32 1, i32 2
  store i64 124, i64* %_2943
  %_2942 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2936, i32 0, i32 1, i32 1
  store i64 125, i64* %_2940
  %_2939 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2936, i32 0, i32 1, i32 0
  store i64 126, i64* %_2937
  store { i64, [0 x i64] }* %_array2936, { i64, [0 x i64] }** %_2934
  %_id_a2967 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2934
  %_2968 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a2967)
  call void @print_string(i8* %_2968)
  ret i64 0
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
