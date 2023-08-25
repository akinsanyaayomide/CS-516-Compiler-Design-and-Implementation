; generated from: hw4programs/maxsubsequence.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @maxsum({ i64, [0 x i64] }* %arr, i64 %size) {
  %_arr5244 = alloca { i64, [0 x i64] }*
  %_size5245 = alloca i64
  %_5246 = alloca { i64, [0 x i64] }*
  %_5250 = alloca i64
  %_5256 = alloca i64
  %_5260 = alloca i64
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr5244
  store i64 %size, i64* %_size5245
  %_id_size5247 = load i64, i64* %_size5245
  %_raw_array5248 = call i64* @oat_alloc_array(i64 %_id_size5247)
  %_array5249 = bitcast i64* %_raw_array5248 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5249, { i64, [0 x i64] }** %_5246
  store i64 0, i64* %_5250
  %_id_arr5251 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5244
  %_index_pointer5252 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr5251, i32 0, i32 1, i32 0
  %_index_value5253 = load i64, i64* %_index_pointer5252
  %_id_maxarr5254 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5246
  %_5255 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr5254, i32 0, i32 1, i32 0
  store i64 %_index_value5253, i64* %_5255
  store i64 0, i64* %_5256
  br label %_start5325
_start5325:
  %_id_size5258 = load i64, i64* %_size5245
  %_id_i5257 = load i64, i64* %_5256
  %_5259 = icmp slt i64 %_id_i5257, %_id_size5258
  br i1 %_5259, label %_body5326, label %_else5327
_body5326:
  store i64 0, i64* %_5260
  br label %_start5306
_start5306:
  %_id_i5262 = load i64, i64* %_5256
  %_id_j5261 = load i64, i64* %_5260
  %_5263 = icmp slt i64 %_id_j5261, %_id_i5262
  br i1 %_5263, label %_body5307, label %_else5308
_body5307:
  br label %_start5300
_start5300:
  %_id_arr5281 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5244
  %_id_i5282 = load i64, i64* %_5256
  %_index_pointer5283 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr5281, i32 0, i32 1, i64 %_id_i5282
  %_index_value5284 = load i64, i64* %_index_pointer5283
  %_id_maxarr5277 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5246
  %_id_j5278 = load i64, i64* %_5260
  %_index_pointer5279 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr5277, i32 0, i32 1, i64 %_id_j5278
  %_index_value5280 = load i64, i64* %_index_pointer5279
  %_5285 = add i64 %_index_value5280, %_index_value5284
  %_id_maxarr5273 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5246
  %_id_i5274 = load i64, i64* %_5256
  %_index_pointer5275 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr5273, i32 0, i32 1, i64 %_id_i5274
  %_index_value5276 = load i64, i64* %_index_pointer5275
  %_5286 = icmp slt i64 %_index_value5276, %_5285
  %_id_arr5268 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5244
  %_id_j5269 = load i64, i64* %_5260
  %_index_pointer5270 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr5268, i32 0, i32 1, i64 %_id_j5269
  %_index_value5271 = load i64, i64* %_index_pointer5270
  %_id_arr5264 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5244
  %_id_i5265 = load i64, i64* %_5256
  %_index_pointer5266 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr5264, i32 0, i32 1, i64 %_id_i5265
  %_index_value5267 = load i64, i64* %_index_pointer5266
  %_5272 = icmp sgt i64 %_index_value5267, %_index_value5271
  %_5287 = and i1 %_5272, %_5286
  br i1 %_5287, label %_then5301, label %_else5302
_then5301:
  %_id_arr5292 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5244
  %_id_i5293 = load i64, i64* %_5256
  %_index_pointer5294 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr5292, i32 0, i32 1, i64 %_id_i5293
  %_index_value5295 = load i64, i64* %_index_pointer5294
  %_id_maxarr5288 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5246
  %_id_j5289 = load i64, i64* %_5260
  %_index_pointer5290 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr5288, i32 0, i32 1, i64 %_id_j5289
  %_index_value5291 = load i64, i64* %_index_pointer5290
  %_5296 = add i64 %_index_value5291, %_index_value5295
  %_id_maxarr5297 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5246
  %_id_i5298 = load i64, i64* %_5256
  %_5299 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr5297, i32 0, i32 1, i64 %_id_i5298
  store i64 %_5296, i64* %_5299
  br label %_post5303
_else5302:
  br label %_post5303
_post5303:
  %_id_j5304 = load i64, i64* %_5260
  %_5305 = add i64 %_id_j5304, 1
  store i64 %_5305, i64* %_5260
  br label %_start5306
_else5308:
  br label %_start5319
_start5319:
  %_id_maxarr5310 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5246
  %_id_i5311 = load i64, i64* %_5256
  %_index_pointer5312 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr5310, i32 0, i32 1, i64 %_id_i5311
  %_index_value5313 = load i64, i64* %_index_pointer5312
  %_id_maxs5309 = load i64, i64* %_5250
  %_5314 = icmp slt i64 %_id_maxs5309, %_index_value5313
  br i1 %_5314, label %_then5320, label %_else5321
_then5320:
  %_id_maxarr5315 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5246
  %_id_i5316 = load i64, i64* %_5256
  %_index_pointer5317 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr5315, i32 0, i32 1, i64 %_id_i5316
  %_index_value5318 = load i64, i64* %_index_pointer5317
  store i64 %_index_value5318, i64* %_5250
  br label %_post5322
_else5321:
  br label %_post5322
_post5322:
  %_id_i5323 = load i64, i64* %_5256
  %_5324 = add i64 %_id_i5323, 1
  store i64 %_5324, i64* %_5256
  br label %_start5325
_else5327:
  %_id_maxs5328 = load i64, i64* %_5250
  ret i64 %_id_maxs5328
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5221 = alloca i64
  %_argv5222 = alloca { i64, [0 x i8*] }*
  %_5223 = alloca { i64, [0 x i64] }*
  %_5240 = alloca i64
  store i64 %argc, i64* %_argc5221
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5222
  %_raw_array5224 = call i64* @oat_alloc_array(i64 7)
  %_array5225 = bitcast i64* %_raw_array5224 to { i64, [0 x i64] }*
  %_5238 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5225, i32 0, i32 1, i32 6
  store i64 5, i64* %_5238
  %_5236 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5225, i32 0, i32 1, i32 5
  store i64 4, i64* %_5236
  %_5234 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5225, i32 0, i32 1, i32 4
  store i64 101, i64* %_5234
  %_5232 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5225, i32 0, i32 1, i32 3
  store i64 3, i64* %_5232
  %_5230 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5225, i32 0, i32 1, i32 2
  store i64 2, i64* %_5230
  %_5228 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5225, i32 0, i32 1, i32 1
  store i64 101, i64* %_5228
  %_5226 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5225, i32 0, i32 1, i32 0
  store i64 1, i64* %_5226
  store { i64, [0 x i64] }* %_array5225, { i64, [0 x i64] }** %_5223
  %_id_array5241 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5223
  %_5242 = call i64 @maxsum({ i64, [0 x i64] }* %_id_array5241, i64 7)
  store i64 %_5242, i64* %_5240
  %_id_max_ans5243 = load i64, i64* %_5240
  ret i64 %_id_max_ans5243
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
