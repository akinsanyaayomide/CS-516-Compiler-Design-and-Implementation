; generated from: hw4programs/run48.oat
target triple = "x86_64-apple-macosx10.13.0"
@a = global i64 1

define i64 @f() {
  %_id_a2195 = load i64, i64* @a
  %_2196 = add i64 %_id_a2195, 1
  store i64 %_2196, i64* @a
  %_id_a2197 = load i64, i64* @a
  ret i64 %_id_a2197
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2174 = alloca i64
  %_argv2175 = alloca { i64, [0 x i8*] }*
  %_2176 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2174
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2175
  %_2177 = call i64 @f()
  %_raw_array2178 = call i64* @oat_alloc_array(i64 %_2177)
  %_array2179 = bitcast i64* %_raw_array2178 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2179, { i64, [0 x i64] }** %_2176
  %_2180 = call i64 @f()
  %_id_b2181 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2176
  %_2182 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2181, i32 0, i32 1, i32 0
  store i64 %_2180, i64* %_2182
  %_2183 = call i64 @f()
  %_id_b2184 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2176
  %_2185 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2184, i32 0, i32 1, i32 1
  store i64 %_2183, i64* %_2185
  %_id_b2191 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2176
  %_index_pointer2192 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2191, i32 0, i32 1, i32 1
  %_index_value2193 = load i64, i64* %_index_pointer2192
  %_id_b2187 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2176
  %_index_pointer2188 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2187, i32 0, i32 1, i32 0
  %_index_value2189 = load i64, i64* %_index_pointer2188
  %_id_a2186 = load i64, i64* @a
  %_2190 = add i64 %_id_a2186, %_index_value2189
  %_2194 = add i64 %_2190, %_index_value2193
  ret i64 %_2194
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
