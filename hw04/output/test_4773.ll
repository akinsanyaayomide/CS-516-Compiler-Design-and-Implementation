; generated from: hw4programs/run16.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2061 = alloca i64
  %_argv2062 = alloca { i64, [0 x i8*] }*
  %_2063 = alloca i64
  %_2064 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_2229 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc2061
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2062
  store i64 10, i64* %_2063
  %_id_x2127 = load i64, i64* %_2063
  %_bop2128 = add i64 %_id_x2127, 2
  %_bop2129 = add i64 %_bop2128, 2
  %_id_x2124 = load i64, i64* %_2063
  %_bop2125 = add i64 %_id_x2124, 2
  %_bop2126 = add i64 %_bop2125, 1
  %_id_x2121 = load i64, i64* %_2063
  %_bop2122 = add i64 %_id_x2121, 2
  %_bop2123 = add i64 %_bop2122, 0
  %_raw_array2119 = call i64* @oat_alloc_array(i64 3)
  %_array2120 = bitcast i64* %_raw_array2119 to { i64, [0 x i64] }*
  %_2143 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2120, i32 0, i32 1, i32 2
  store i64 %_bop2138, i64* %_2143
  %_2141 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2120, i32 0, i32 1, i32 1
  store i64 %_bop2135, i64* %_2141
  %_2139 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2120, i32 0, i32 1, i32 0
  store i64 %_bop2132, i64* %_2139
  %_id_x2101 = load i64, i64* %_2063
  %_bop2102 = add i64 %_id_x2101, 1
  %_bop2103 = add i64 %_bop2102, 2
  %_id_x2098 = load i64, i64* %_2063
  %_bop2099 = add i64 %_id_x2098, 1
  %_bop2100 = add i64 %_bop2099, 1
  %_id_x2095 = load i64, i64* %_2063
  %_bop2096 = add i64 %_id_x2095, 1
  %_bop2097 = add i64 %_bop2096, 0
  %_raw_array2093 = call i64* @oat_alloc_array(i64 3)
  %_array2094 = bitcast i64* %_raw_array2093 to { i64, [0 x i64] }*
  %_2117 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2094, i32 0, i32 1, i32 2
  store i64 %_bop2112, i64* %_2117
  %_2115 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2094, i32 0, i32 1, i32 1
  store i64 %_bop2109, i64* %_2115
  %_2113 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2094, i32 0, i32 1, i32 0
  store i64 %_bop2106, i64* %_2113
  %_id_x2075 = load i64, i64* %_2063
  %_bop2076 = add i64 %_id_x2075, 0
  %_bop2077 = add i64 %_bop2076, 2
  %_id_x2072 = load i64, i64* %_2063
  %_bop2073 = add i64 %_id_x2072, 0
  %_bop2074 = add i64 %_bop2073, 1
  %_id_x2069 = load i64, i64* %_2063
  %_bop2070 = add i64 %_id_x2069, 0
  %_bop2071 = add i64 %_bop2070, 0
  %_raw_array2067 = call i64* @oat_alloc_array(i64 3)
  %_array2068 = bitcast i64* %_raw_array2067 to { i64, [0 x i64] }*
  %_2091 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2068, i32 0, i32 1, i32 2
  store i64 %_bop2086, i64* %_2091
  %_2089 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2068, i32 0, i32 1, i32 1
  store i64 %_bop2083, i64* %_2089
  %_2087 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2068, i32 0, i32 1, i32 0
  store i64 %_bop2080, i64* %_2087
  %_raw_array2065 = call i64* @oat_alloc_array(i64 3)
  %_array2066 = bitcast i64* %_raw_array2065 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_2227 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array2066, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array2198, { i64, [0 x i64] }** %_2227
  %_2225 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array2066, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array2172, { i64, [0 x i64] }** %_2225
  %_2223 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array2066, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array2146, { i64, [0 x i64] }** %_2223
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array2066, { i64, [0 x { i64, [0 x i64] }*] }** %_2064
  %_id_a2230 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_2064
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2230, { i64, [0 x { i64, [0 x i64] }*] }** %_2229
  %_id_b2231 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_2229
  %_index_pointer2233 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_b2231, i32 0, i32 1, i32 2
  %_index_value2232 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer2233
  %_index_pointer2235 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value2232, i32 0, i32 1, i32 1
  %_index_value2234 = load i64, i64* %_index_pointer2235
  ret i64 %_index_value2234
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
