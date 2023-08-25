; generated from: hw4programs/lib5.oat
target triple = "x86_64-apple-macosx10.13.0"
@_raw_string2239 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2235 = alloca i64
  %_argv2236 = alloca { i64, [0 x i8*] }*
  %_2237 = alloca i8*
  %_2240 = alloca { i64, [0 x i64] }*
  %_2243 = alloca i64
  %_2244 = alloca i64
  store i64 %argc, i64* %_argc2235
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2236
  %_result_id2238 = bitcast [6 x i8]* @_raw_string2239 to i8*
  store i8* %_result_id2238, i8** %_2237
  %_id_str2241 = load i8*, i8** %_2237
  %_2242 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_str2241)
  store { i64, [0 x i64] }* %_2242, { i64, [0 x i64] }** %_2240
  store i64 0, i64* %_2243
  store i64 0, i64* %_2244
  br label %_start2255
_start2255:
  %_id_i2245 = load i64, i64* %_2244
  %_2246 = icmp slt i64 %_id_i2245, 5
  br i1 %_2246, label %_body2256, label %_else2257
_body2256:
  %_id_arr2248 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2240
  %_id_i2249 = load i64, i64* %_2244
  %_index_pointer2250 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr2248, i32 0, i32 1, i64 %_id_i2249
  %_index_value2251 = load i64, i64* %_index_pointer2250
  %_id_s2247 = load i64, i64* %_2243
  %_2252 = add i64 %_id_s2247, %_index_value2251
  store i64 %_2252, i64* %_2243
  %_id_i2253 = load i64, i64* %_2244
  %_2254 = add i64 %_id_i2253, 1
  store i64 %_2254, i64* %_2244
  br label %_start2255
_else2257:
  %_id_s2258 = load i64, i64* %_2243
  ret i64 %_id_s2258
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
