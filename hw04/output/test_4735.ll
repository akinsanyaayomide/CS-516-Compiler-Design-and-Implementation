; generated from: hw4programs/arrayargs3.oat
target triple = "x86_64-apple-macosx10.13.0"
@x = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x354 = alloca { i64, [0 x i64] }*
  %_y355 = alloca { i64, [0 x i64] }*
  %_b356 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x354
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y355
  store i1 %b, i1* %_b356
  br label %_begin_if360
_begin_if360:
  %_id_b357 = load i1, i1* %_b356
  br i1 %_id_b357, label %_then_branch361, label %_else_branch362
_then_branch361:
  %_id_x358 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x354
  ret { i64, [0 x i64] }* %_id_x358
_else_branch362:
  %_id_y359 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y355
  ret { i64, [0 x i64] }* %_id_y359
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc335 = alloca i64
  %_argv336 = alloca { i64, [0 x i8*] }*
  %_341 = alloca i64
  store i64 %argc, i64* %_argc335
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv336
  %_id_x337 = bitcast { i64, [3 x i64] }* @x to { i64, [0 x i64] }*
  %_id_y338 = bitcast { i64, [3 x i64] }* @y to { i64, [0 x i64] }*
  %_339 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_x337, { i64, [0 x i64] }* %_id_y338, i1 1)
  %_340 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_339, i32 0, i32 1, i32 0
  store i64 17, i64* %_340
  %_id_x342 = bitcast { i64, [3 x i64] }* @x to { i64, [0 x i64] }*
  %_id_y343 = bitcast { i64, [3 x i64] }* @y to { i64, [0 x i64] }*
  %_344 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_x342, { i64, [0 x i64] }* %_id_y343, i1 1)
  %_index_pointer346 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_344, i32 0, i32 1, i32 0
  %_index_value345 = load i64, i64* %_index_pointer346
  %_id_y347 = bitcast { i64, [3 x i64] }* @y to { i64, [0 x i64] }*
  %_id_x348 = bitcast { i64, [3 x i64] }* @x to { i64, [0 x i64] }*
  %_349 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_y347, { i64, [0 x i64] }* %_id_x348, i1 0)
  %_index_pointer351 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_349, i32 0, i32 1, i32 0
  %_index_value350 = load i64, i64* %_index_pointer351
  %_bop352 = add i64 %_index_value345, %_index_value350
  store i64 %_bop352, i64* %_341
  %_id_z353 = load i64, i64* %_341
  ret i64 %_id_z353
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
