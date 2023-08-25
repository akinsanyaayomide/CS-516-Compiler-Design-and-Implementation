; generated from: hw4programs/arrayargs3.oat
target triple = "x86_64-apple-macosx10.13.0"
@x = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x328 = alloca { i64, [0 x i64] }*
  %_y329 = alloca { i64, [0 x i64] }*
  %_b330 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x328
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y329
  store i1 %b, i1* %_b330
  br label %_start334
_start334:
  %_id_b331 = load i1, i1* %_b330
  br i1 %_id_b331, label %_then335, label %_else336
_then335:
  %_id_x332 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x328
  ret { i64, [0 x i64] }* %_id_x332
_else336:
  %_id_y333 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y329
  ret { i64, [0 x i64] }* %_id_y333
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc309 = alloca i64
  %_argv310 = alloca { i64, [0 x i8*] }*
  %_315 = alloca i64
  store i64 %argc, i64* %_argc309
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv310
  %_id_x311 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @x
  %_id_y312 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @y
  %_313 = call { i64, [0 x i64] }* @f({ i64, [3 x i64] } %_id_x311, { i64, [3 x i64] } %_id_y312, i1 1)
  %_314 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_313, i32 0, i32 1, i32 0
  store i64 17, i64* %_314
  %_id_y321 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @y
  %_id_x322 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @x
  %_323 = call { i64, [0 x i64] }* @f({ i64, [3 x i64] } %_id_y321, { i64, [3 x i64] } %_id_x322, i1 0)
  %_index_pointer324 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_323, i32 0, i32 1, i32 0
  %_index_value325 = load i64, i64* %_index_pointer324
  %_id_x316 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @x
  %_id_y317 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @y
  %_318 = call { i64, [0 x i64] }* @f({ i64, [3 x i64] } %_id_x316, { i64, [3 x i64] } %_id_y317, i1 1)
  %_index_pointer319 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_318, i32 0, i32 1, i32 0
  %_index_value320 = load i64, i64* %_index_pointer319
  %_326 = add i64 %_index_value320, %_index_value325
  store i64 %_326, i64* %_315
  %_id_z327 = load i64, i64* %_315
  ret i64 %_id_z327
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
