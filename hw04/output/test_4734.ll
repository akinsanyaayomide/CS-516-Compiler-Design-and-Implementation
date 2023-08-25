; generated from: hw4programs/arrayargs2.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x325 = alloca { i64, [0 x i64] }*
  %_y326 = alloca { i64, [0 x i64] }*
  %_b327 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x325
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y326
  store i1 %b, i1* %_b327
  br label %_begin_if331
_begin_if331:
  %_id_b328 = load i1, i1* %_b327
  br i1 %_id_b328, label %_then_branch332, label %_else_branch333
_then_branch332:
  %_id_x329 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x325
  ret { i64, [0 x i64] }* %_id_x329
_else_branch333:
  %_id_y330 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y326
  ret { i64, [0 x i64] }* %_id_y330
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc310 = alloca i64
  %_argv311 = alloca { i64, [0 x i8*] }*
  %_312 = alloca { i64, [0 x i64] }*
  %_315 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc310
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv311
  %_raw_array313 = call i64* @oat_alloc_array(i64 3)
  %_array314 = bitcast i64* %_raw_array313 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array314, { i64, [0 x i64] }** %_312
  %_raw_array316 = call i64* @oat_alloc_array(i64 3)
  %_array317 = bitcast i64* %_raw_array316 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array317, { i64, [0 x i64] }** %_315
  %_id_x318 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_312
  %_id_y319 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_315
  %_320 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_x318, { i64, [0 x i64] }* %_id_y319, i1 1)
  %_321 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_320, i32 0, i32 1, i32 0
  store i64 17, i64* %_321
  %_id_x322 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_312
  %_index_pointer324 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x322, i32 0, i32 1, i32 0
  %_index_value323 = load i64, i64* %_index_pointer324
  ret i64 %_index_value323
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
