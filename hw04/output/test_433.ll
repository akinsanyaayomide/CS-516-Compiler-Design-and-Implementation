; generated from: hw4programs/arrayargs2.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x313 = alloca { i64, [0 x i64] }*
  %_y314 = alloca { i64, [0 x i64] }*
  %_b315 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x313
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y314
  store i1 %b, i1* %_b315
  br label %_start319
_start319:
  %_id_b316 = load i1, i1* %_b315
  br i1 %_id_b316, label %_then320, label %_else321
_then320:
  %_id_x317 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x313
  ret { i64, [0 x i64] }* %_id_x317
_else321:
  %_id_y318 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y314
  ret { i64, [0 x i64] }* %_id_y318
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc298 = alloca i64
  %_argv299 = alloca { i64, [0 x i8*] }*
  %_300 = alloca { i64, [0 x i64] }*
  %_303 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc298
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv299
  %_raw_array301 = call i64* @oat_alloc_array(i64 3)
  %_array302 = bitcast i64* %_raw_array301 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array302, { i64, [0 x i64] }** %_300
  %_raw_array304 = call i64* @oat_alloc_array(i64 3)
  %_array305 = bitcast i64* %_raw_array304 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array305, { i64, [0 x i64] }** %_303
  %_id_x306 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_300
  %_id_y307 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_303
  %_308 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_x306, { i64, [0 x i64] }* %_id_y307, i1 1)
  %_309 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_308, i32 0, i32 1, i32 0
  store i64 17, i64* %_309
  %_id_x310 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_300
  %_index_pointer311 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x310, i32 0, i32 1, i32 0
  %_index_value312 = load i64, i64* %_index_pointer311
  ret i64 %_index_value312
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
