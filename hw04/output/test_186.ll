; generated from: hw4programs/matrixmult.oat
target triple = "x86_64-apple-macosx10.13.0"
@_raw_string3191 = global [2 x i8] c" \00"
@_raw_string3199 = global [2 x i8] c"	\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3323 = alloca i64
  %_argv3324 = alloca { i64, [0 x i8*] }*
  %_3325 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3348 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3387 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc3323
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3324
  %_raw_array3336 = call i64* @oat_alloc_array(i64 3)
  %_array3337 = bitcast i64* %_raw_array3336 to { i64, [0 x i64] }*
  %_3342 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3337, i32 0, i32 1, i32 2
  store i64 1, i64* %_3342
  %_3340 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3337, i32 0, i32 1, i32 1
  store i64 0, i64* %_3340
  %_3338 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3337, i32 0, i32 1, i32 0
  store i64 2, i64* %_3338
  %_raw_array3328 = call i64* @oat_alloc_array(i64 3)
  %_array3329 = bitcast i64* %_raw_array3328 to { i64, [0 x i64] }*
  %_3334 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3329, i32 0, i32 1, i32 2
  store i64 4, i64* %_3334
  %_3332 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3329, i32 0, i32 1, i32 1
  store i64 3, i64* %_3332
  %_3330 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3329, i32 0, i32 1, i32 0
  store i64 1, i64* %_3330
  %_raw_array3326 = call i64* @oat_alloc_array(i64 2)
  %_array3327 = bitcast i64* %_raw_array3326 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_3346 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3327, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3337, { i64, [0 x i64] }** %_3346
  %_3344 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3327, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3329, { i64, [0 x i64] }** %_3344
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3327, { i64, [0 x { i64, [0 x i64] }*] }** %_3325
  %_raw_array3371 = call i64* @oat_alloc_array(i64 4)
  %_array3372 = bitcast i64* %_raw_array3371 to { i64, [0 x i64] }*
  %_3379 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3372, i32 0, i32 1, i32 3
  store i64 4, i64* %_3379
  %_3377 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3372, i32 0, i32 1, i32 2
  store i64 1, i64* %_3377
  %_3375 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3372, i32 0, i32 1, i32 1
  store i64 2, i64* %_3375
  %_3373 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3372, i32 0, i32 1, i32 0
  store i64 3, i64* %_3373
  %_raw_array3361 = call i64* @oat_alloc_array(i64 4)
  %_array3362 = bitcast i64* %_raw_array3361 to { i64, [0 x i64] }*
  %_3369 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3362, i32 0, i32 1, i32 3
  store i64 2, i64* %_3369
  %_3367 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3362, i32 0, i32 1, i32 2
  store i64 2, i64* %_3367
  %_3365 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3362, i32 0, i32 1, i32 1
  store i64 2, i64* %_3365
  %_3363 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3362, i32 0, i32 1, i32 0
  store i64 2, i64* %_3363
  %_raw_array3351 = call i64* @oat_alloc_array(i64 4)
  %_array3352 = bitcast i64* %_raw_array3351 to { i64, [0 x i64] }*
  %_3359 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3352, i32 0, i32 1, i32 3
  store i64 1, i64* %_3359
  %_3357 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3352, i32 0, i32 1, i32 2
  store i64 3, i64* %_3357
  %_3355 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3352, i32 0, i32 1, i32 1
  store i64 2, i64* %_3355
  %_3353 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3352, i32 0, i32 1, i32 0
  store i64 1, i64* %_3353
  %_raw_array3349 = call i64* @oat_alloc_array(i64 3)
  %_array3350 = bitcast i64* %_raw_array3349 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_3385 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3350, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3372, { i64, [0 x i64] }** %_3385
  %_3383 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3350, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3362, { i64, [0 x i64] }** %_3383
  %_3381 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3350, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3352, { i64, [0 x i64] }** %_3381
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3350, { i64, [0 x { i64, [0 x i64] }*] }** %_3348
  %_raw_array3400 = call i64* @oat_alloc_array(i64 4)
  %_array3401 = bitcast i64* %_raw_array3400 to { i64, [0 x i64] }*
  %_3408 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3401, i32 0, i32 1, i32 3
  store i64 0, i64* %_3408
  %_3406 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3401, i32 0, i32 1, i32 2
  store i64 0, i64* %_3406
  %_3404 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3401, i32 0, i32 1, i32 1
  store i64 0, i64* %_3404
  %_3402 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3401, i32 0, i32 1, i32 0
  store i64 0, i64* %_3402
  %_raw_array3390 = call i64* @oat_alloc_array(i64 4)
  %_array3391 = bitcast i64* %_raw_array3390 to { i64, [0 x i64] }*
  %_3398 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3391, i32 0, i32 1, i32 3
  store i64 0, i64* %_3398
  %_3396 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3391, i32 0, i32 1, i32 2
  store i64 0, i64* %_3396
  %_3394 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3391, i32 0, i32 1, i32 1
  store i64 0, i64* %_3394
  %_3392 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3391, i32 0, i32 1, i32 0
  store i64 0, i64* %_3392
  %_raw_array3388 = call i64* @oat_alloc_array(i64 2)
  %_array3389 = bitcast i64* %_raw_array3388 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_3412 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3389, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3401, { i64, [0 x i64] }** %_3412
  %_3410 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3389, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3391, { i64, [0 x i64] }** %_3410
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3389, { i64, [0 x { i64, [0 x i64] }*] }** %_3387
  %_id_a3414 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3325
  %_id_b3415 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3348
  %_id_c3416 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3387
  call void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_id_a3414, { i64, [0 x { i64, [0 x i64] }*] }* %_id_b3415, { i64, [0 x { i64, [0 x i64] }*] }* %_id_c3416)
  %_id_c3418 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3387
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_id_c3418, i64 2)
  %_id_a3420 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3325
  %_id_b3421 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3348
  %_id_c3422 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3387
  call void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_id_a3420, { i64, [0 x { i64, [0 x i64] }*] }* %_id_b3421, { i64, [0 x { i64, [0 x i64] }*] }* %_id_c3422)
  %_id_c3424 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3387
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_id_c3424, i64 2)
  ret i64 0
}

define void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_a13267 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23268 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a33269 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3270 = alloca i64
  %_3273 = alloca i64
  %_3276 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a13267
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a23268
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_a33269
  store i64 0, i64* %_3270
  br label %_start3320
_start3320:
  %_id_i3271 = load i64, i64* %_3270
  %_3272 = icmp slt i64 %_id_i3271, 2
  br i1 %_3272, label %_body3321, label %_else3322
_body3321:
  store i64 0, i64* %_3273
  br label %_start3315
_start3315:
  %_id_j3274 = load i64, i64* %_3273
  %_3275 = icmp slt i64 %_id_j3274, 4
  br i1 %_3275, label %_body3316, label %_else3317
_body3316:
  store i64 0, i64* %_3276
  br label %_start3310
_start3310:
  %_id_k3277 = load i64, i64* %_3276
  %_3278 = icmp slt i64 %_id_k3277, 3
  br i1 %_3278, label %_body3311, label %_else3312
_body3311:
  %_id_a23293 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23268
  %_id_k3294 = load i64, i64* %_3276
  %_index_pointer3295 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a23293, i32 0, i32 1, i64 %_id_k3294
  %_index_value3296 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3295
  %_id_j3297 = load i64, i64* %_3273
  %_index_pointer3298 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3296, i32 0, i32 1, i64 %_id_j3297
  %_index_value3299 = load i64, i64* %_index_pointer3298
  %_id_a13286 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13267
  %_id_i3287 = load i64, i64* %_3270
  %_index_pointer3288 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a13286, i32 0, i32 1, i64 %_id_i3287
  %_index_value3289 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3288
  %_id_k3290 = load i64, i64* %_3276
  %_index_pointer3291 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3289, i32 0, i32 1, i64 %_id_k3290
  %_index_value3292 = load i64, i64* %_index_pointer3291
  %_3300 = mul i64 %_index_value3292, %_index_value3299
  %_id_a33279 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33269
  %_id_i3280 = load i64, i64* %_3270
  %_index_pointer3281 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a33279, i32 0, i32 1, i64 %_id_i3280
  %_index_value3282 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3281
  %_id_j3283 = load i64, i64* %_3273
  %_index_pointer3284 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3282, i32 0, i32 1, i64 %_id_j3283
  %_index_value3285 = load i64, i64* %_index_pointer3284
  %_3301 = add i64 %_index_value3285, %_3300
  %_id_a33302 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33269
  %_id_i3303 = load i64, i64* %_3270
  %_index_pointer3304 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a33302, i32 0, i32 1, i64 %_id_i3303
  %_index_value3305 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3304
  %_id_j3306 = load i64, i64* %_3273
  %_3307 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3305, i32 0, i32 1, i64 %_id_j3306
  store i64 %_3301, i64* %_3307
  %_id_k3308 = load i64, i64* %_3276
  %_3309 = add i64 %_id_k3308, 1
  store i64 %_3309, i64* %_3276
  br label %_start3310
_else3312:
  %_id_j3313 = load i64, i64* %_3273
  %_3314 = add i64 %_id_j3313, 1
  store i64 %_3314, i64* %_3273
  br label %_start3315
_else3317:
  %_id_i3318 = load i64, i64* %_3270
  %_3319 = add i64 %_id_i3318, 1
  store i64 %_3319, i64* %_3270
  br label %_start3320
_else3322:
  ret void
}

define void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_a13237 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23238 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a33239 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3240 = alloca i64
  %_3243 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a13237
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a23238
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_a33239
  store i64 0, i64* %_3240
  br label %_start3264
_start3264:
  %_id_i3241 = load i64, i64* %_3240
  %_3242 = icmp slt i64 %_id_i3241, 2
  br i1 %_3242, label %_body3265, label %_else3266
_body3265:
  store i64 0, i64* %_3243
  br label %_start3259
_start3259:
  %_id_j3244 = load i64, i64* %_3243
  %_3245 = icmp slt i64 %_id_j3244, 4
  br i1 %_3245, label %_body3260, label %_else3261
_body3260:
  %_id_a13246 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13237
  %_id_a23247 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23238
  %_id_i3248 = load i64, i64* %_3240
  %_id_j3249 = load i64, i64* %_3243
  %_3250 = call i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_id_a13246, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a23247, i64 %_id_i3248, i64 %_id_j3249)
  %_id_a33251 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33239
  %_id_i3252 = load i64, i64* %_3240
  %_index_pointer3253 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a33251, i32 0, i32 1, i64 %_id_i3252
  %_index_value3254 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3253
  %_id_j3255 = load i64, i64* %_3243
  %_3256 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3254, i32 0, i32 1, i64 %_id_j3255
  store i64 %_3250, i64* %_3256
  %_id_j3257 = load i64, i64* %_3243
  %_3258 = add i64 %_id_j3257, 1
  store i64 %_3258, i64* %_3243
  br label %_start3259
_else3261:
  %_id_i3262 = load i64, i64* %_3240
  %_3263 = add i64 %_id_i3262, 1
  store i64 %_3263, i64* %_3240
  br label %_start3264
_else3266:
  ret void
}

define i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, i64 %row, i64 %col) {
  %_a13206 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23207 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_row3208 = alloca i64
  %_col3209 = alloca i64
  %_3210 = alloca i64
  %_3211 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a13206
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a23207
  store i64 %row, i64* %_row3208
  store i64 %col, i64* %_col3209
  store i64 0, i64* %_3210
  store i64 0, i64* %_3211
  br label %_start3233
_start3233:
  %_id_k3212 = load i64, i64* %_3211
  %_3213 = icmp slt i64 %_id_k3212, 3
  br i1 %_3213, label %_body3234, label %_else3235
_body3234:
  %_id_a23222 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23207
  %_id_k3223 = load i64, i64* %_3211
  %_index_pointer3224 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a23222, i32 0, i32 1, i64 %_id_k3223
  %_index_value3225 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3224
  %_id_col3226 = load i64, i64* %_col3209
  %_index_pointer3227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3225, i32 0, i32 1, i64 %_id_col3226
  %_index_value3228 = load i64, i64* %_index_pointer3227
  %_id_a13215 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13206
  %_id_row3216 = load i64, i64* %_row3208
  %_index_pointer3217 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a13215, i32 0, i32 1, i64 %_id_row3216
  %_index_value3218 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3217
  %_id_k3219 = load i64, i64* %_3211
  %_index_pointer3220 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3218, i32 0, i32 1, i64 %_id_k3219
  %_index_value3221 = load i64, i64* %_index_pointer3220
  %_3229 = mul i64 %_index_value3221, %_index_value3228
  %_id_sum3214 = load i64, i64* %_3210
  %_3230 = add i64 %_id_sum3214, %_3229
  store i64 %_3230, i64* %_3210
  %_id_k3231 = load i64, i64* %_3211
  %_3232 = add i64 %_id_k3231, 1
  store i64 %_3232, i64* %_3211
  br label %_start3233
_else3235:
  %_id_sum3236 = load i64, i64* %_3210
  ret i64 %_id_sum3236
}

define void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %ar, i64 %n) {
  %_ar3173 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_n3174 = alloca i64
  %_3175 = alloca i64
  %_3179 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %ar, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3173
  store i64 %n, i64* %_n3174
  store i64 0, i64* %_3175
  br label %_start3203
_start3203:
  %_id_n3177 = load i64, i64* %_n3174
  %_id_i3176 = load i64, i64* %_3175
  %_3178 = icmp slt i64 %_id_i3176, %_id_n3177
  br i1 %_3178, label %_body3204, label %_else3205
_body3204:
  store i64 0, i64* %_3179
  br label %_start3195
_start3195:
  %_id_j3180 = load i64, i64* %_3179
  %_3181 = icmp slt i64 %_id_j3180, 4
  br i1 %_3181, label %_body3196, label %_else3197
_body3196:
  %_id_ar3182 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3173
  %_id_i3183 = load i64, i64* %_3175
  %_index_pointer3184 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_ar3182, i32 0, i32 1, i64 %_id_i3183
  %_index_value3185 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer3184
  %_id_j3186 = load i64, i64* %_3179
  %_index_pointer3187 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value3185, i32 0, i32 1, i64 %_id_j3186
  %_index_value3188 = load i64, i64* %_index_pointer3187
  call void @print_int(i64 %_index_value3188)
  %_result_id3190 = bitcast [2 x i8]* @_raw_string3191 to i8*
  call void @print_string(i8* %_result_id3190)
  %_id_j3193 = load i64, i64* %_3179
  %_3194 = add i64 %_id_j3193, 1
  store i64 %_3194, i64* %_3179
  br label %_start3195
_else3197:
  %_result_id3198 = bitcast [2 x i8]* @_raw_string3199 to i8*
  call void @print_string(i8* %_result_id3198)
  %_id_i3201 = load i64, i64* %_3175
  %_3202 = add i64 %_id_i3201, 1
  store i64 %_3202, i64* %_3175
  br label %_start3203
_else3205:
  ret void
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
