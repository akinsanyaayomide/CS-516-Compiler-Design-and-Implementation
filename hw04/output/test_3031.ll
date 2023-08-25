; generated from: hw4programs/run48.oat
target triple = "x86_64-apple-macosx10.13.0"
@a = global i64 1

define i64 @f() {
  %_id_a2180 = load i64, i64* @a
  %_2181 = add i64 %_id_a2180, 1
  store i64 %_2181, i64* @a
  %_id_a2182 = load i64, i64* @a
  ret i64 %_id_a2182
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2159 = alloca i64
  %_argv2160 = alloca { i64, [0 x i8*] }*
  %_2161 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2159
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2160
  %_2162 = call i64 @f()
  %_raw_array2163 = call i64* @oat_alloc_array(i64 %_2162)
  %_array2164 = bitcast i64* %_raw_array2163 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2164, { i64, [0 x i64] }** %_2161
  %_2165 = call i64 @f()
  %_id_b2166 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2161
  %_2167 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2166, i32 0, i32 1, i32 0
  store i64 %_2165, i64* %_2167
  %_2168 = call i64 @f()
  %_id_b2169 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2161
  %_2170 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2169, i32 0, i32 1, i32 1
  store i64 %_2168, i64* %_2170
  %_id_b2176 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2161
  %_index_pointer2177 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2176, i32 0, i32 1, i32 1
  %_index_value2178 = load i64, i64* %_index_pointer2177
  %_id_b2172 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2161
  %_index_pointer2173 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2172, i32 0, i32 1, i32 0
  %_index_value2174 = load i64, i64* %_index_pointer2173
  %_id_a2171 = load i64, i64* @a
  %_2175 = add i64 %_id_a2171, %_index_value2174
  %_2179 = add i64 %_2175, %_index_value2178
  ret i64 %_2179
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
