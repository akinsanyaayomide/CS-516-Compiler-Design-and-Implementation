; generated from: hw4programs/run25.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1288 = alloca i64
  %_argv1289 = alloca { i64, [0 x i8*] }*
  %_1290 = alloca { i64, [0 x i64] }*
  %_1299 = alloca i8*
  store i64 %argc, i64* %_argc1288
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1289
  %_raw_array1291 = call i64* @oat_alloc_array(i64 3)
  %_array1292 = bitcast i64* %_raw_array1291 to { i64, [0 x i64] }*
  %_1297 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1292, i32 0, i32 1, i32 2
  store i64 110, i64* %_1297
  %_1295 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1292, i32 0, i32 1, i32 1
  store i64 110, i64* %_1295
  %_1293 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1292, i32 0, i32 1, i32 0
  store i64 110, i64* %_1293
  store { i64, [0 x i64] }* %_array1292, { i64, [0 x i64] }** %_1290
  %_id_a1300 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1290
  %_1301 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a1300)
  store i8* %_1301, i8** %_1299
  %_id_str1302 = load i8*, i8** %_1299
  call void @print_string(i8* %_id_str1302)
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
