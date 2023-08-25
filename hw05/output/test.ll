; generated from: hwprograms_student/balanced_btree_by_Mihai_Nicola.oat
target triple = "x86_64-apple-macosx10.13.0"
%T = type { i64, i64, %T*, %T* }

@_str_arr394 = global [6 x i8] c"[Red]\00"
@_str_arr397 = global [8 x i8] c"[Black]\00"
@_str_arr412 = global [2 x i8] c"(\00"
@_str_arr436 = global [2 x i8] c",\00"
@_str_arr460 = global [2 x i8] c")\00"
@_str_arr79 = global [7 x i8] c"INPUT:\00"
@_str_arr94 = global [11 x i8] c">>>OUTPUT:\00"

define void @print_tree(%T* %_tree382) {
  %_tree383 = alloca %T*
  %n = alloca %T*
  %n = alloca %T*
  store %T* %_tree382, %T** %_tree383
  %_tree385 = load %T*, %T** %_tree383
  %_field_index_id386 = getelementptr %T, %T* %_tree385, i32 0, i32 0
  %_proj387 = load i64, i64* %_field_index_id386
  %_result388 = call i8* @string_of_int(i64 %_proj387)
  call void @print_string(i8* %_result388)
  %_tree390 = load %T*, %T** %_tree383
  %_field_index_id391 = getelementptr %T, %T* %_tree390, i32 0, i32 1
  %_proj392 = load i64, i64* %_field_index_id391
  %_bop393 = icmp eq i64 %_proj392, 0
  br i1 %_bop393, label %_then402, label %_else401
_then402:
  %_str395 = getelementptr [6 x i8], [6 x i8]* @_str_arr394, i32 0, i32 0
  call void @print_string(i8* %_str395)
  br label %_merge400
_else401:
  %_str398 = getelementptr [8 x i8], [8 x i8]* @_str_arr397, i32 0, i32 0
  call void @print_string(i8* %_str398)
  br label %_merge400
_merge400:
  %_tree403 = load %T*, %T** %_tree383
  %_field_index_id404 = getelementptr %T, %T* %_tree403, i32 0, i32 2
  %_proj405 = load %T*, %T** %_field_index_id404
  %_bop406 = icmp ne %T* %_proj405, null
  %_tree407 = load %T*, %T** %_tree383
  %_field_index_id408 = getelementptr %T, %T* %_tree407, i32 0, i32 3
  %_proj409 = load %T*, %T** %_field_index_id408
  %_bop410 = icmp ne %T* %_proj409, null
  %_bop411 = or i1 %_bop406, %_bop410
  br i1 %_bop411, label %_then417, label %_else416
_then417:
  %_str413 = getelementptr [2 x i8], [2 x i8]* @_str_arr412, i32 0, i32 0
  call void @print_string(i8* %_str413)
  br label %_merge415
_else416:
  br label %_merge415
_merge415:
  %_tree422 = load %T*, %T** %_tree383
  %_field_index_id423 = getelementptr %T, %T* %_tree422, i32 0, i32 2
  %_proj424 = load %T*, %T** %_field_index_id423
  %_cmp418 = icmp ne %T* %_proj424, null
  br i1 %_cmp418, label %_nn421, label %_n420
_nn421:
  store %T* %_proj424, %T** %n
  %_n425 = load %T*, %T** %n
  call void @print_tree(%T* %_n425)
  br label %_m419
_n420:
  br label %_m419
_m419:
  %_tree427 = load %T*, %T** %_tree383
  %_field_index_id428 = getelementptr %T, %T* %_tree427, i32 0, i32 2
  %_proj429 = load %T*, %T** %_field_index_id428
  %_bop430 = icmp ne %T* %_proj429, null
  %_tree431 = load %T*, %T** %_tree383
  %_field_index_id432 = getelementptr %T, %T* %_tree431, i32 0, i32 3
  %_proj433 = load %T*, %T** %_field_index_id432
  %_bop434 = icmp ne %T* %_proj433, null
  %_bop435 = or i1 %_bop430, %_bop434
  br i1 %_bop435, label %_then441, label %_else440
_then441:
  %_str437 = getelementptr [2 x i8], [2 x i8]* @_str_arr436, i32 0, i32 0
  call void @print_string(i8* %_str437)
  br label %_merge439
_else440:
  br label %_merge439
_merge439:
  %_tree446 = load %T*, %T** %_tree383
  %_field_index_id447 = getelementptr %T, %T* %_tree446, i32 0, i32 3
  %_proj448 = load %T*, %T** %_field_index_id447
  %_cmp442 = icmp ne %T* %_proj448, null
  br i1 %_cmp442, label %_nn445, label %_n444
_nn445:
  store %T* %_proj448, %T** %n
  %_n449 = load %T*, %T** %n
  call void @print_tree(%T* %_n449)
  br label %_m443
_n444:
  br label %_m443
_m443:
  %_tree451 = load %T*, %T** %_tree383
  %_field_index_id452 = getelementptr %T, %T* %_tree451, i32 0, i32 2
  %_proj453 = load %T*, %T** %_field_index_id452
  %_bop454 = icmp ne %T* %_proj453, null
  %_tree455 = load %T*, %T** %_tree383
  %_field_index_id456 = getelementptr %T, %T* %_tree455, i32 0, i32 3
  %_proj457 = load %T*, %T** %_field_index_id456
  %_bop458 = icmp ne %T* %_proj457, null
  %_bop459 = or i1 %_bop454, %_bop458
  br i1 %_bop459, label %_then465, label %_else464
_then465:
  %_str461 = getelementptr [2 x i8], [2 x i8]* @_str_arr460, i32 0, i32 0
  call void @print_string(i8* %_str461)
  br label %_merge463
_else464:
  br label %_merge463
_merge463:
  ret void
}

define %T* @balance(%T* %_btree185) {
  %_btree186 = alloca %T*
  %_res189 = alloca %T*
  %l = alloca %T*
  %gl = alloca %T*
  %gl = alloca %T*
  %l = alloca %T*
  %gl = alloca %T*
  %gl = alloca %T*
  store %T* %_btree185, %T** %_btree186
  %_btree188 = load %T*, %T** %_btree186
  store %T* %_btree188, %T** %_res189
  %_btree195 = load %T*, %T** %_btree186
  %_field_index_id196 = getelementptr %T, %T* %_btree195, i32 0, i32 2
  %_proj197 = load %T*, %T** %_field_index_id196
  %_cmp191 = icmp ne %T* %_proj197, null
  br i1 %_cmp191, label %_nn194, label %_n193
_nn194:
  store %T* %_proj197, %T** %l
  %_l202 = load %T*, %T** %l
  %_field_index_id203 = getelementptr %T, %T* %_l202, i32 0, i32 2
  %_proj204 = load %T*, %T** %_field_index_id203
  %_cmp198 = icmp ne %T* %_proj204, null
  br i1 %_cmp198, label %_nn201, label %_n200
_nn201:
  store %T* %_proj204, %T** %gl
  %_btree205 = load %T*, %T** %_btree186
  %_field_index_id206 = getelementptr %T, %T* %_btree205, i32 0, i32 1
  %_proj207 = load i64, i64* %_field_index_id206
  %_bop208 = icmp ne i64 %_proj207, 0
  %_l209 = load %T*, %T** %l
  %_field_index_id210 = getelementptr %T, %T* %_l209, i32 0, i32 1
  %_proj211 = load i64, i64* %_field_index_id210
  %_bop212 = icmp eq i64 %_proj211, 0
  %_bop213 = and i1 %_bop208, %_bop212
  %_gl214 = load %T*, %T** %gl
  %_field_index_id215 = getelementptr %T, %T* %_gl214, i32 0, i32 1
  %_proj216 = load i64, i64* %_field_index_id215
  %_bop217 = icmp eq i64 %_proj216, 0
  %_bop218 = and i1 %_bop213, %_bop217
  br i1 %_bop218, label %_then236, label %_else235
_then236:
  %_l219 = load %T*, %T** %l
  store %T* %_l219, %T** %_res189
  %_btree221 = load %T*, %T** %_btree186
  %_field_index_id222 = getelementptr %T, %T* %_btree221, i32 0, i32 2
  %_l223 = load %T*, %T** %l
  %_field_index_id224 = getelementptr %T, %T* %_l223, i32 0, i32 3
  %_proj225 = load %T*, %T** %_field_index_id224
  store %T* %_proj225, %T** %_field_index_id222
  %_l227 = load %T*, %T** %l
  %_field_index_id228 = getelementptr %T, %T* %_l227, i32 0, i32 3
  %_btree229 = load %T*, %T** %_btree186
  store %T* %_btree229, %T** %_field_index_id228
  %_gl231 = load %T*, %T** %gl
  %_field_index_id232 = getelementptr %T, %T* %_gl231, i32 0, i32 1
  store i64 1, i64* %_field_index_id232
  br label %_merge234
_else235:
  br label %_merge234
_merge234:
  br label %_m199
_n200:
  br label %_m199
_m199:
  %_l241 = load %T*, %T** %l
  %_field_index_id242 = getelementptr %T, %T* %_l241, i32 0, i32 3
  %_proj243 = load %T*, %T** %_field_index_id242
  %_cmp237 = icmp ne %T* %_proj243, null
  br i1 %_cmp237, label %_nn240, label %_n239
_nn240:
  store %T* %_proj243, %T** %gl
  %_btree244 = load %T*, %T** %_btree186
  %_field_index_id245 = getelementptr %T, %T* %_btree244, i32 0, i32 1
  %_proj246 = load i64, i64* %_field_index_id245
  %_bop247 = icmp ne i64 %_proj246, 0
  %_l248 = load %T*, %T** %l
  %_field_index_id249 = getelementptr %T, %T* %_l248, i32 0, i32 1
  %_proj250 = load i64, i64* %_field_index_id249
  %_bop251 = icmp eq i64 %_proj250, 0
  %_bop252 = and i1 %_bop247, %_bop251
  %_gl253 = load %T*, %T** %gl
  %_field_index_id254 = getelementptr %T, %T* %_gl253, i32 0, i32 1
  %_proj255 = load i64, i64* %_field_index_id254
  %_bop256 = icmp eq i64 %_proj255, 0
  %_bop257 = and i1 %_bop252, %_bop256
  br i1 %_bop257, label %_then285, label %_else284
_then285:
  %_gl258 = load %T*, %T** %gl
  store %T* %_gl258, %T** %_res189
  %_l260 = load %T*, %T** %l
  %_field_index_id261 = getelementptr %T, %T* %_l260, i32 0, i32 3
  %_gl262 = load %T*, %T** %gl
  %_field_index_id263 = getelementptr %T, %T* %_gl262, i32 0, i32 3
  %_proj264 = load %T*, %T** %_field_index_id263
  store %T* %_proj264, %T** %_field_index_id261
  %_btree266 = load %T*, %T** %_btree186
  %_field_index_id267 = getelementptr %T, %T* %_btree266, i32 0, i32 2
  %_gl268 = load %T*, %T** %gl
  %_field_index_id269 = getelementptr %T, %T* %_gl268, i32 0, i32 2
  %_proj270 = load %T*, %T** %_field_index_id269
  store %T* %_proj270, %T** %_field_index_id267
  %_gl272 = load %T*, %T** %gl
  %_field_index_id273 = getelementptr %T, %T* %_gl272, i32 0, i32 2
  %_l274 = load %T*, %T** %l
  store %T* %_l274, %T** %_field_index_id273
  %_gl276 = load %T*, %T** %gl
  %_field_index_id277 = getelementptr %T, %T* %_gl276, i32 0, i32 3
  %_btree278 = load %T*, %T** %_btree186
  store %T* %_btree278, %T** %_field_index_id277
  %_l280 = load %T*, %T** %l
  %_field_index_id281 = getelementptr %T, %T* %_l280, i32 0, i32 1
  store i64 1, i64* %_field_index_id281
  br label %_merge283
_else284:
  br label %_merge283
_merge283:
  br label %_m238
_n239:
  br label %_m238
_m238:
  br label %_m192
_n193:
  br label %_m192
_m192:
  %_btree290 = load %T*, %T** %_btree186
  %_field_index_id291 = getelementptr %T, %T* %_btree290, i32 0, i32 3
  %_proj292 = load %T*, %T** %_field_index_id291
  %_cmp286 = icmp ne %T* %_proj292, null
  br i1 %_cmp286, label %_nn289, label %_n288
_nn289:
  store %T* %_proj292, %T** %l
  %_l297 = load %T*, %T** %l
  %_field_index_id298 = getelementptr %T, %T* %_l297, i32 0, i32 2
  %_proj299 = load %T*, %T** %_field_index_id298
  %_cmp293 = icmp ne %T* %_proj299, null
  br i1 %_cmp293, label %_nn296, label %_n295
_nn296:
  store %T* %_proj299, %T** %gl
  %_btree300 = load %T*, %T** %_btree186
  %_field_index_id301 = getelementptr %T, %T* %_btree300, i32 0, i32 1
  %_proj302 = load i64, i64* %_field_index_id301
  %_bop303 = icmp ne i64 %_proj302, 0
  %_l304 = load %T*, %T** %l
  %_field_index_id305 = getelementptr %T, %T* %_l304, i32 0, i32 1
  %_proj306 = load i64, i64* %_field_index_id305
  %_bop307 = icmp eq i64 %_proj306, 0
  %_bop308 = and i1 %_bop303, %_bop307
  %_gl309 = load %T*, %T** %gl
  %_field_index_id310 = getelementptr %T, %T* %_gl309, i32 0, i32 1
  %_proj311 = load i64, i64* %_field_index_id310
  %_bop312 = icmp eq i64 %_proj311, 0
  %_bop313 = and i1 %_bop308, %_bop312
  br i1 %_bop313, label %_then341, label %_else340
_then341:
  %_gl314 = load %T*, %T** %gl
  store %T* %_gl314, %T** %_res189
  %_l316 = load %T*, %T** %l
  %_field_index_id317 = getelementptr %T, %T* %_l316, i32 0, i32 2
  %_gl318 = load %T*, %T** %gl
  %_field_index_id319 = getelementptr %T, %T* %_gl318, i32 0, i32 2
  %_proj320 = load %T*, %T** %_field_index_id319
  store %T* %_proj320, %T** %_field_index_id317
  %_btree322 = load %T*, %T** %_btree186
  %_field_index_id323 = getelementptr %T, %T* %_btree322, i32 0, i32 3
  %_gl324 = load %T*, %T** %gl
  %_field_index_id325 = getelementptr %T, %T* %_gl324, i32 0, i32 3
  %_proj326 = load %T*, %T** %_field_index_id325
  store %T* %_proj326, %T** %_field_index_id323
  %_gl328 = load %T*, %T** %gl
  %_field_index_id329 = getelementptr %T, %T* %_gl328, i32 0, i32 3
  %_l330 = load %T*, %T** %l
  store %T* %_l330, %T** %_field_index_id329
  %_gl332 = load %T*, %T** %gl
  %_field_index_id333 = getelementptr %T, %T* %_gl332, i32 0, i32 2
  %_btree334 = load %T*, %T** %_btree186
  store %T* %_btree334, %T** %_field_index_id333
  %_l336 = load %T*, %T** %l
  %_field_index_id337 = getelementptr %T, %T* %_l336, i32 0, i32 1
  store i64 1, i64* %_field_index_id337
  br label %_merge339
_else340:
  br label %_merge339
_merge339:
  br label %_m294
_n295:
  br label %_m294
_m294:
  %_l346 = load %T*, %T** %l
  %_field_index_id347 = getelementptr %T, %T* %_l346, i32 0, i32 3
  %_proj348 = load %T*, %T** %_field_index_id347
  %_cmp342 = icmp ne %T* %_proj348, null
  br i1 %_cmp342, label %_nn345, label %_n344
_nn345:
  store %T* %_proj348, %T** %gl
  %_btree349 = load %T*, %T** %_btree186
  %_field_index_id350 = getelementptr %T, %T* %_btree349, i32 0, i32 1
  %_proj351 = load i64, i64* %_field_index_id350
  %_bop352 = icmp ne i64 %_proj351, 0
  %_l353 = load %T*, %T** %l
  %_field_index_id354 = getelementptr %T, %T* %_l353, i32 0, i32 1
  %_proj355 = load i64, i64* %_field_index_id354
  %_bop356 = icmp eq i64 %_proj355, 0
  %_bop357 = and i1 %_bop352, %_bop356
  %_gl358 = load %T*, %T** %gl
  %_field_index_id359 = getelementptr %T, %T* %_gl358, i32 0, i32 1
  %_proj360 = load i64, i64* %_field_index_id359
  %_bop361 = icmp eq i64 %_proj360, 0
  %_bop362 = and i1 %_bop357, %_bop361
  br i1 %_bop362, label %_then380, label %_else379
_then380:
  %_l363 = load %T*, %T** %l
  store %T* %_l363, %T** %_res189
  %_btree365 = load %T*, %T** %_btree186
  %_field_index_id366 = getelementptr %T, %T* %_btree365, i32 0, i32 3
  %_l367 = load %T*, %T** %l
  %_field_index_id368 = getelementptr %T, %T* %_l367, i32 0, i32 2
  %_proj369 = load %T*, %T** %_field_index_id368
  store %T* %_proj369, %T** %_field_index_id366
  %_l371 = load %T*, %T** %l
  %_field_index_id372 = getelementptr %T, %T* %_l371, i32 0, i32 2
  %_btree373 = load %T*, %T** %_btree186
  store %T* %_btree373, %T** %_field_index_id372
  %_gl375 = load %T*, %T** %gl
  %_field_index_id376 = getelementptr %T, %T* %_gl375, i32 0, i32 1
  store i64 1, i64* %_field_index_id376
  br label %_merge378
_else379:
  br label %_merge378
_merge378:
  br label %_m343
_n344:
  br label %_m343
_m343:
  br label %_m287
_n288:
  br label %_m287
_m287:
  %_res381 = load %T*, %T** %_res189
  ret %T* %_res381
}

define %T* @insert(%T* %_btree105, i64 %_newval102) {
  %_btree106 = alloca %T*
  %_newval103 = alloca i64
  %n = alloca %T*
  %n = alloca %T*
  store %T* %_btree105, %T** %_btree106
  store i64 %_newval102, i64* %_newval103
  %_newval108 = load i64, i64* %_newval103
  %_btree109 = load %T*, %T** %_btree106
  %_field_index_id110 = getelementptr %T, %T* %_btree109, i32 0, i32 0
  %_proj111 = load i64, i64* %_field_index_id110
  %_bop112 = icmp slt i64 %_newval108, %_proj111
  br i1 %_bop112, label %_then183, label %_else182
_then183:
  %_btree117 = load %T*, %T** %_btree106
  %_field_index_id118 = getelementptr %T, %T* %_btree117, i32 0, i32 2
  %_proj119 = load %T*, %T** %_field_index_id118
  %_cmp113 = icmp ne %T* %_proj119, null
  br i1 %_cmp113, label %_nn116, label %_n115
_nn116:
  store %T* %_proj119, %T** %n
  %_btree120 = load %T*, %T** %_btree106
  %_field_index_id121 = getelementptr %T, %T* %_btree120, i32 0, i32 2
  %_newval122 = load i64, i64* %_newval103
  %_n123 = load %T*, %T** %n
  %_result124 = call %T* @insert(%T* %_n123, i64 %_newval122)
  store %T* %_result124, %T** %_field_index_id121
  %_btree126 = load %T*, %T** %_btree106
  %_result127 = call %T* @balance(%T* %_btree126)
  store %T* %_result127, %T** %_btree106
  br label %_m114
_n115:
  %_btree129 = load %T*, %T** %_btree106
  %_field_index_id130 = getelementptr %T, %T* %_btree129, i32 0, i32 2
  %_raw_struct131 = call i64* @oat_malloc(i64 32)
  %_struct132 = bitcast i64* %_raw_struct131 to %T*
  %_newval133 = load i64, i64* %_newval103
  %_get_field_ptr_id135 = getelementptr %T, %T* %_struct132, i32 0, i32 0
  %_get_field_value_id134 = bitcast i64 %_newval133 to i64
  store i64 %_get_field_value_id134, i64* %_get_field_ptr_id135
  %_get_field_ptr_id137 = getelementptr %T, %T* %_struct132, i32 0, i32 1
  %_get_field_value_id136 = bitcast i64 0 to i64
  store i64 %_get_field_value_id136, i64* %_get_field_ptr_id137
  %_get_field_ptr_id139 = getelementptr %T, %T* %_struct132, i32 0, i32 2
  %_get_field_value_id138 = bitcast %T* null to %T*
  store %T* %_get_field_value_id138, %T** %_get_field_ptr_id139
  %_get_field_ptr_id141 = getelementptr %T, %T* %_struct132, i32 0, i32 3
  %_get_field_value_id140 = bitcast %T* null to %T*
  store %T* %_get_field_value_id140, %T** %_get_field_ptr_id141
  store %T* %_struct132, %T** %_field_index_id130
  br label %_m114
_m114:
  br label %_merge181
_else182:
  %_newval143 = load i64, i64* %_newval103
  %_btree144 = load %T*, %T** %_btree106
  %_field_index_id145 = getelementptr %T, %T* %_btree144, i32 0, i32 0
  %_proj146 = load i64, i64* %_field_index_id145
  %_bop147 = icmp sgt i64 %_newval143, %_proj146
  br i1 %_bop147, label %_then180, label %_else179
_then180:
  %_btree152 = load %T*, %T** %_btree106
  %_field_index_id153 = getelementptr %T, %T* %_btree152, i32 0, i32 3
  %_proj154 = load %T*, %T** %_field_index_id153
  %_cmp148 = icmp ne %T* %_proj154, null
  br i1 %_cmp148, label %_nn151, label %_n150
_nn151:
  store %T* %_proj154, %T** %n
  %_btree155 = load %T*, %T** %_btree106
  %_field_index_id156 = getelementptr %T, %T* %_btree155, i32 0, i32 3
  %_newval157 = load i64, i64* %_newval103
  %_n158 = load %T*, %T** %n
  %_result159 = call %T* @insert(%T* %_n158, i64 %_newval157)
  store %T* %_result159, %T** %_field_index_id156
  %_btree161 = load %T*, %T** %_btree106
  %_result162 = call %T* @balance(%T* %_btree161)
  store %T* %_result162, %T** %_btree106
  br label %_m149
_n150:
  %_btree164 = load %T*, %T** %_btree106
  %_field_index_id165 = getelementptr %T, %T* %_btree164, i32 0, i32 3
  %_raw_struct166 = call i64* @oat_malloc(i64 32)
  %_struct167 = bitcast i64* %_raw_struct166 to %T*
  %_newval168 = load i64, i64* %_newval103
  %_get_field_ptr_id170 = getelementptr %T, %T* %_struct167, i32 0, i32 0
  %_get_field_value_id169 = bitcast i64 %_newval168 to i64
  store i64 %_get_field_value_id169, i64* %_get_field_ptr_id170
  %_get_field_ptr_id172 = getelementptr %T, %T* %_struct167, i32 0, i32 1
  %_get_field_value_id171 = bitcast i64 0 to i64
  store i64 %_get_field_value_id171, i64* %_get_field_ptr_id172
  %_get_field_ptr_id174 = getelementptr %T, %T* %_struct167, i32 0, i32 2
  %_get_field_value_id173 = bitcast %T* null to %T*
  store %T* %_get_field_value_id173, %T** %_get_field_ptr_id174
  %_get_field_ptr_id176 = getelementptr %T, %T* %_struct167, i32 0, i32 3
  %_get_field_value_id175 = bitcast %T* null to %T*
  store %T* %_get_field_value_id175, %T** %_get_field_ptr_id176
  store %T* %_struct167, %T** %_field_index_id165
  br label %_m149
_m149:
  br label %_merge178
_else179:
  br label %_merge178
_merge178:
  br label %_merge181
_merge181:
  %_btree184 = load %T*, %T** %_btree106
  ret %T* %_btree184
}

define i64 @program(i64 %_argc4, { i64, [0 x i8*] }* %_argv1) {
  %_argc5 = alloca i64
  %_argv2 = alloca { i64, [0 x i8*] }*
  %_t77 = alloca %T*
  %_newT86 = alloca %T*
  store i64 %_argc4, i64* %_argc5
  store { i64, [0 x i8*] }* %_argv1, { i64, [0 x i8*] }** %_argv2
  %_raw_struct7 = call i64* @oat_malloc(i64 32)
  %_struct8 = bitcast i64* %_raw_struct7 to %T*
  %_raw_struct13 = call i64* @oat_malloc(i64 32)
  %_struct14 = bitcast i64* %_raw_struct13 to %T*
  %_raw_struct19 = call i64* @oat_malloc(i64 32)
  %_struct20 = bitcast i64* %_raw_struct19 to %T*
  %_get_field_ptr_id22 = getelementptr %T, %T* %_struct20, i32 0, i32 0
  %_get_field_value_id21 = bitcast i64 5 to i64
  store i64 %_get_field_value_id21, i64* %_get_field_ptr_id22
  %_get_field_ptr_id24 = getelementptr %T, %T* %_struct20, i32 0, i32 1
  %_get_field_value_id23 = bitcast i64 0 to i64
  store i64 %_get_field_value_id23, i64* %_get_field_ptr_id24
  %_get_field_ptr_id26 = getelementptr %T, %T* %_struct20, i32 0, i32 2
  %_get_field_value_id25 = bitcast %T* null to %T*
  store %T* %_get_field_value_id25, %T** %_get_field_ptr_id26
  %_get_field_ptr_id28 = getelementptr %T, %T* %_struct20, i32 0, i32 3
  %_get_field_value_id27 = bitcast %T* null to %T*
  store %T* %_get_field_value_id27, %T** %_get_field_ptr_id28
  %_raw_struct31 = call i64* @oat_malloc(i64 32)
  %_struct32 = bitcast i64* %_raw_struct31 to %T*
  %_get_field_ptr_id34 = getelementptr %T, %T* %_struct32, i32 0, i32 0
  %_get_field_value_id33 = bitcast i64 15 to i64
  store i64 %_get_field_value_id33, i64* %_get_field_ptr_id34
  %_get_field_ptr_id36 = getelementptr %T, %T* %_struct32, i32 0, i32 1
  %_get_field_value_id35 = bitcast i64 0 to i64
  store i64 %_get_field_value_id35, i64* %_get_field_ptr_id36
  %_get_field_ptr_id38 = getelementptr %T, %T* %_struct32, i32 0, i32 2
  %_get_field_value_id37 = bitcast %T* null to %T*
  store %T* %_get_field_value_id37, %T** %_get_field_ptr_id38
  %_get_field_ptr_id40 = getelementptr %T, %T* %_struct32, i32 0, i32 3
  %_get_field_value_id39 = bitcast %T* null to %T*
  store %T* %_get_field_value_id39, %T** %_get_field_ptr_id40
  %_get_field_ptr_id16 = getelementptr %T, %T* %_struct14, i32 0, i32 0
  %_get_field_value_id15 = bitcast i64 10 to i64
  store i64 %_get_field_value_id15, i64* %_get_field_ptr_id16
  %_get_field_ptr_id18 = getelementptr %T, %T* %_struct14, i32 0, i32 1
  %_get_field_value_id17 = bitcast i64 1 to i64
  store i64 %_get_field_value_id17, i64* %_get_field_ptr_id18
  %_get_field_ptr_id30 = getelementptr %T, %T* %_struct14, i32 0, i32 2
  %_get_field_value_id29 = bitcast %T* %_struct20 to %T*
  store %T* %_get_field_value_id29, %T** %_get_field_ptr_id30
  %_get_field_ptr_id42 = getelementptr %T, %T* %_struct14, i32 0, i32 3
  %_get_field_value_id41 = bitcast %T* %_struct32 to %T*
  store %T* %_get_field_value_id41, %T** %_get_field_ptr_id42
  %_raw_struct45 = call i64* @oat_malloc(i64 32)
  %_struct46 = bitcast i64* %_raw_struct45 to %T*
  %_raw_struct51 = call i64* @oat_malloc(i64 32)
  %_struct52 = bitcast i64* %_raw_struct51 to %T*
  %_get_field_ptr_id54 = getelementptr %T, %T* %_struct52, i32 0, i32 0
  %_get_field_value_id53 = bitcast i64 25 to i64
  store i64 %_get_field_value_id53, i64* %_get_field_ptr_id54
  %_get_field_ptr_id56 = getelementptr %T, %T* %_struct52, i32 0, i32 1
  %_get_field_value_id55 = bitcast i64 0 to i64
  store i64 %_get_field_value_id55, i64* %_get_field_ptr_id56
  %_get_field_ptr_id58 = getelementptr %T, %T* %_struct52, i32 0, i32 2
  %_get_field_value_id57 = bitcast %T* null to %T*
  store %T* %_get_field_value_id57, %T** %_get_field_ptr_id58
  %_get_field_ptr_id60 = getelementptr %T, %T* %_struct52, i32 0, i32 3
  %_get_field_value_id59 = bitcast %T* null to %T*
  store %T* %_get_field_value_id59, %T** %_get_field_ptr_id60
  %_raw_struct63 = call i64* @oat_malloc(i64 32)
  %_struct64 = bitcast i64* %_raw_struct63 to %T*
  %_get_field_ptr_id66 = getelementptr %T, %T* %_struct64, i32 0, i32 0
  %_get_field_value_id65 = bitcast i64 35 to i64
  store i64 %_get_field_value_id65, i64* %_get_field_ptr_id66
  %_get_field_ptr_id68 = getelementptr %T, %T* %_struct64, i32 0, i32 1
  %_get_field_value_id67 = bitcast i64 0 to i64
  store i64 %_get_field_value_id67, i64* %_get_field_ptr_id68
  %_get_field_ptr_id70 = getelementptr %T, %T* %_struct64, i32 0, i32 2
  %_get_field_value_id69 = bitcast %T* null to %T*
  store %T* %_get_field_value_id69, %T** %_get_field_ptr_id70
  %_get_field_ptr_id72 = getelementptr %T, %T* %_struct64, i32 0, i32 3
  %_get_field_value_id71 = bitcast %T* null to %T*
  store %T* %_get_field_value_id71, %T** %_get_field_ptr_id72
  %_get_field_ptr_id48 = getelementptr %T, %T* %_struct46, i32 0, i32 0
  %_get_field_value_id47 = bitcast i64 30 to i64
  store i64 %_get_field_value_id47, i64* %_get_field_ptr_id48
  %_get_field_ptr_id50 = getelementptr %T, %T* %_struct46, i32 0, i32 1
  %_get_field_value_id49 = bitcast i64 1 to i64
  store i64 %_get_field_value_id49, i64* %_get_field_ptr_id50
  %_get_field_ptr_id62 = getelementptr %T, %T* %_struct46, i32 0, i32 2
  %_get_field_value_id61 = bitcast %T* %_struct52 to %T*
  store %T* %_get_field_value_id61, %T** %_get_field_ptr_id62
  %_get_field_ptr_id74 = getelementptr %T, %T* %_struct46, i32 0, i32 3
  %_get_field_value_id73 = bitcast %T* %_struct64 to %T*
  store %T* %_get_field_value_id73, %T** %_get_field_ptr_id74
  %_get_field_ptr_id10 = getelementptr %T, %T* %_struct8, i32 0, i32 0
  %_get_field_value_id9 = bitcast i64 20 to i64
  store i64 %_get_field_value_id9, i64* %_get_field_ptr_id10
  %_get_field_ptr_id12 = getelementptr %T, %T* %_struct8, i32 0, i32 1
  %_get_field_value_id11 = bitcast i64 1 to i64
  store i64 %_get_field_value_id11, i64* %_get_field_ptr_id12
  %_get_field_ptr_id44 = getelementptr %T, %T* %_struct8, i32 0, i32 2
  %_get_field_value_id43 = bitcast %T* %_struct14 to %T*
  store %T* %_get_field_value_id43, %T** %_get_field_ptr_id44
  %_get_field_ptr_id76 = getelementptr %T, %T* %_struct8, i32 0, i32 3
  %_get_field_value_id75 = bitcast %T* %_struct46 to %T*
  store %T* %_get_field_value_id75, %T** %_get_field_ptr_id76
  store %T* %_struct8, %T** %_t77
  %_str80 = getelementptr [7 x i8], [7 x i8]* @_str_arr79, i32 0, i32 0
  call void @print_string(i8* %_str80)
  %_t82 = load %T*, %T** %_t77
  call void @print_tree(%T* %_t82)
  %_t84 = load %T*, %T** %_t77
  %_result85 = call %T* @insert(%T* %_t84, i64 17)
  store %T* %_result85, %T** %_newT86
  %_newT88 = load %T*, %T** %_newT86
  %_result89 = call %T* @insert(%T* %_newT88, i64 3)
  store %T* %_result89, %T** %_newT86
  %_newT91 = load %T*, %T** %_newT86
  %_field_index_id92 = getelementptr %T, %T* %_newT91, i32 0, i32 1
  store i64 1, i64* %_field_index_id92
  %_str95 = getelementptr [11 x i8], [11 x i8]* @_str_arr94, i32 0, i32 0
  call void @print_string(i8* %_str95)
  %_newT97 = load %T*, %T** %_newT86
  call void @print_tree(%T* %_newT97)
  %_newT99 = load %T*, %T** %_newT86
  %_field_index_id100 = getelementptr %T, %T* %_newT99, i32 0, i32 0
  %_proj101 = load i64, i64* %_field_index_id100
  ret i64 %_proj101
}


declare i64* @oat_malloc(i64)
declare i64* @oat_alloc_array(i64)
declare void @oat_assert_not_null(i8*)
declare void @oat_assert_array_length(i64*, i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
