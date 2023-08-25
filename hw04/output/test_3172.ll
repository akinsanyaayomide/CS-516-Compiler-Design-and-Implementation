; generated from: hw4programs/run33.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc280 = alloca i64
  %_argv281 = alloca { i64, [0 x i8*] }*
  %_282 = alloca { i64, [0 x i1] }*
  %_289 = alloca i64
  store i64 %argc, i64* %_argc280
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv281
  %_raw_array283 = call i64* @oat_alloc_array(i64 2)
  %_array284 = bitcast i64* %_raw_array283 to { i64, [0 x i1] }*
  %_287 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array284, i32 0, i32 1, i32 1
  store i1 0, i1* %_287
  %_285 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array284, i32 0, i32 1, i32 0
  store i1 1, i1* %_285
  store { i64, [0 x i1] }* %_array284, { i64, [0 x i1] }** %_282
  store i64 0, i64* %_289
  br label %_begin_if293
_begin_if293:
  %_id_b290 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_282
  %_index_pointer291 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_b290, i32 0, i32 1, i32 0
  %_index_value292 = load i1, i1* %_index_pointer291
  br i1 %_index_value292, label %_then_branch294, label %_else_branch295
_then_branch294:
  store i64 1, i64* %_289
  br label %_end_if296
_else_branch295:
  br label %_end_if296
_end_if296:
  %_id_i297 = load i64, i64* %_289
  ret i64 %_id_i297
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
