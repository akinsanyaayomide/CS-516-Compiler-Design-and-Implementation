; generated from: hw4programs/run39.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f1(i64 %i) {
  %_i484 = alloca i64
  store i64 %i, i64* %_i484
  %_id_i485 = load i64, i64* %_i484
  %_486 = call i64 @f2(i64 %_id_i485)
  ret i64 %_486
}

define i64 @f2(i64 %i) {
  %_i481 = alloca i64
  store i64 %i, i64* %_i481
  %_id_i482 = load i64, i64* %_i481
  %_483 = call i64 @f3(i64 %_id_i482)
  ret i64 %_483
}

define i64 @f3(i64 %i) {
  %_i478 = alloca i64
  store i64 %i, i64* %_i478
  %_id_i479 = load i64, i64* %_i478
  %_480 = call i64 @f4(i64 %_id_i479)
  ret i64 %_480
}

define i64 @f4(i64 %i) {
  %_i475 = alloca i64
  store i64 %i, i64* %_i475
  %_id_i476 = load i64, i64* %_i475
  %_477 = call i64 @f5(i64 %_id_i476)
  ret i64 %_477
}

define i64 @f5(i64 %i) {
  %_i472 = alloca i64
  store i64 %i, i64* %_i472
  %_id_i473 = load i64, i64* %_i472
  %_474 = call i64 @f6(i64 %_id_i473)
  ret i64 %_474
}

define i64 @f6(i64 %i) {
  %_i469 = alloca i64
  store i64 %i, i64* %_i469
  %_id_i470 = load i64, i64* %_i469
  %_471 = call i64 @f7(i64 %_id_i470)
  ret i64 %_471
}

define i64 @f7(i64 %i) {
  %_i466 = alloca i64
  store i64 %i, i64* %_i466
  %_id_i467 = load i64, i64* %_i466
  %_468 = call i64 @f8(i64 %_id_i467)
  ret i64 %_468
}

define i64 @f8(i64 %i) {
  %_i463 = alloca i64
  store i64 %i, i64* %_i463
  %_id_i464 = load i64, i64* %_i463
  %_465 = call i64 @f9(i64 %_id_i464)
  ret i64 %_465
}

define i64 @f9(i64 %i) {
  %_i461 = alloca i64
  store i64 %i, i64* %_i461
  %_id_i462 = load i64, i64* %_i461
  ret i64 %_id_i462
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc457 = alloca i64
  %_argv458 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc457
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv458
  %_id_argc459 = load i64, i64* %_argc457
  %_460 = call i64 @f1(i64 %_id_argc459)
  ret i64 %_460
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
