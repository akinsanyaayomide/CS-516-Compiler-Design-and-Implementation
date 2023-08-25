; generated from: hw4programs/lib14.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2174 = alloca i64
  %_argv2175 = alloca { i64, [0 x i8*] }*
  %_2176 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2174
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2175
  %_raw_array2177 = call i64* @oat_alloc_array(i64 10)
  %_array2178 = bitcast i64* %_raw_array2177 to { i64, [0 x i64] }*
  %_2197 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2178, i32 0, i32 1, i32 9
  store i64 117, i64* %_2197
  %_2195 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2178, i32 0, i32 1, i32 8
  store i64 118, i64* %_2195
  %_2193 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2178, i32 0, i32 1, i32 7
  store i64 119, i64* %_2193
  %_2191 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2178, i32 0, i32 1, i32 6
  store i64 120, i64* %_2191
  %_2189 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2178, i32 0, i32 1, i32 5
  store i64 121, i64* %_2189
  %_2187 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2178, i32 0, i32 1, i32 4
  store i64 122, i64* %_2187
  %_2185 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2178, i32 0, i32 1, i32 3
  store i64 123, i64* %_2185
  %_2183 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2178, i32 0, i32 1, i32 2
  store i64 124, i64* %_2183
  %_2181 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2178, i32 0, i32 1, i32 1
  store i64 125, i64* %_2181
  %_2179 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2178, i32 0, i32 1, i32 0
  store i64 126, i64* %_2179
  store { i64, [0 x i64] }* %_array2178, { i64, [0 x i64] }** %_2176
  %_id_a2199 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2176
  %_2200 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a2199)
  call void @print_string(i8* %_2200)
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
