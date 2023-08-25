; generated from: hw4programs/arrayargs.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x277 = alloca { i64, [0 x i64] }*
  %_y278 = alloca { i64, [0 x i64] }*
  %_b279 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x277
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y278
  store i1 %b, i1* %_b279
  br label %_begin_if283
_begin_if283:
  %_id_b280 = load i1, i1* %_b279
  br i1 %_id_b280, label %_then_branch284, label %_else_branch285
_then_branch284:
  %_id_x281 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x277
  ret { i64, [0 x i64] }* %_id_x281
_else_branch285:
  %_id_y282 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y278
  ret { i64, [0 x i64] }* %_id_y282
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc237 = alloca i64
  %_argv238 = alloca { i64, [0 x i8*] }*
  %_239 = alloca { i64, [0 x i64] }*
  %_242 = alloca i64
  %_254 = alloca { i64, [0 x i64] }*
  %_257 = alloca i64
  store i64 %argc, i64* %_argc237
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv238
  %_raw_array240 = call i64* @oat_alloc_array(i64 3)
  %_array241 = bitcast i64* %_raw_array240 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array241, { i64, [0 x i64] }** %_239
  store i64 0, i64* %_242
  br label %_cond252
_cond252:
  %_id_i243 = load i64, i64* %_242
  %_bop244 = icmp slt i64 %_id_i243, 3
  br i1 %_bop244, label %_if251, label %_merge253
_if251:
  %_id_i245 = load i64, i64* %_242
  %_id_x246 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_239
  %_id_i247 = load i64, i64* %_242
  %_248 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x246, i32 0, i32 1, i64 %_id_i247
  store i64 %_id_i245, i64* %_248
  %_id_i249 = load i64, i64* %_242
  %_bop250 = add i64 %_id_i249, 1
  store i64 %_bop250, i64* %_242
  br label %_cond252
_merge253:
  %_raw_array255 = call i64* @oat_alloc_array(i64 3)
  %_array256 = bitcast i64* %_raw_array255 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array256, { i64, [0 x i64] }** %_254
  store i64 0, i64* %_257
  br label %_cond268
_cond268:
  %_id_i258 = load i64, i64* %_257
  %_bop259 = icmp slt i64 %_id_i258, 3
  br i1 %_bop259, label %_if267, label %_merge269
_if267:
  %_id_i260 = load i64, i64* %_257
  %_bop261 = add i64 %_id_i260, 3
  %_id_y262 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_254
  %_id_i263 = load i64, i64* %_257
  %_264 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_y262, i32 0, i32 1, i64 %_id_i263
  store i64 %_bop261, i64* %_264
  %_id_i265 = load i64, i64* %_257
  %_bop266 = add i64 %_id_i265, 1
  store i64 %_bop266, i64* %_257
  br label %_cond268
_merge269:
  %_id_x270 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_239
  %_id_y271 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_254
  %_272 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_x270, { i64, [0 x i64] }* %_id_y271, i1 1)
  %_273 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_272, i32 0, i32 1, i32 0
  store i64 17, i64* %_273
  %_id_x274 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_239
  %_index_pointer276 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x274, i32 0, i32 1, i32 0
  %_index_value275 = load i64, i64* %_index_pointer276
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
