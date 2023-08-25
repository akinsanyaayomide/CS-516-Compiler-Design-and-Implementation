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
  %_x229 = alloca { i64, [0 x i64] }*
  %_i230 = alloca i64
  %_y244 = alloca { i64, [0 x i64] }*
  %_i245 = alloca i64
  store i64 %argc, i64* %_argc225
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv226
  %_raw_array227 = call i64* @oat_alloc_array(i64 3)
  %_array228 = bitcast i64* %_raw_array227 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array228, { i64, [0 x i64] }** %_x229
  store i64 0, i64* %_i230
  br label %_cond240
_cond240:
  %_id_i231 = load i64, i64* %_i230
  %_bop232 = icmp slt i64 %_id_i231, 3
  br i1 %_bop232, label %_if239, label %_merge241
_if239:
  %_id_i233 = load i64, i64* %_i230
  %_id_x234 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x229
  %_id_i235 = load i64, i64* %_i230
  %_236 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x234, i32 0, i32 1, i64 %_id_i235
  store i64 %_id_i233, i64* %_236
  %_id_i237 = load i64, i64* %_i230
  %_bop238 = add i64 %_id_i237, 1
  store i64 %_bop238, i64* %_i230
  br label %_cond240
_merge241:
  %_raw_array242 = call i64* @oat_alloc_array(i64 3)
  %_array243 = bitcast i64* %_raw_array242 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array243, { i64, [0 x i64] }** %_y244
  store i64 0, i64* %_i245
  br label %_cond256
_cond256:
  %_id_i246 = load i64, i64* %_i245
  %_bop247 = icmp slt i64 %_id_i246, 3
  br i1 %_bop247, label %_if255, label %_merge257
_if255:
  %_id_i248 = load i64, i64* %_i245
  %_bop249 = add i64 %_id_i248, 3
  %_id_y250 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y244
  %_id_i251 = load i64, i64* %_i245
  %_252 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_y250, i32 0, i32 1, i64 %_id_i251
  store i64 %_bop249, i64* %_252
  %_id_i253 = load i64, i64* %_i245
  %_bop254 = add i64 %_id_i253, 1
  store i64 %_bop254, i64* %_i245
  br label %_cond256
_merge257:
  %_id_x258 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x229
  %_id_y259 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y244
  %_260 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_x258, { i64, [0 x i64] }* %_id_y259, i1 1)
  %_261 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_260, i32 0, i32 1, i32 0
  store i64 17, i64* %_261
  %_id_x262 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x229
  %_index_pointer264 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x262, i32 0, i32 1, i32 0
  %_index_value263 = load i64, i64* %_index_pointer264
  ret i64 %_index_value263
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
