; generated from: hw4programs/arrayargs1.oat
target triple = "x86_64-apple-macosx10.13.0"
@x = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x276 = alloca { i64, [0 x i64] }*
  %_y277 = alloca { i64, [0 x i64] }*
  %_b278 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x276
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y277
  store i1 %b, i1* %_b278
  %_id_b279 = load i1, i1* %_b278
  br i1 %_id_b279, label %_if282, label %_else283
_if282:
  %_id_x280 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x276
  ret { i64, [0 x i64] }* %_id_x280
_else283:
  %_id_y281 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y277
  ret { i64, [0 x i64] }* %_id_y281
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc267 = alloca i64
  %_argv268 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc267
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv268
  %_id_x269 = bitcast { i64, [3 x i64] }* @x to { i64, [0 x i64] }*
  %_id_y270 = bitcast { i64, [3 x i64] }* @y to { i64, [0 x i64] }*
  %_271 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_x269, { i64, [0 x i64] }* %_id_y270, i1 1)
  %_272 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_271, i32 0, i32 1, i32 0
  store i64 17, i64* %_272
  %_id_x273 = bitcast { i64, [3 x i64] }* @x to { i64, [0 x i64] }*
  %_index_pointer274 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x273, i32 0, i32 1, i32 0
  %_index_value275 = load i64, i64* %_index_pointer274
  ret i64 %_index_value275
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
