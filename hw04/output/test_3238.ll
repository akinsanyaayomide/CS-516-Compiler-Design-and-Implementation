; generated from: hw4programs/run39.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f1(i64 %i) {
  %_i463 = alloca i64
  store i64 %i, i64* %_i463
  %_id_i464 = load i64, i64* %_i463
  %_465 = call i64 @f2(i64 %_id_i464)
  ret i64 %_465
}

define i64 @f2(i64 %i) {
  %_i460 = alloca i64
  store i64 %i, i64* %_i460
  %_id_i461 = load i64, i64* %_i460
  %_462 = call i64 @f3(i64 %_id_i461)
  ret i64 %_462
}

define i64 @f3(i64 %i) {
  %_i457 = alloca i64
  store i64 %i, i64* %_i457
  %_id_i458 = load i64, i64* %_i457
  %_459 = call i64 @f4(i64 %_id_i458)
  ret i64 %_459
}

define i64 @f4(i64 %i) {
  %_i454 = alloca i64
  store i64 %i, i64* %_i454
  %_id_i455 = load i64, i64* %_i454
  %_456 = call i64 @f5(i64 %_id_i455)
  ret i64 %_456
}

define i64 @f5(i64 %i) {
  %_i451 = alloca i64
  store i64 %i, i64* %_i451
  %_id_i452 = load i64, i64* %_i451
  %_453 = call i64 @f6(i64 %_id_i452)
  ret i64 %_453
}

define i64 @f6(i64 %i) {
  %_i448 = alloca i64
  store i64 %i, i64* %_i448
  %_id_i449 = load i64, i64* %_i448
  %_450 = call i64 @f7(i64 %_id_i449)
  ret i64 %_450
}

define i64 @f7(i64 %i) {
  %_i445 = alloca i64
  store i64 %i, i64* %_i445
  %_id_i446 = load i64, i64* %_i445
  %_447 = call i64 @f8(i64 %_id_i446)
  ret i64 %_447
}

define i64 @f8(i64 %i) {
  %_i442 = alloca i64
  store i64 %i, i64* %_i442
  %_id_i443 = load i64, i64* %_i442
  %_444 = call i64 @f9(i64 %_id_i443)
  ret i64 %_444
}

define i64 @f9(i64 %i) {
  %_i440 = alloca i64
  store i64 %i, i64* %_i440
  %_id_i441 = load i64, i64* %_i440
  ret i64 %_id_i441
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc436 = alloca i64
  %_argv437 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc436
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv437
  %_id_argc438 = load i64, i64* %_argc436
  %_439 = call i64 @f1(i64 %_id_argc438)
  ret i64 %_439
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
