; generated from: hw4programs/run28.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc362 = alloca i64
  %_argv363 = alloca { i64, [0 x i8*] }*
  %_364 = alloca i64
  %_365 = alloca i64
  store i64 %argc, i64* %_argc362
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv363
  store i64 9, i64* %_364
  %_id_i367 = load i64, i64* %_364
  %_id_i366 = load i64, i64* %_364
  %_368 = add i64 %_id_i366, %_id_i367
  store i64 %_368, i64* %_365
  %_id_j374 = load i64, i64* %_365
  %_id_i371 = load i64, i64* %_364
  %_id_i370 = load i64, i64* %_364
  %_372 = mul i64 %_id_i370, %_id_i371
  %_id_i369 = load i64, i64* %_364
  %_373 = add i64 %_id_i369, %_372
  %_375 = sub i64 %_373, %_id_j374
  %_376 = lshr i64 %_375, 2
  %_377 = shl i64 %_376, 2
  %_378 = ashr i64 %_377, 2
  ret i64 %_378
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
