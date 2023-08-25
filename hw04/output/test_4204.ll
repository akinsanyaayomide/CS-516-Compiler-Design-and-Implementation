; generated from: hw4programs/arrayargs2.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x321 = alloca { i64, [0 x i64] }*
  %_y322 = alloca { i64, [0 x i64] }*
  %_b323 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x321
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y322
  store i1 %b, i1* %_b323
  br label %_begin_if327
_begin_if327:
  %_id_b324 = load i1, i1* %_b323
  br i1 %_id_b324, label %_then_branch328, label %_else_branch329
_then_branch328:
  %_id_x325 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x321
  ret { i64, [0 x i64] }* %_id_x325
_else_branch329:
  %_id_y326 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y322
  ret { i64, [0 x i64] }* %_id_y326
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc306 = alloca i64
  %_argv307 = alloca { i64, [0 x i8*] }*
  %_308 = alloca { i64, [0 x i64] }*
  %_311 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc306
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv307
  %_raw_array309 = call i64* @oat_alloc_array(i64 3)
  %_array310 = bitcast i64* %_raw_array309 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array310, { i64, [0 x i64] }** %_308
  %_raw_array312 = call i64* @oat_alloc_array(i64 3)
  %_array313 = bitcast i64* %_raw_array312 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array313, { i64, [0 x i64] }** %_311
  %_id_x314 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_308
  %_id_y315 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_311
  %_316 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_x314, { i64, [0 x i64] }* %_id_y315, i1 1)
  %_317 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_316, i32 0, i32 1, i32 0
  store i64 17, i64* %_317
  %_id_x318 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_308
  %_index_pointer320 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x318, i32 0, i32 1, i32 0
  %_index_value319 = load i64, i64* %_index_pointer320
  ret i64 %_index_value319
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
