; generated from: hw4programs/run23.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string2323 = global [4 x i8] c"123\00"
@_string2321 = global [4 x i8] c"789\00"
@_string2309 = global [4 x i8] c"def\00"
@_string2307 = global [4 x i8] c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2300 = alloca i64
  %_argv2301 = alloca { i64, [0 x i8*] }*
  %_2302 = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  store i64 %argc, i64* %_argc2300
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2301
  %_string12324 = getelementptr [4 x i8], [4 x i8]* @_string2323, i32 0, i32 0
  %_string12322 = getelementptr [4 x i8], [4 x i8]* @_string2321, i32 0, i32 0
  %_raw_array2319 = call i64* @oat_alloc_array(i64 2)
  %_array2320 = bitcast i64* %_raw_array2319 to { i64, [0 x i8*] }*
  %_2331 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2320, i32 0, i32 1, i32 1
  store i8* %_string12328, i8** %_2331
  %_2329 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2320, i32 0, i32 1, i32 0
  store i8* %_string12326, i8** %_2329
  %_string12310 = getelementptr [4 x i8], [4 x i8]* @_string2309, i32 0, i32 0
  %_string12308 = getelementptr [4 x i8], [4 x i8]* @_string2307, i32 0, i32 0
  %_raw_array2305 = call i64* @oat_alloc_array(i64 2)
  %_array2306 = bitcast i64* %_raw_array2305 to { i64, [0 x i8*] }*
  %_2317 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2306, i32 0, i32 1, i32 1
  store i8* %_string12314, i8** %_2317
  %_2315 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2306, i32 0, i32 1, i32 0
  store i8* %_string12312, i8** %_2315
  %_raw_array2303 = call i64* @oat_alloc_array(i64 2)
  %_array2304 = bitcast i64* %_raw_array2303 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_2363 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array2304, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array2348, { i64, [0 x i8*] }** %_2363
  %_2361 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array2304, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array2334, { i64, [0 x i8*] }** %_2361
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array2304, { i64, [0 x { i64, [0 x i8*] }*] }** %_2302
  %_id_strs2365 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_2302
  %_index_pointer2367 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_id_strs2365, i32 0, i32 1, i32 1
  %_index_value2366 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_index_pointer2367
  %_index_pointer2369 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_index_value2366, i32 0, i32 1, i32 1
  %_index_value2368 = load i8*, i8** %_index_pointer2369
  call void @print_string(i8* %_index_value2368)
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
