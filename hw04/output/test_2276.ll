; generated from: hw4programs/arrayargs.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x265 = alloca { i64, [0 x i64] }*
  %_y266 = alloca { i64, [0 x i64] }*
  %_b267 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x265
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y266
  store i1 %b, i1* %_b267
  br label %_begin_if271
_begin_if271:
  %_id_b268 = load i1, i1* %_b267
  br i1 %_id_b268, label %_then_branch272, label %_else_branch273
_then_branch272:
  %_id_x269 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x265
  ret { i64, [0 x i64] }* %_id_x269
_else_branch273:
  %_id_y270 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y266
  ret { i64, [0 x i64] }* %_id_y270
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc225 = alloca i64
  %_argv226 = alloca { i64, [0 x i8*] }*
  %_227 = alloca { i64, [0 x i64] }*
  %_230 = alloca i64
  %_242 = alloca { i64, [0 x i64] }*
  %_245 = alloca i64
  store i64 %argc, i64* %_argc225
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv226
  %_raw_array228 = call i64* @oat_alloc_array(i64 3)
  %_array229 = bitcast i64* %_raw_array228 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array229, { i64, [0 x i64] }** %_227
  store i64 0, i64* %_230
  br label %_start239
_start239:
  %_id_i231 = load i64, i64* %_230
  %_232 = icmp slt i64 %_id_i231, 3
  br i1 %_232, label %_body240, label %_else241
_body240:
  %_id_i233 = load i64, i64* %_230
  %_id_x234 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_227
  %_id_i235 = load i64, i64* %_230
  %_236 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x234, i32 0, i32 1, i64 %_id_i235
  store i64 %_id_i233, i64* %_236
  %_id_i237 = load i64, i64* %_230
  %_238 = add i64 %_id_i237, 1
  store i64 %_238, i64* %_230
  br label %_start239
_else241:
  %_raw_array243 = call i64* @oat_alloc_array(i64 3)
  %_array244 = bitcast i64* %_raw_array243 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array244, { i64, [0 x i64] }** %_242
  store i64 0, i64* %_245
  br label %_start255
_start255:
  %_id_i246 = load i64, i64* %_245
  %_247 = icmp slt i64 %_id_i246, 3
  br i1 %_247, label %_body256, label %_else257
_body256:
  %_id_i248 = load i64, i64* %_245
  %_249 = add i64 %_id_i248, 3
  %_id_y250 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_242
  %_id_i251 = load i64, i64* %_245
  %_252 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_y250, i32 0, i32 1, i64 %_id_i251
  store i64 %_249, i64* %_252
  %_id_i253 = load i64, i64* %_245
  %_254 = add i64 %_id_i253, 1
  store i64 %_254, i64* %_245
  br label %_start255
_else257:
  %_id_x258 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_227
  %_id_y259 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_242
  %_260 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_x258, { i64, [0 x i64] }* %_id_y259, i1 1)
  %_261 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_260, i32 0, i32 1, i32 0
  store i64 17, i64* %_261
  %_id_x262 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_227
  %_index_pointer263 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x262, i32 0, i32 1, i32 0
  %_index_value264 = load i64, i64* %_index_pointer263
  ret i64 %_index_value264
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
