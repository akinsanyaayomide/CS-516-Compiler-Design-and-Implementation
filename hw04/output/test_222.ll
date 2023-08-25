; generated from: hw4programs/arrayargs3.oat
target triple = "x86_64-apple-macosx10.13.0"
@x = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x342 = alloca { i64, [0 x i64] }*
  %_y343 = alloca { i64, [0 x i64] }*
  %_b344 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x342
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y343
  store i1 %b, i1* %_b344
  br label %_start348
_start348:
  %_id_b345 = load i1, i1* %_b344
  br i1 %_id_b345, label %_then349, label %_else350
_then349:
  %_id_x346 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x342
  ret { i64, [0 x i64] }* %_id_x346
_else350:
  %_id_y347 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y343
  ret { i64, [0 x i64] }* %_id_y347
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc323 = alloca i64
  %_argv324 = alloca { i64, [0 x i8*] }*
  %_329 = alloca i64
  store i64 %argc, i64* %_argc323
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv324
  %_id_x325 = bitcast { i64, [3 x i64] }* @x to { i64, [0 x i64] }*
  %_id_y326 = bitcast { i64, [3 x i64] }* @y to { i64, [0 x i64] }*
  %_327 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_x325, { i64, [0 x i64] }* %_id_y326, i1 1)
  %_328 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_327, i32 0, i32 1, i32 0
  store i64 17, i64* %_328
  %_id_y335 = bitcast { i64, [3 x i64] }* @y to { i64, [0 x i64] }*
  %_id_x336 = bitcast { i64, [3 x i64] }* @x to { i64, [0 x i64] }*
  %_337 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_y335, { i64, [0 x i64] }* %_id_x336, i1 0)
  %_index_pointer338 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_337, i32 0, i32 1, i32 0
  %_index_value339 = load i64, i64* %_index_pointer338
  %_id_x330 = bitcast { i64, [3 x i64] }* @x to { i64, [0 x i64] }*
  %_id_y331 = bitcast { i64, [3 x i64] }* @y to { i64, [0 x i64] }*
  %_332 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_x330, { i64, [0 x i64] }* %_id_y331, i1 1)
  %_index_pointer333 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_332, i32 0, i32 1, i32 0
  %_index_value334 = load i64, i64* %_index_pointer333
  %_340 = add i64 %_index_value334, %_index_value339
  store i64 %_340, i64* %_329
  %_id_z341 = load i64, i64* %_329
  ret i64 %_id_z341
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
