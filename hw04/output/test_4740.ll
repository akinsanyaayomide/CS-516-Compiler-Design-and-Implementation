; generated from: hw4programs/run28.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc388 = alloca i64
  %_argv389 = alloca { i64, [0 x i8*] }*
  %_390 = alloca i64
  %_391 = alloca i64
  store i64 %argc, i64* %_argc388
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv389
  store i64 9, i64* %_390
  %_id_i392 = load i64, i64* %_390
  %_id_i393 = load i64, i64* %_390
  %_bop394 = add i64 %_id_i392, %_id_i393
  store i64 %_bop394, i64* %_391
  %_id_i395 = load i64, i64* %_390
  %_id_i396 = load i64, i64* %_390
  %_id_i397 = load i64, i64* %_390
  %_bop398 = mul i64 %_id_i396, %_id_i397
  %_bop399 = add i64 %_id_i395, %_bop398
  %_id_j400 = load i64, i64* %_391
  %_bop401 = sub i64 %_bop399, %_id_j400
  %_bop402 = lshr i64 %_bop401, 2
  %_bop403 = shl i64 %_bop402, 2
  %_bop404 = ashr i64 %_bop403, 2
  ret i64 %_bop404
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
