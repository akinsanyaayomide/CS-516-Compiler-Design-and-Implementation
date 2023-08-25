; generated from: hw4programs/gcd.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @gcd(i64 %a, i64 %b) {
  %_a4403 = alloca i64
  %_b4404 = alloca i64
  %_4407 = alloca i64
  store i64 %a, i64* %_a4403
  store i64 %b, i64* %_b4404
  br label %_start4413
_start4413:
  %_id_b4405 = load i64, i64* %_b4404
  %_4406 = icmp ne i64 %_id_b4405, 0
  br i1 %_4406, label %_body4414, label %_else4415
_body4414:
  %_id_b4408 = load i64, i64* %_b4404
  store i64 %_id_b4408, i64* %_4407
  %_id_a4409 = load i64, i64* %_a4403
  %_id_b4410 = load i64, i64* %_b4404
  %_4411 = call i64 @mod(i64 %_id_a4409, i64 %_id_b4410)
  store i64 %_4411, i64* %_b4404
  %_id_t4412 = load i64, i64* %_4407
  store i64 %_id_t4412, i64* %_a4403
  br label %_start4413
_else4415:
  %_id_a4416 = load i64, i64* %_a4403
  ret i64 %_id_a4416
}

define i64 @mod(i64 %a, i64 %b) {
  %_a4388 = alloca i64
  %_b4389 = alloca i64
  %_4390 = alloca i64
  store i64 %a, i64* %_a4388
  store i64 %b, i64* %_b4389
  %_id_a4391 = load i64, i64* %_a4388
  store i64 %_id_a4391, i64* %_4390
  br label %_start4399
_start4399:
  %_id_b4393 = load i64, i64* %_b4389
  %_id_t4392 = load i64, i64* %_4390
  %_4394 = sub i64 %_id_t4392, %_id_b4393
  %_4395 = icmp sge i64 %_4394, 0
  br i1 %_4395, label %_body4400, label %_else4401
_body4400:
  %_id_b4397 = load i64, i64* %_b4389
  %_id_t4396 = load i64, i64* %_4390
  %_4398 = sub i64 %_id_t4396, %_id_b4397
  store i64 %_4398, i64* %_4390
  br label %_start4399
_else4401:
  %_id_t4402 = load i64, i64* %_4390
  ret i64 %_id_t4402
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4381 = alloca i64
  %_argv4382 = alloca { i64, [0 x i8*] }*
  %_4383 = alloca i64
  %_4384 = alloca i64
  store i64 %argc, i64* %_argc4381
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4382
  store i64 64, i64* %_4383
  store i64 48, i64* %_4384
  %_id_a4385 = load i64, i64* %_4383
  %_id_b4386 = load i64, i64* %_4384
  %_4387 = call i64 @gcd(i64 %_id_a4385, i64 %_id_b4386)
  ret i64 %_4387
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
