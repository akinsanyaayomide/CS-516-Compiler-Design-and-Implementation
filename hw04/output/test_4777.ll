; generated from: hw4programs/run22.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string2286 = global [4 x i8] c"def\00"
@_string2284 = global [4 x i8] c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2279 = alloca i64
  %_argv2280 = alloca { i64, [0 x i8*] }*
  %_2281 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc2279
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2280
  %_string12287 = getelementptr [4 x i8], [4 x i8]* @_string2286, i32 0, i32 0
  %_string12285 = getelementptr [4 x i8], [4 x i8]* @_string2284, i32 0, i32 0
  %_raw_array2282 = call i64* @oat_alloc_array(i64 2)
  %_array2283 = bitcast i64* %_raw_array2282 to { i64, [0 x i8*] }*
  %_2294 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2283, i32 0, i32 1, i32 1
  store i8* %_string12291, i8** %_2294
  %_2292 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2283, i32 0, i32 1, i32 0
  store i8* %_string12289, i8** %_2292
  store { i64, [0 x i8*] }* %_array2283, { i64, [0 x i8*] }** %_2281
  %_id_strs2296 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_2281
  %_index_pointer2298 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_id_strs2296, i32 0, i32 1, i32 0
  %_index_value2297 = load i8*, i8** %_index_pointer2298
  call void @print_string(i8* %_index_value2297)
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
