; generated from: hw4programs/run36.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc387 = alloca i64
  %_argv388 = alloca { i64, [0 x i8*] }*
  %_389 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc387
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv388
  %_raw_array390 = call i64* @oat_alloc_array(i64 2)
  %_array391 = bitcast i64* %_raw_array390 to { i64, [0 x i64] }*
  %_394 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array391, i32 0, i32 1, i32 1
  store i64 0, i64* %_394
  %_392 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array391, i32 0, i32 1, i32 0
  store i64 0, i64* %_392
  store { i64, [0 x i64] }* %_array391, { i64, [0 x i64] }** %_389
  %_id_a396 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_389
  %_index_pointer397 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a396, i32 0, i32 1, i32 1
  %_index_value398 = load i64, i64* %_index_pointer397
  ret i64 %_index_value398
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
