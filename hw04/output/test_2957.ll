; generated from: hw4programs/lib5.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string2218 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2215 = alloca i64
  %_argv2216 = alloca { i64, [0 x i8*] }*
  %_2217 = alloca i8*
  %_2220 = alloca { i64, [0 x i64] }*
  %_2223 = alloca i64
  %_2224 = alloca i64
  store i64 %argc, i64* %_argc2215
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2216
  %_string12219 = getelementptr [6 x i8], [6 x i8]* @_string2218, i32 0, i32 0
  store i8* %_string12219, i8** %_2217
  %_id_str2221 = load i8*, i8** %_2217
  %_2222 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_str2221)
  store { i64, [0 x i64] }* %_2222, { i64, [0 x i64] }** %_2220
  store i64 0, i64* %_2223
  store i64 0, i64* %_2224
  br label %_cond2236
_cond2236:
  %_id_i2225 = load i64, i64* %_2224
  %_2226 = icmp slt i64 %_id_i2225, 5
  br i1 %_2226, label %_if2235, label %_merge2237
_if2235:
  %_id_arr2228 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2220
  %_id_i2229 = load i64, i64* %_2224
  %_index_pointer2230 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr2228, i32 0, i32 1, i64 %_id_i2229
  %_index_value2231 = load i64, i64* %_index_pointer2230
  %_id_s2227 = load i64, i64* %_2223
  %_2232 = add i64 %_id_s2227, %_index_value2231
  store i64 %_2232, i64* %_2223
  %_id_i2233 = load i64, i64* %_2224
  %_2234 = add i64 %_id_i2233, 1
  store i64 %_2234, i64* %_2224
  br label %_cond2236
_merge2237:
  %_id_s2238 = load i64, i64* %_2223
  ret i64 %_id_s2238
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
