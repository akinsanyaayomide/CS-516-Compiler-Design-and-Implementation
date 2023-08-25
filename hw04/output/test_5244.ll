; generated from: hw4programs/arrayargs2.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x309 = alloca { i64, [0 x i64] }*
  %_y310 = alloca { i64, [0 x i64] }*
  %_b311 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x309
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y310
  store i1 %b, i1* %_b311
  br label %_begin_if315
_begin_if315:
  %_id_b312 = load i1, i1* %_b311
  br i1 %_id_b312, label %_then_branch316, label %_else_branch317
_then_branch316:
  %_id_x313 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x309
  ret { i64, [0 x i64] }* %_id_x313
_else_branch317:
  %_id_y314 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y310
  ret { i64, [0 x i64] }* %_id_y314
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc294 = alloca i64
  %_argv295 = alloca { i64, [0 x i8*] }*
  %_x298 = alloca { i64, [0 x i64] }*
  %_y301 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc294
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv295
  %_raw_array296 = call i64* @oat_alloc_array(i64 3)
  %_array297 = bitcast i64* %_raw_array296 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array297, { i64, [0 x i64] }** %_x298
  %_raw_array299 = call i64* @oat_alloc_array(i64 3)
  %_array300 = bitcast i64* %_raw_array299 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array300, { i64, [0 x i64] }** %_y301
  %_id_x302 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x298
  %_id_y303 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y301
  %_304 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_x302, { i64, [0 x i64] }* %_id_y303, i1 1)
  %_305 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_304, i32 0, i32 1, i32 0
  store i64 17, i64* %_305
  %_id_x306 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x298
  %_index_pointer308 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x306, i32 0, i32 1, i32 0
  %_index_value307 = load i64, i64* %_index_pointer308
  ret i64 %_index_value307
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
