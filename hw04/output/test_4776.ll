; generated from: hw4programs/run20.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f() {
  ret i64 19
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2265 = alloca i64
  %_argv2266 = alloca { i64, [0 x i8*] }*
  %_2267 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2265
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2266
  %_raw_array2268 = call i64* @oat_alloc_array(i64 3)
  %_array2269 = bitcast i64* %_raw_array2268 to { i64, [0 x i64] }*
  %_2274 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2269, i32 0, i32 1, i32 2
  store i64 19, i64* %_2274
  %_2272 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2269, i32 0, i32 1, i32 1
  store i64 100, i64* %_2272
  %_2270 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2269, i32 0, i32 1, i32 0
  store i64 1, i64* %_2270
  store { i64, [0 x i64] }* %_array2269, { i64, [0 x i64] }** %_2267
  %_id_a2276 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2267
  %_index_pointer2278 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2276, i32 0, i32 1, i32 2
  %_index_value2277 = load i64, i64* %_index_pointer2278
  ret i64 %_index_value2277
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
