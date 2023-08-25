; generated from: hw4programs/selectionsort.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @getminindex({ i64, [0 x i64] }* %a, i64 %s, i64 %b) {
  %_a3324 = alloca { i64, [0 x i64] }*
  %_s3325 = alloca i64
  %_b3326 = alloca i64
  %_3327 = alloca i64
  %_3329 = alloca i64
  %_3334 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3324
  store i64 %s, i64* %_s3325
  store i64 %b, i64* %_b3326
  %_id_s3328 = load i64, i64* %_s3325
  store i64 %_id_s3328, i64* %_3327
  %_id_a3330 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3324
  %_id_s3331 = load i64, i64* %_s3325
  %_index_pointer3332 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3330, i32 0, i32 1, i64 %_id_s3331
  %_index_value3333 = load i64, i64* %_index_pointer3332
  store i64 %_index_value3333, i64* %_3329
  %_id_s3335 = load i64, i64* %_s3325
  store i64 %_id_s3335, i64* %_3334
  br label %_start3356
_start3356:
  %_id_b3337 = load i64, i64* %_b3326
  %_id_i3336 = load i64, i64* %_3327
  %_3338 = icmp slt i64 %_id_i3336, %_id_b3337
  br i1 %_3338, label %_body3357, label %_else3358
_body3357:
  br label %_start3350
_start3350:
  %_id_min3343 = load i64, i64* %_3329
  %_id_a3339 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3324
  %_id_i3340 = load i64, i64* %_3327
  %_index_pointer3341 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3339, i32 0, i32 1, i64 %_id_i3340
  %_index_value3342 = load i64, i64* %_index_pointer3341
  %_3344 = icmp slt i64 %_index_value3342, %_id_min3343
  br i1 %_3344, label %_then3351, label %_else3352
_then3351:
  %_id_a3345 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3324
  %_id_i3346 = load i64, i64* %_3327
  %_index_pointer3347 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3345, i32 0, i32 1, i64 %_id_i3346
  %_index_value3348 = load i64, i64* %_index_pointer3347
  store i64 %_index_value3348, i64* %_3329
  %_id_i3349 = load i64, i64* %_3327
  store i64 %_id_i3349, i64* %_3334
  br label %_post3353
_else3352:
  br label %_post3353
_post3353:
  %_id_i3354 = load i64, i64* %_3327
  %_3355 = add i64 %_id_i3354, 1
  store i64 %_3355, i64* %_3327
  br label %_start3356
_else3358:
  %_id_mi3359 = load i64, i64* %_3334
  ret i64 %_id_mi3359
}

define void @selectionsort({ i64, [0 x i64] }* %a, i64 %s) {
  %_a3292 = alloca { i64, [0 x i64] }*
  %_s3293 = alloca i64
  %_3294 = alloca i64
  %_3295 = alloca i64
  %_3296 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3292
  store i64 %s, i64* %_s3293
  store i64 0, i64* %_3294
  store i64 0, i64* %_3295
  store i64 0, i64* %_3296
  br label %_start3321
_start3321:
  %_id_s3298 = load i64, i64* %_s3293
  %_id_i3297 = load i64, i64* %_3296
  %_3299 = icmp slt i64 %_id_i3297, %_id_s3298
  br i1 %_3299, label %_body3322, label %_else3323
_body3322:
  %_id_a3300 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3292
  %_id_i3301 = load i64, i64* %_3296
  %_id_s3302 = load i64, i64* %_s3293
  %_3303 = call i64 @getminindex({ i64, [0 x i64] }* %_id_a3300, i64 %_id_i3301, i64 %_id_s3302)
  store i64 %_3303, i64* %_3295
  %_id_a3304 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3292
  %_id_i3305 = load i64, i64* %_3296
  %_index_pointer3306 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3304, i32 0, i32 1, i64 %_id_i3305
  %_index_value3307 = load i64, i64* %_index_pointer3306
  store i64 %_index_value3307, i64* %_3294
  %_id_a3308 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3292
  %_id_mi3309 = load i64, i64* %_3295
  %_index_pointer3310 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3308, i32 0, i32 1, i64 %_id_mi3309
  %_index_value3311 = load i64, i64* %_index_pointer3310
  %_id_a3312 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3292
  %_id_i3313 = load i64, i64* %_3296
  %_3314 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3312, i32 0, i32 1, i64 %_id_i3313
  store i64 %_index_value3311, i64* %_3314
  %_id_t3315 = load i64, i64* %_3294
  %_id_a3316 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3292
  %_id_mi3317 = load i64, i64* %_3295
  %_3318 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3316, i32 0, i32 1, i64 %_id_mi3317
  store i64 %_id_t3315, i64* %_3318
  %_id_i3319 = load i64, i64* %_3296
  %_3320 = add i64 %_id_i3319, 1
  store i64 %_3320, i64* %_3296
  br label %_start3321
_else3323:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3256 = alloca i64
  %_argv3257 = alloca { i64, [0 x i8*] }*
  %_3258 = alloca { i64, [0 x i64] }*
  %_3279 = alloca i64
  store i64 %argc, i64* %_argc3256
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3257
  %_raw_array3259 = call i64* @oat_alloc_array(i64 8)
  %_array3260 = bitcast i64* %_raw_array3259 to { i64, [0 x i64] }*
  %_3275 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3260, i32 0, i32 1, i32 7
  store i64 0, i64* %_3275
  %_3273 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3260, i32 0, i32 1, i32 6
  store i64 2, i64* %_3273
  %_3271 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3260, i32 0, i32 1, i32 5
  store i64 99, i64* %_3271
  %_3269 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3260, i32 0, i32 1, i32 4
  store i64 30, i64* %_3269
  %_3267 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3260, i32 0, i32 1, i32 3
  store i64 65, i64* %_3267
  %_3265 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3260, i32 0, i32 1, i32 2
  store i64 1, i64* %_3265
  %_3263 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3260, i32 0, i32 1, i32 1
  store i64 200, i64* %_3263
  %_3261 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3260, i32 0, i32 1, i32 0
  store i64 5, i64* %_3261
  store { i64, [0 x i64] }* %_array3260, { i64, [0 x i64] }** %_3258
  %_id_ar3277 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3258
  call void @selectionsort({ i64, [0 x i64] }* %_id_ar3277, i64 8)
  store i64 0, i64* %_3279
  br label %_start3289
_start3289:
  %_id_i3280 = load i64, i64* %_3279
  %_3281 = icmp slt i64 %_id_i3280, 8
  br i1 %_3281, label %_body3290, label %_else3291
_body3290:
  %_id_ar3282 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3258
  %_id_i3283 = load i64, i64* %_3279
  %_index_pointer3284 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_ar3282, i32 0, i32 1, i64 %_id_i3283
  %_index_value3285 = load i64, i64* %_index_pointer3284
  call void @print_int(i64 %_index_value3285)
  %_id_i3287 = load i64, i64* %_3279
  %_3288 = add i64 %_id_i3287, 1
  store i64 %_3288, i64* %_3279
  br label %_start3289
_else3291:
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
