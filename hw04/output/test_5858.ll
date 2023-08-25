; generated from: hw4programs/maxsubsequence.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @maxsum({ i64, [0 x i64] }* %arr, i64 %size) {
  %_arr5237 = alloca { i64, [0 x i64] }*
  %_size5238 = alloca i64
  %_maxarr5242 = alloca { i64, [0 x i64] }*
  %_maxs5243 = alloca i64
  %_i5249 = alloca i64
  %_j5253 = alloca i64
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr5237
  store i64 %size, i64* %_size5238
  %_id_size5239 = load i64, i64* %_size5238
  %_raw_array5240 = call i64* @oat_alloc_array(i64 %_id_size5239)
  %_array5241 = bitcast i64* %_raw_array5240 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5241, { i64, [0 x i64] }** %_maxarr5242
  store i64 0, i64* %_maxs5243
  %_id_arr5244 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5237
  %_index_pointer5246 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr5244, i32 0, i32 1, i32 0
  %_index_value5245 = load i64, i64* %_index_pointer5246
  %_id_maxarr5247 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5242
  %_5248 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr5247, i32 0, i32 1, i32 0
  store i64 %_index_value5245, i64* %_5248
  store i64 0, i64* %_i5249
  br label %_cond5319
_cond5319:
  %_id_i5250 = load i64, i64* %_i5249
  %_id_size5251 = load i64, i64* %_size5238
  %_bop5252 = icmp slt i64 %_id_i5250, %_id_size5251
  br i1 %_bop5252, label %_if5318, label %_merge5320
_if5318:
  store i64 0, i64* %_j5253
  br label %_cond5300
_cond5300:
  %_id_j5254 = load i64, i64* %_j5253
  %_id_i5255 = load i64, i64* %_i5249
  %_bop5256 = icmp slt i64 %_id_j5254, %_id_i5255
  br i1 %_bop5256, label %_if5299, label %_merge5301
_if5299:
  br label %_begin_if5296
_begin_if5296:
  %_id_arr5257 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5237
  %_id_i5258 = load i64, i64* %_i5249
  %_index_pointer5260 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr5257, i32 0, i32 1, i64 %_id_i5258
  %_index_value5259 = load i64, i64* %_index_pointer5260
  %_id_arr5261 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5237
  %_id_j5262 = load i64, i64* %_j5253
  %_index_pointer5264 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr5261, i32 0, i32 1, i64 %_id_j5262
  %_index_value5263 = load i64, i64* %_index_pointer5264
  %_bop5265 = icmp sgt i64 %_index_value5259, %_index_value5263
  %_id_maxarr5266 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5242
  %_id_i5267 = load i64, i64* %_i5249
  %_index_pointer5269 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr5266, i32 0, i32 1, i64 %_id_i5267
  %_index_value5268 = load i64, i64* %_index_pointer5269
  %_id_maxarr5270 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5242
  %_id_j5271 = load i64, i64* %_j5253
  %_index_pointer5273 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr5270, i32 0, i32 1, i64 %_id_j5271
  %_index_value5272 = load i64, i64* %_index_pointer5273
  %_id_arr5274 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5237
  %_id_i5275 = load i64, i64* %_i5249
  %_index_pointer5277 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr5274, i32 0, i32 1, i64 %_id_i5275
  %_index_value5276 = load i64, i64* %_index_pointer5277
  %_bop5278 = add i64 %_index_value5272, %_index_value5276
  %_bop5279 = icmp slt i64 %_index_value5268, %_bop5278
  %_bop5280 = and i1 %_bop5265, %_bop5279
  br i1 %_bop5280, label %_then_branch5295, label %_else_branch5294
_then_branch5295:
  %_id_maxarr5281 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5242
  %_id_j5282 = load i64, i64* %_j5253
  %_index_pointer5284 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr5281, i32 0, i32 1, i64 %_id_j5282
  %_index_value5283 = load i64, i64* %_index_pointer5284
  %_id_arr5285 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5237
  %_id_i5286 = load i64, i64* %_i5249
  %_index_pointer5288 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr5285, i32 0, i32 1, i64 %_id_i5286
  %_index_value5287 = load i64, i64* %_index_pointer5288
  %_bop5289 = add i64 %_index_value5283, %_index_value5287
  %_id_maxarr5290 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5242
  %_id_i5291 = load i64, i64* %_i5249
  %_5292 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr5290, i32 0, i32 1, i64 %_id_i5291
  store i64 %_bop5289, i64* %_5292
  br label %_end_if5293
_else_branch5294:
  br label %_end_if5293
_end_if5293:
  %_id_j5297 = load i64, i64* %_j5253
  %_bop5298 = add i64 %_id_j5297, 1
  store i64 %_bop5298, i64* %_j5253
  br label %_cond5300
_merge5301:
  br label %_begin_if5315
_begin_if5315:
  %_id_maxs5302 = load i64, i64* %_maxs5243
  %_id_maxarr5303 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5242
  %_id_i5304 = load i64, i64* %_i5249
  %_index_pointer5306 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr5303, i32 0, i32 1, i64 %_id_i5304
  %_index_value5305 = load i64, i64* %_index_pointer5306
  %_bop5307 = icmp slt i64 %_id_maxs5302, %_index_value5305
  br i1 %_bop5307, label %_then_branch5314, label %_else_branch5313
_then_branch5314:
  %_id_maxarr5308 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5242
  %_id_i5309 = load i64, i64* %_i5249
  %_index_pointer5311 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr5308, i32 0, i32 1, i64 %_id_i5309
  %_index_value5310 = load i64, i64* %_index_pointer5311
  store i64 %_index_value5310, i64* %_maxs5243
  br label %_end_if5312
_else_branch5313:
  br label %_end_if5312
_end_if5312:
  %_id_i5316 = load i64, i64* %_i5249
  %_bop5317 = add i64 %_id_i5316, 1
  store i64 %_bop5317, i64* %_i5249
  br label %_cond5319
_merge5320:
  %_id_maxs5321 = load i64, i64* %_maxs5243
  ret i64 %_id_maxs5321
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5214 = alloca i64
  %_argv5215 = alloca { i64, [0 x i8*] }*
  %_array5232 = alloca { i64, [0 x i64] }*
  %_max_ans5235 = alloca i64
  store i64 %argc, i64* %_argc5214
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5215
  %_raw_array5216 = call i64* @oat_alloc_array(i64 7)
  %_array5217 = bitcast i64* %_raw_array5216 to { i64, [0 x i64] }*
  %_5230 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5217, i32 0, i32 1, i32 6
  store i64 5, i64* %_5230
  %_5228 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5217, i32 0, i32 1, i32 5
  store i64 4, i64* %_5228
  %_5226 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5217, i32 0, i32 1, i32 4
  store i64 101, i64* %_5226
  %_5224 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5217, i32 0, i32 1, i32 3
  store i64 3, i64* %_5224
  %_5222 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5217, i32 0, i32 1, i32 2
  store i64 2, i64* %_5222
  %_5220 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5217, i32 0, i32 1, i32 1
  store i64 101, i64* %_5220
  %_5218 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5217, i32 0, i32 1, i32 0
  store i64 1, i64* %_5218
  store { i64, [0 x i64] }* %_array5217, { i64, [0 x i64] }** %_array5232
  %_id_array5233 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5232
  %_5234 = call i64 @maxsum({ i64, [0 x i64] }* %_id_array5233, i64 7)
  store i64 %_5234, i64* %_max_ans5235
  %_id_max_ans5236 = load i64, i64* %_max_ans5235
  ret i64 %_id_max_ans5236
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
