; generated from: hw4programs/run41.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x1479 = alloca i64
  %_x2480 = alloca i64
  %_x3481 = alloca i64
  %_x4482 = alloca i64
  %_x5483 = alloca i64
  %_x6484 = alloca i64
  %_x7485 = alloca i64
  %_x8486 = alloca i64
  store i64 %x1, i64* %_x1479
  store i64 %x2, i64* %_x2480
  store i64 %x3, i64* %_x3481
  store i64 %x4, i64* %_x4482
  store i64 %x5, i64* %_x5483
  store i64 %x6, i64* %_x6484
  store i64 %x7, i64* %_x7485
  store i64 %x8, i64* %_x8486
  %_id_x1487 = load i64, i64* %_x1479
  %_id_x2488 = load i64, i64* %_x2480
  %_bop489 = add i64 %_id_x1487, %_id_x2488
  %_id_x3490 = load i64, i64* %_x3481
  %_bop491 = add i64 %_bop489, %_id_x3490
  %_id_x4492 = load i64, i64* %_x4482
  %_bop493 = add i64 %_bop491, %_id_x4492
  %_id_x5494 = load i64, i64* %_x5483
  %_bop495 = add i64 %_bop493, %_id_x5494
  %_id_x6496 = load i64, i64* %_x6484
  %_bop497 = add i64 %_bop495, %_id_x6496
  %_id_x7498 = load i64, i64* %_x7485
  %_bop499 = add i64 %_bop497, %_id_x7498
  %_id_x8500 = load i64, i64* %_x8486
  %_bop501 = add i64 %_bop499, %_id_x8500
  ret i64 %_bop501
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc473 = alloca i64
  %_argv474 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc473
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv474
  %_unop475 = sub i64 0, 5
  %_unop476 = sub i64 0, 4
  %_unop477 = sub i64 0, 3
  %_478 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_unop475, i64 %_unop476, i64 %_unop477)
  ret i64 %_478
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
