; generated from: hw4programs/arrayargs3.oat
target triple = "x86_64-apple-macosx10.13.0"
@x = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x338 = alloca { i64, [0 x i64] }*
  %_y339 = alloca { i64, [0 x i64] }*
  %_b340 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x338
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y339
  store i1 %b, i1* %_b340
  br label %_begin_if347
_begin_if347:
  %_id_b341 = load i1, i1* %_b340
  br i1 %_id_b341, label %_then_branch346, label %_else_branch345
_then_branch346:
  %_id_x343 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x338
  ret { i64, [0 x i64] }* %_id_x343
_else_branch345:
  %_id_y342 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y339
  ret { i64, [0 x i64] }* %_id_y342
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc319 = alloca i64
  %_argv320 = alloca { i64, [0 x i8*] }*
  %_z336 = alloca i64
  store i64 %argc, i64* %_argc319
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv320
  %_id_x321 = bitcast { i64, [3 x i64] }* @x to { i64, [0 x i64] }*
  %_id_y322 = bitcast { i64, [3 x i64] }* @y to { i64, [0 x i64] }*
  %_323 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_x321, { i64, [0 x i64] }* %_id_y322, i1 1)
  %_324 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_323, i32 0, i32 1, i32 0
  store i64 17, i64* %_324
  %_id_x325 = bitcast { i64, [3 x i64] }* @x to { i64, [0 x i64] }*
  %_id_y326 = bitcast { i64, [3 x i64] }* @y to { i64, [0 x i64] }*
  %_327 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_x325, { i64, [0 x i64] }* %_id_y326, i1 1)
  %_index_pointer329 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_327, i32 0, i32 1, i32 0
  %_index_value328 = load i64, i64* %_index_pointer329
  %_id_y330 = bitcast { i64, [3 x i64] }* @y to { i64, [0 x i64] }*
  %_id_x331 = bitcast { i64, [3 x i64] }* @x to { i64, [0 x i64] }*
  %_332 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_y330, { i64, [0 x i64] }* %_id_x331, i1 0)
  %_index_pointer334 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_332, i32 0, i32 1, i32 0
  %_index_value333 = load i64, i64* %_index_pointer334
  %_bop335 = add i64 %_index_value328, %_index_value333
  store i64 %_bop335, i64* %_z336
  %_id_z337 = load i64, i64* %_z336
  ret i64 %_id_z337
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
