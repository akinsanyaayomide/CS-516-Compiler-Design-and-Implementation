; generated from: hw4programs/run28.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc372 = alloca i64
  %_argv373 = alloca { i64, [0 x i8*] }*
  %_i374 = alloca i64
  %_j378 = alloca i64
  store i64 %argc, i64* %_argc372
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv373
  store i64 9, i64* %_i374
  %_id_i375 = load i64, i64* %_i374
  %_id_i376 = load i64, i64* %_i374
  %_bop377 = add i64 %_id_i375, %_id_i376
  store i64 %_bop377, i64* %_j378
  %_id_i379 = load i64, i64* %_i374
  %_id_i380 = load i64, i64* %_i374
  %_id_i381 = load i64, i64* %_i374
  %_bop382 = mul i64 %_id_i380, %_id_i381
  %_bop383 = add i64 %_id_i379, %_bop382
  %_id_j384 = load i64, i64* %_j378
  %_bop385 = sub i64 %_bop383, %_id_j384
  %_bop386 = lshr i64 %_bop385, 2
  %_bop387 = shl i64 %_bop386, 2
  %_bop388 = ashr i64 %_bop387, 2
  ret i64 %_bop388
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
