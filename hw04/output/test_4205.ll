; generated from: hw4programs/arrayargs3.oat
target triple = "x86_64-apple-macosx10.13.0"
@x = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x350 = alloca { i64, [0 x i64] }*
  %_y351 = alloca { i64, [0 x i64] }*
  %_b352 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x350
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y351
  store i1 %b, i1* %_b352
  br label %_begin_if356
_begin_if356:
  %_id_b353 = load i1, i1* %_b352
  br i1 %_id_b353, label %_then_branch357, label %_else_branch358
_then_branch357:
  %_id_x354 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x350
  ret { i64, [0 x i64] }* %_id_x354
_else_branch358:
  %_id_y355 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y351
  ret { i64, [0 x i64] }* %_id_y355
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc331 = alloca i64
  %_argv332 = alloca { i64, [0 x i8*] }*
  %_337 = alloca i64
  store i64 %argc, i64* %_argc331
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv332
  %_id_x333 = bitcast { i64, [3 x i64] }* @x to { i64, [0 x i64] }*
  %_id_y334 = bitcast { i64, [3 x i64] }* @y to { i64, [0 x i64] }*
  %_335 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_x333, { i64, [0 x i64] }* %_id_y334, i1 1)
  %_336 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_335, i32 0, i32 1, i32 0
  store i64 17, i64* %_336
  %_id_x338 = bitcast { i64, [3 x i64] }* @x to { i64, [0 x i64] }*
  %_id_y339 = bitcast { i64, [3 x i64] }* @y to { i64, [0 x i64] }*
  %_340 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_x338, { i64, [0 x i64] }* %_id_y339, i1 1)
  %_index_pointer342 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_340, i32 0, i32 1, i32 0
  %_index_value341 = load i64, i64* %_index_pointer342
  %_id_y343 = bitcast { i64, [3 x i64] }* @y to { i64, [0 x i64] }*
  %_id_x344 = bitcast { i64, [3 x i64] }* @x to { i64, [0 x i64] }*
  %_345 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_y343, { i64, [0 x i64] }* %_id_x344, i1 0)
  %_index_pointer347 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_345, i32 0, i32 1, i32 0
  %_index_value346 = load i64, i64* %_index_pointer347
  %_bop348 = add i64 %_index_value341, %_index_value346
  store i64 %_bop348, i64* %_337
  %_id_z349 = load i64, i64* %_337
  ret i64 %_id_z349
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
