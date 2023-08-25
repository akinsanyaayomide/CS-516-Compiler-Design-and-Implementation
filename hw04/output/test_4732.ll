; generated from: hw4programs/arrayargs.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x281 = alloca { i64, [0 x i64] }*
  %_y282 = alloca { i64, [0 x i64] }*
  %_b283 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x281
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y282
  store i1 %b, i1* %_b283
  br label %_begin_if287
_begin_if287:
  %_id_b284 = load i1, i1* %_b283
  br i1 %_id_b284, label %_then_branch288, label %_else_branch289
_then_branch288:
  %_id_x285 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x281
  ret { i64, [0 x i64] }* %_id_x285
_else_branch289:
  %_id_y286 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y282
  ret { i64, [0 x i64] }* %_id_y286
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc241 = alloca i64
  %_argv242 = alloca { i64, [0 x i8*] }*
  %_243 = alloca { i64, [0 x i64] }*
  %_246 = alloca i64
  %_258 = alloca { i64, [0 x i64] }*
  %_261 = alloca i64
  store i64 %argc, i64* %_argc241
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv242
  %_raw_array244 = call i64* @oat_alloc_array(i64 3)
  %_array245 = bitcast i64* %_raw_array244 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array245, { i64, [0 x i64] }** %_243
  store i64 0, i64* %_246
  br label %_cond256
_cond256:
  %_id_i247 = load i64, i64* %_246
  %_bop248 = icmp slt i64 %_id_i247, 3
  br i1 %_bop248, label %_if255, label %_merge257
_if255:
  %_id_i249 = load i64, i64* %_246
  %_id_x250 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_243
  %_id_i251 = load i64, i64* %_246
  %_252 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x250, i32 0, i32 1, i64 %_id_i251
  store i64 %_id_i249, i64* %_252
  %_id_i253 = load i64, i64* %_246
  %_bop254 = add i64 %_id_i253, 1
  store i64 %_bop254, i64* %_246
  br label %_cond256
_merge257:
  %_raw_array259 = call i64* @oat_alloc_array(i64 3)
  %_array260 = bitcast i64* %_raw_array259 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array260, { i64, [0 x i64] }** %_258
  store i64 0, i64* %_261
  br label %_cond272
_cond272:
  %_id_i262 = load i64, i64* %_261
  %_bop263 = icmp slt i64 %_id_i262, 3
  br i1 %_bop263, label %_if271, label %_merge273
_if271:
  %_id_i264 = load i64, i64* %_261
  %_bop265 = add i64 %_id_i264, 3
  %_id_y266 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_258
  %_id_i267 = load i64, i64* %_261
  %_268 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_y266, i32 0, i32 1, i64 %_id_i267
  store i64 %_bop265, i64* %_268
  %_id_i269 = load i64, i64* %_261
  %_bop270 = add i64 %_id_i269, 1
  store i64 %_bop270, i64* %_261
  br label %_cond272
_merge273:
  %_id_x274 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_243
  %_id_y275 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_258
  %_276 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_x274, { i64, [0 x i64] }* %_id_y275, i1 1)
  %_277 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_276, i32 0, i32 1, i32 0
  store i64 17, i64* %_277
  %_id_x278 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_243
  %_index_pointer280 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x278, i32 0, i32 1, i32 0
  %_index_value279 = load i64, i64* %_index_pointer280
  ret i64 %_index_value279
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
