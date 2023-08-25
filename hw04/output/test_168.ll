; generated from: hw4programs/run47.oat
target triple = "x86_64-apple-macosx10.13.0"
@a = global i64 1

define i64 @f() {
  %_id_a2171 = load i64, i64* @a
  %_2172 = add i64 %_id_a2171, 1
  store i64 %_2172, i64* @a
  %_id_a2173 = load i64, i64* @a
  ret i64 %_id_a2173
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2152 = alloca i64
  %_argv2153 = alloca { i64, [0 x i8*] }*
  %_2154 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2152
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2153
  %_2155 = call i64 @f()
  %_raw_array2156 = call i64* @oat_alloc_array(i64 %_2155)
  %_array2157 = bitcast i64* %_raw_array2156 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2157, { i64, [0 x i64] }** %_2154
  %_id_b2158 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2154
  %_2159 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2158, i32 0, i32 1, i32 0
  store i64 0, i64* %_2159
  %_id_b2160 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2154
  %_2161 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2160, i32 0, i32 1, i32 1
  store i64 1, i64* %_2161
  %_id_b2167 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2154
  %_index_pointer2168 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2167, i32 0, i32 1, i32 1
  %_index_value2169 = load i64, i64* %_index_pointer2168
  %_id_b2163 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2154
  %_index_pointer2164 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2163, i32 0, i32 1, i32 0
  %_index_value2165 = load i64, i64* %_index_pointer2164
  %_id_a2162 = load i64, i64* @a
  %_2166 = add i64 %_id_a2162, %_index_value2165
  %_2170 = add i64 %_2166, %_index_value2169
  ret i64 %_2170
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
