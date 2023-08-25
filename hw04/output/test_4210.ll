; generated from: hw4programs/run28.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc386 = alloca i64
  %_argv387 = alloca { i64, [0 x i8*] }*
  %_388 = alloca i64
  %_389 = alloca i64
  store i64 %argc, i64* %_argc386
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv387
  store i64 9, i64* %_388
  %_id_i390 = load i64, i64* %_388
  %_id_i391 = load i64, i64* %_388
  %_bop392 = add i64 %_id_i390, %_id_i391
  store i64 %_bop392, i64* %_389
  %_id_i393 = load i64, i64* %_388
  %_id_i394 = load i64, i64* %_388
  %_id_i395 = load i64, i64* %_388
  %_bop396 = mul i64 %_id_i394, %_id_i395
  %_bop397 = add i64 %_id_i393, %_bop396
  %_id_j398 = load i64, i64* %_389
  %_bop399 = sub i64 %_bop397, %_id_j398
  %_bop400 = lshr i64 %_bop399, 2
  %_bop401 = shl i64 %_bop400, 2
  %_bop402 = ashr i64 %_bop401, 2
  ret i64 %_bop402
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
