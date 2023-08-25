; generated from: hw4programs/lib4.oat
target triple = "x86_64-apple-macosx10.13.0"
@str = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2212 = alloca i64
  %_argv2213 = alloca { i64, [0 x i8*] }*
  %_2214 = alloca { i64, [0 x i64] }*
  %_2217 = alloca i64
  %_2218 = alloca i64
  store i64 %argc, i64* %_argc2212
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2213
  %_id_str2215 = bitcast [6 x i8]* @str to i8*
  %_2216 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_str2215)
  store { i64, [0 x i64] }* %_2216, { i64, [0 x i64] }** %_2214
  store i64 0, i64* %_2217
  store i64 0, i64* %_2218
  br label %_start2229
_start2229:
  %_id_i2219 = load i64, i64* %_2218
  %_2220 = icmp slt i64 %_id_i2219, 5
  br i1 %_2220, label %_body2230, label %_else2231
_body2230:
  %_id_arr2222 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2214
  %_id_i2223 = load i64, i64* %_2218
  %_index_pointer2224 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr2222, i32 0, i32 1, i64 %_id_i2223
  %_index_value2225 = load i64, i64* %_index_pointer2224
  %_id_s2221 = load i64, i64* %_2217
  %_2226 = add i64 %_id_s2221, %_index_value2225
  store i64 %_2226, i64* %_2217
  %_id_i2227 = load i64, i64* %_2218
  %_2228 = add i64 %_id_i2227, 1
  store i64 %_2228, i64* %_2218
  br label %_start2229
_else2231:
  %_id_s2232 = load i64, i64* %_2217
  call void @print_int(i64 %_id_s2232)
  %_id_s2234 = load i64, i64* %_2217
  ret i64 %_id_s2234
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
