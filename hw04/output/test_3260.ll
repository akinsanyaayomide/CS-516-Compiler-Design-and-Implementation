; generated from: hw4programs/run22.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string1332 = global [4 x i8] c"def\00"
@_string1330 = global [4 x i8] c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1325 = alloca i64
  %_argv1326 = alloca { i64, [0 x i8*] }*
  %_1327 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc1325
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1326
  %_string11333 = getelementptr [4 x i8], [4 x i8]* @_string1332, i32 0, i32 0
  %_string11331 = getelementptr [4 x i8], [4 x i8]* @_string1330, i32 0, i32 0
  %_raw_array1328 = call i64* @oat_alloc_array(i64 2)
  %_array1329 = bitcast i64* %_raw_array1328 to { i64, [0 x i8*] }*
  %_1336 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1329, i32 0, i32 1, i32 1
  store i8* %_string11333, i8** %_1336
  %_1334 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1329, i32 0, i32 1, i32 0
  store i8* %_string11331, i8** %_1334
  store { i64, [0 x i8*] }* %_array1329, { i64, [0 x i8*] }** %_1327
  %_id_strs1338 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_1327
  %_index_pointer1339 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_id_strs1338, i32 0, i32 1, i32 0
  %_index_value1340 = load i8*, i8** %_index_pointer1339
  call void @print_string(i8* %_index_value1340)
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
