; generated from: hw4programs/run28.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc376 = alloca i64
  %_argv377 = alloca { i64, [0 x i8*] }*
  %_378 = alloca i64
  %_379 = alloca i64
  store i64 %argc, i64* %_argc376
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv377
  store i64 9, i64* %_378
  %_id_i381 = load i64, i64* %_378
  %_id_i380 = load i64, i64* %_378
  %_382 = add i64 %_id_i380, %_id_i381
  store i64 %_382, i64* %_379
  %_id_j388 = load i64, i64* %_379
  %_id_i385 = load i64, i64* %_378
  %_id_i384 = load i64, i64* %_378
  %_386 = mul i64 %_id_i384, %_id_i385
  %_id_i383 = load i64, i64* %_378
  %_387 = add i64 %_id_i383, %_386
  %_389 = sub i64 %_387, %_id_j388
  %_390 = lshr i64 %_389, 2
  %_391 = shl i64 %_390, 2
  %_392 = ashr i64 %_391, 2
  ret i64 %_392
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
