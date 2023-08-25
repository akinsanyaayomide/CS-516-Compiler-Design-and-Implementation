; generated from: hw4programs/run41.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x1500 = alloca i64
  %_x2501 = alloca i64
  %_x3502 = alloca i64
  %_x4503 = alloca i64
  %_x5504 = alloca i64
  %_x6505 = alloca i64
  %_x7506 = alloca i64
  %_x8507 = alloca i64
  store i64 %x1, i64* %_x1500
  store i64 %x2, i64* %_x2501
  store i64 %x3, i64* %_x3502
  store i64 %x4, i64* %_x4503
  store i64 %x5, i64* %_x5504
  store i64 %x6, i64* %_x6505
  store i64 %x7, i64* %_x7506
  store i64 %x8, i64* %_x8507
  %_id_x8521 = load i64, i64* %_x8507
  %_id_x7519 = load i64, i64* %_x7506
  %_id_x6517 = load i64, i64* %_x6505
  %_id_x5515 = load i64, i64* %_x5504
  %_id_x4513 = load i64, i64* %_x4503
  %_id_x3511 = load i64, i64* %_x3502
  %_id_x2509 = load i64, i64* %_x2501
  %_id_x1508 = load i64, i64* %_x1500
  %_510 = add i64 %_id_x1508, %_id_x2509
  %_512 = add i64 %_510, %_id_x3511
  %_514 = add i64 %_512, %_id_x4513
  %_516 = add i64 %_514, %_id_x5515
  %_518 = add i64 %_516, %_id_x6517
  %_520 = add i64 %_518, %_id_x7519
  %_522 = add i64 %_520, %_id_x8521
  ret i64 %_522
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc494 = alloca i64
  %_argv495 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc494
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv495
  %_unop496 = sub i64 0, 5
  %_unop497 = sub i64 0, 4
  %_unop498 = sub i64 0, 3
  %_499 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_unop496, i64 %_unop497, i64 %_unop498)
  ret i64 %_499
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
