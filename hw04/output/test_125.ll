; generated from: hw4programs/arrayargs2.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x299 = alloca { i64, [0 x i64] }*
  %_y300 = alloca { i64, [0 x i64] }*
  %_b301 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x299
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y300
  store i1 %b, i1* %_b301
  br label %_start305
_start305:
  %_id_b302 = load i1, i1* %_b301
  br i1 %_id_b302, label %_then306, label %_else307
_then306:
  %_id_x303 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x299
  ret { i64, [0 x i64] }* %_id_x303
_else307:
  %_id_y304 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y300
  ret { i64, [0 x i64] }* %_id_y304
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc284 = alloca i64
  %_argv285 = alloca { i64, [0 x i8*] }*
  %_286 = alloca { i64, [0 x i64] }*
  %_289 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc284
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv285
  %_raw_array287 = call i64* @oat_alloc_array(i64 3)
  %_array288 = bitcast i64* %_raw_array287 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array288, { i64, [0 x i64] }** %_286
  %_raw_array290 = call i64* @oat_alloc_array(i64 3)
  %_array291 = bitcast i64* %_raw_array290 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array291, { i64, [0 x i64] }** %_289
  %_id_x292 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_286
  %_id_y293 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_289
  %_294 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_x292, { i64, [0 x i64] }* %_id_y293, i1 1)
  %_295 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_294, i32 0, i32 1, i32 0
  store i64 17, i64* %_295
  %_id_x296 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_286
  %_index_pointer297 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x296, i32 0, i32 1, i32 0
  %_index_value298 = load i64, i64* %_index_pointer297
  ret i64 %_index_value298
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
