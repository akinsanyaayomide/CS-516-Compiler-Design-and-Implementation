; generated from: hw4programs/run28.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc361 = alloca i64
  %_argv362 = alloca { i64, [0 x i8*] }*
  %_363 = alloca i64
  %_364 = alloca i64
  store i64 %argc, i64* %_argc361
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv362
  store i64 9, i64* %_363
  %_id_i366 = load i64, i64* %_363
  %_id_i365 = load i64, i64* %_363
  %_367 = add i64 %_id_i365, %_id_i366
  store i64 %_367, i64* %_364
  %_id_j373 = load i64, i64* %_364
  %_id_i370 = load i64, i64* %_363
  %_id_i369 = load i64, i64* %_363
  %_371 = mul i64 %_id_i369, %_id_i370
  %_id_i368 = load i64, i64* %_363
  %_372 = add i64 %_id_i368, %_371
  %_374 = sub i64 %_372, %_id_j373
  %_375 = lshr i64 %_374, 2
  %_376 = shl i64 %_375, 2
  %_377 = ashr i64 %_376, 2
  ret i64 %_377
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
