; generated from: hw4programs/life.oat
target triple = "x86_64-apple-macosx10.13.0"
@len = global i64 4

define i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j, i64 %count) {
  %_board5460 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i5461 = alloca i64
  %_j5462 = alloca i64
  %_count5463 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_board5460
  store i64 %i, i64* %_i5461
  store i64 %j, i64* %_j5462
  store i64 %count, i64* %_count5463
  br label %_begin_if5487
_begin_if5487:
  %_id_i5464 = load i64, i64* %_i5461
  %_bop5465 = icmp sge i64 %_id_i5464, 0
  %_id_j5466 = load i64, i64* %_j5462
  %_bop5467 = icmp sge i64 %_id_j5466, 0
  %_bop5468 = and i1 %_bop5465, %_bop5467
  %_id_i5469 = load i64, i64* %_i5461
  %_id_len5470 = load i64, i64* @len
  %_bop5471 = icmp slt i64 %_id_i5469, %_id_len5470
  %_bop5472 = and i1 %_bop5468, %_bop5471
  %_id_j5473 = load i64, i64* %_j5462
  %_id_len5474 = load i64, i64* @len
  %_bop5475 = icmp slt i64 %_id_j5473, %_id_len5474
  %_bop5476 = and i1 %_bop5472, %_bop5475
  br i1 %_bop5476, label %_then_branch5488, label %_else_branch5489
_then_branch5488:
  %_id_count5477 = load i64, i64* %_count5463
  %_id_board5478 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5460
  %_id_i5479 = load i64, i64* %_i5461
  %_index_pointer5481 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_board5478, i32 0, i32 1, i64 %_id_i5479
  %_index_value5480 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer5481
  %_id_j5482 = load i64, i64* %_j5462
  %_index_pointer5484 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value5480, i32 0, i32 1, i64 %_id_j5482
  %_index_value5483 = load i64, i64* %_index_pointer5484
  %_bop5485 = add i64 %_id_count5477, %_index_value5483
  ret i64 %_bop5485
_else_branch5489:
  %_id_count5486 = load i64, i64* %_count5463
  ret i64 %_id_count5486
}

define i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j) {
  %_board5372 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i5373 = alloca i64
  %_j5374 = alloca i64
  %_5375 = alloca i64
  %_5383 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_board5372
  store i64 %i, i64* %_i5373
  store i64 %j, i64* %_j5374
  %_id_board5376 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5372
  %_id_i5377 = load i64, i64* %_i5373
  %_index_pointer5379 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_board5376, i32 0, i32 1, i64 %_id_i5377
  %_index_value5378 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer5379
  %_id_j5380 = load i64, i64* %_j5374
  %_index_pointer5382 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value5378, i32 0, i32 1, i64 %_id_j5380
  %_index_value5381 = load i64, i64* %_index_pointer5382
  store i64 %_index_value5381, i64* %_5375
  store i64 0, i64* %_5383
  %_id_board5384 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5372
  %_id_i5385 = load i64, i64* %_i5373
  %_bop5386 = sub i64 %_id_i5385, 1
  %_id_j5387 = load i64, i64* %_j5374
  %_bop5388 = sub i64 %_id_j5387, 1
  %_id_count5389 = load i64, i64* %_5383
  %_5390 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board5384, i64 %_bop5386, i64 %_bop5388, i64 %_id_count5389)
  store i64 %_5390, i64* %_5383
  %_id_board5391 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5372
  %_id_i5392 = load i64, i64* %_i5373
  %_bop5393 = sub i64 %_id_i5392, 1
  %_id_j5394 = load i64, i64* %_j5374
  %_id_count5395 = load i64, i64* %_5383
  %_5396 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board5391, i64 %_bop5393, i64 %_id_j5394, i64 %_id_count5395)
  store i64 %_5396, i64* %_5383
  %_id_board5397 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5372
  %_id_i5398 = load i64, i64* %_i5373
  %_bop5399 = sub i64 %_id_i5398, 1
  %_id_j5400 = load i64, i64* %_j5374
  %_bop5401 = add i64 %_id_j5400, 1
  %_id_count5402 = load i64, i64* %_5383
  %_5403 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board5397, i64 %_bop5399, i64 %_bop5401, i64 %_id_count5402)
  store i64 %_5403, i64* %_5383
  %_id_board5404 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5372
  %_id_i5405 = load i64, i64* %_i5373
  %_id_j5406 = load i64, i64* %_j5374
  %_bop5407 = sub i64 %_id_j5406, 1
  %_id_count5408 = load i64, i64* %_5383
  %_5409 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board5404, i64 %_id_i5405, i64 %_bop5407, i64 %_id_count5408)
  store i64 %_5409, i64* %_5383
  %_id_board5410 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5372
  %_id_i5411 = load i64, i64* %_i5373
  %_id_j5412 = load i64, i64* %_j5374
  %_bop5413 = add i64 %_id_j5412, 1
  %_id_count5414 = load i64, i64* %_5383
  %_5415 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board5410, i64 %_id_i5411, i64 %_bop5413, i64 %_id_count5414)
  store i64 %_5415, i64* %_5383
  %_id_board5416 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5372
  %_id_i5417 = load i64, i64* %_i5373
  %_bop5418 = add i64 %_id_i5417, 1
  %_id_j5419 = load i64, i64* %_j5374
  %_bop5420 = sub i64 %_id_j5419, 1
  %_id_count5421 = load i64, i64* %_5383
  %_5422 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board5416, i64 %_bop5418, i64 %_bop5420, i64 %_id_count5421)
  store i64 %_5422, i64* %_5383
  %_id_board5423 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5372
  %_id_i5424 = load i64, i64* %_i5373
  %_bop5425 = add i64 %_id_i5424, 1
  %_id_j5426 = load i64, i64* %_j5374
  %_id_count5427 = load i64, i64* %_5383
  %_5428 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board5423, i64 %_bop5425, i64 %_id_j5426, i64 %_id_count5427)
  store i64 %_5428, i64* %_5383
  %_id_board5429 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5372
  %_id_i5430 = load i64, i64* %_i5373
  %_bop5431 = add i64 %_id_i5430, 1
  %_id_j5432 = load i64, i64* %_j5374
  %_bop5433 = add i64 %_id_j5432, 1
  %_id_count5434 = load i64, i64* %_5383
  %_5435 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board5429, i64 %_bop5431, i64 %_bop5433, i64 %_id_count5434)
  store i64 %_5435, i64* %_5383
  br label %_begin_if5450
_begin_if5450:
  %_id_alive5436 = load i64, i64* %_5375
  %_bop5437 = icmp eq i64 %_id_alive5436, 1
  br i1 %_bop5437, label %_then_branch5451, label %_else_branch5452
_then_branch5451:
  br label %_begin_if5446
_begin_if5446:
  %_id_count5438 = load i64, i64* %_5383
  %_bop5439 = icmp slt i64 %_id_count5438, 2
  br i1 %_bop5439, label %_then_branch5447, label %_else_branch5448
_then_branch5447:
  ret i64 0
_else_branch5448:
  br label %_begin_if5442
_begin_if5442:
  %_id_count5440 = load i64, i64* %_5383
  %_bop5441 = icmp slt i64 %_id_count5440, 4
  br i1 %_bop5441, label %_then_branch5443, label %_else_branch5444
_then_branch5443:
  ret i64 1
_else_branch5444:
  br label %_end_if5445
_end_if5445:
  br label %_end_if5449
_end_if5449:
  ret i64 0
_else_branch5452:
  br label %_end_if5453
_end_if5453:
  br label %_begin_if5456
_begin_if5456:
  %_id_count5454 = load i64, i64* %_5383
  %_bop5455 = icmp eq i64 %_id_count5454, 3
  br i1 %_bop5455, label %_then_branch5457, label %_else_branch5458
_then_branch5457:
  ret i64 1
_else_branch5458:
  ret i64 0
_end_if5459:
  ret i64 0
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5171 = alloca i64
  %_argv5172 = alloca { i64, [0 x i8*] }*
  %_5173 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_5244 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_5315 = alloca i64
  %_5323 = alloca i64
  %_5346 = alloca i64
  %_5350 = alloca i64
  store i64 %argc, i64* %_argc5171
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5172
  %_raw_array5218 = call i64* @oat_alloc_array(i64 4)
  %_array5219 = bitcast i64* %_raw_array5218 to { i64, [0 x i64] }*
  %_5231 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5219, i32 0, i32 1, i32 3
  store i64 0, i64* %_5229
  %_5228 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5219, i32 0, i32 1, i32 2
  store i64 0, i64* %_5226
  %_5225 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5219, i32 0, i32 1, i32 1
  store i64 0, i64* %_5223
  %_5222 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5219, i32 0, i32 1, i32 0
  store i64 0, i64* %_5220
  %_raw_array5204 = call i64* @oat_alloc_array(i64 4)
  %_array5205 = bitcast i64* %_raw_array5204 to { i64, [0 x i64] }*
  %_5217 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5205, i32 0, i32 1, i32 3
  store i64 0, i64* %_5215
  %_5214 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5205, i32 0, i32 1, i32 2
  store i64 1, i64* %_5212
  %_5211 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5205, i32 0, i32 1, i32 1
  store i64 1, i64* %_5209
  %_5208 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5205, i32 0, i32 1, i32 0
  store i64 1, i64* %_5206
  %_raw_array5190 = call i64* @oat_alloc_array(i64 4)
  %_array5191 = bitcast i64* %_raw_array5190 to { i64, [0 x i64] }*
  %_5203 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5191, i32 0, i32 1, i32 3
  store i64 1, i64* %_5201
  %_5200 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5191, i32 0, i32 1, i32 2
  store i64 1, i64* %_5198
  %_5197 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5191, i32 0, i32 1, i32 1
  store i64 1, i64* %_5195
  %_5194 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5191, i32 0, i32 1, i32 0
  store i64 0, i64* %_5192
  %_raw_array5176 = call i64* @oat_alloc_array(i64 4)
  %_array5177 = bitcast i64* %_raw_array5176 to { i64, [0 x i64] }*
  %_5189 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5177, i32 0, i32 1, i32 3
  store i64 0, i64* %_5187
  %_5186 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5177, i32 0, i32 1, i32 2
  store i64 0, i64* %_5184
  %_5183 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5177, i32 0, i32 1, i32 1
  store i64 0, i64* %_5181
  %_5180 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5177, i32 0, i32 1, i32 0
  store i64 0, i64* %_5178
  %_raw_array5174 = call i64* @oat_alloc_array(i64 4)
  %_array5175 = bitcast i64* %_raw_array5174 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_5243 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5175, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array5219, { i64, [0 x i64] }** %_5241
  %_5240 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5175, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array5205, { i64, [0 x i64] }** %_5238
  %_5237 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5175, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5191, { i64, [0 x i64] }** %_5235
  %_5234 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5175, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5177, { i64, [0 x i64] }** %_5232
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5175, { i64, [0 x { i64, [0 x i64] }*] }** %_5173
  %_raw_array5289 = call i64* @oat_alloc_array(i64 4)
  %_array5290 = bitcast i64* %_raw_array5289 to { i64, [0 x i64] }*
  %_5302 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5290, i32 0, i32 1, i32 3
  store i64 0, i64* %_5300
  %_5299 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5290, i32 0, i32 1, i32 2
  store i64 0, i64* %_5297
  %_5296 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5290, i32 0, i32 1, i32 1
  store i64 0, i64* %_5294
  %_5293 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5290, i32 0, i32 1, i32 0
  store i64 0, i64* %_5291
  %_raw_array5275 = call i64* @oat_alloc_array(i64 4)
  %_array5276 = bitcast i64* %_raw_array5275 to { i64, [0 x i64] }*
  %_5288 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5276, i32 0, i32 1, i32 3
  store i64 0, i64* %_5286
  %_5285 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5276, i32 0, i32 1, i32 2
  store i64 0, i64* %_5283
  %_5282 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5276, i32 0, i32 1, i32 1
  store i64 0, i64* %_5280
  %_5279 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5276, i32 0, i32 1, i32 0
  store i64 0, i64* %_5277
  %_raw_array5261 = call i64* @oat_alloc_array(i64 4)
  %_array5262 = bitcast i64* %_raw_array5261 to { i64, [0 x i64] }*
  %_5274 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5262, i32 0, i32 1, i32 3
  store i64 0, i64* %_5272
  %_5271 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5262, i32 0, i32 1, i32 2
  store i64 0, i64* %_5269
  %_5268 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5262, i32 0, i32 1, i32 1
  store i64 0, i64* %_5266
  %_5265 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5262, i32 0, i32 1, i32 0
  store i64 0, i64* %_5263
  %_raw_array5247 = call i64* @oat_alloc_array(i64 4)
  %_array5248 = bitcast i64* %_raw_array5247 to { i64, [0 x i64] }*
  %_5260 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5248, i32 0, i32 1, i32 3
  store i64 0, i64* %_5258
  %_5257 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5248, i32 0, i32 1, i32 2
  store i64 0, i64* %_5255
  %_5254 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5248, i32 0, i32 1, i32 1
  store i64 0, i64* %_5252
  %_5251 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5248, i32 0, i32 1, i32 0
  store i64 0, i64* %_5249
  %_raw_array5245 = call i64* @oat_alloc_array(i64 4)
  %_array5246 = bitcast i64* %_raw_array5245 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_5314 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5246, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array5290, { i64, [0 x i64] }** %_5312
  %_5311 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5246, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array5276, { i64, [0 x i64] }** %_5309
  %_5308 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5246, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5262, { i64, [0 x i64] }** %_5306
  %_5305 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5246, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5248, { i64, [0 x i64] }** %_5303
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5246, { i64, [0 x { i64, [0 x i64] }*] }** %_5244
  store i64 0, i64* %_5315
  br label %_cond5344
_cond5344:
  %_id_i5316 = load i64, i64* %_5315
  %_bop5317 = icmp slt i64 %_id_i5316, 4
  br i1 %_bop5317, label %_if5343, label %_merge5345
_if5343:
  %_raw_array5318 = call i64* @oat_alloc_array(i64 4)
  %_array5319 = bitcast i64* %_raw_array5318 to { i64, [0 x i64] }*
  %_id_new_board5320 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5244
  %_id_i5321 = load i64, i64* %_5315
  %_5322 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_new_board5320, i32 0, i32 1, i64 %_id_i5321
  store { i64, [0 x i64] }* %_array5319, { i64, [0 x i64] }** %_5322
  store i64 0, i64* %_5323
  br label %_cond5339
_cond5339:
  %_id_j5324 = load i64, i64* %_5323
  %_bop5325 = icmp slt i64 %_id_j5324, 4
  br i1 %_bop5325, label %_if5338, label %_merge5340
_if5338:
  %_id_board5326 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5173
  %_id_i5327 = load i64, i64* %_5315
  %_id_j5328 = load i64, i64* %_5323
  %_5329 = call i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board5326, i64 %_id_i5327, i64 %_id_j5328)
  %_id_new_board5330 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5244
  %_id_i5331 = load i64, i64* %_5315
  %_index_pointer5333 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_new_board5330, i32 0, i32 1, i64 %_id_i5331
  %_index_value5332 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer5333
  %_id_j5334 = load i64, i64* %_5323
  %_5335 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value5332, i32 0, i32 1, i64 %_id_j5334
  store i64 %_5329, i64* %_5335
  %_id_j5336 = load i64, i64* %_5323
  %_bop5337 = add i64 %_id_j5336, 1
  store i64 %_bop5337, i64* %_5323
  br label %_cond5339
_merge5340:
  %_id_i5341 = load i64, i64* %_5315
  %_bop5342 = add i64 %_id_i5341, 1
  store i64 %_bop5342, i64* %_5315
  br label %_cond5344
_merge5345:
  store i64 0, i64* %_5346
  br label %_cond5370
_cond5370:
  %_id_i5347 = load i64, i64* %_5346
  %_id_len5348 = load i64, i64* @len
  %_bop5349 = icmp slt i64 %_id_i5347, %_id_len5348
  br i1 %_bop5349, label %_if5369, label %_merge5371
_if5369:
  store i64 0, i64* %_5350
  br label %_cond5365
_cond5365:
  %_id_j5351 = load i64, i64* %_5350
  %_id_len5352 = load i64, i64* @len
  %_bop5353 = icmp slt i64 %_id_j5351, %_id_len5352
  br i1 %_bop5353, label %_if5364, label %_merge5366
_if5364:
  %_id_new_board5354 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5244
  %_id_i5355 = load i64, i64* %_5346
  %_index_pointer5357 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_new_board5354, i32 0, i32 1, i64 %_id_i5355
  %_index_value5356 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer5357
  %_id_j5358 = load i64, i64* %_5350
  %_index_pointer5360 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value5356, i32 0, i32 1, i64 %_id_j5358
  %_index_value5359 = load i64, i64* %_index_pointer5360
  call void @print_int(i64 %_index_value5359)
  %_id_j5362 = load i64, i64* %_5350
  %_bop5363 = add i64 %_id_j5362, 1
  store i64 %_bop5363, i64* %_5350
  br label %_cond5365
_merge5366:
  %_id_i5367 = load i64, i64* %_5346
  %_bop5368 = add i64 %_id_i5367, 1
  store i64 %_bop5368, i64* %_5346
  br label %_cond5370
_merge5371:
  ret i64 0
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
