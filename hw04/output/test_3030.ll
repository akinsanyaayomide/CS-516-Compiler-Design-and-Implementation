; generated from: hw4programs/run47.oat
target triple = "x86_64-apple-macosx10.13.0"
@a = global i64 1

define i64 @f() {
  %_id_a2156 = load i64, i64* @a
  %_2157 = add i64 %_id_a2156, 1
  store i64 %_2157, i64* @a
  %_id_a2158 = load i64, i64* @a
  ret i64 %_id_a2158
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2137 = alloca i64
  %_argv2138 = alloca { i64, [0 x i8*] }*
  %_2139 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2137
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2138
  %_2140 = call i64 @f()
  %_raw_array2141 = call i64* @oat_alloc_array(i64 %_2140)
  %_array2142 = bitcast i64* %_raw_array2141 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2142, { i64, [0 x i64] }** %_2139
  %_id_b2143 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2139
  %_2144 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2143, i32 0, i32 1, i32 0
  store i64 0, i64* %_2144
  %_id_b2145 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2139
  %_2146 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2145, i32 0, i32 1, i32 1
  store i64 1, i64* %_2146
  %_id_b2152 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2139
  %_index_pointer2153 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2152, i32 0, i32 1, i32 1
  %_index_value2154 = load i64, i64* %_index_pointer2153
  %_id_b2148 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2139
  %_index_pointer2149 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2148, i32 0, i32 1, i32 0
  %_index_value2150 = load i64, i64* %_index_pointer2149
  %_id_a2147 = load i64, i64* @a
  %_2151 = add i64 %_id_a2147, %_index_value2150
  %_2155 = add i64 %_2151, %_index_value2154
  ret i64 %_2155
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
