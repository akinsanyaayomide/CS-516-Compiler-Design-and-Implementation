; generated from: hw4programs/fac.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f(i64 %i) {
  %_i2461 = alloca i64
  %_2462 = alloca i64
  store i64 %i, i64* %_i2461
  store i64 0, i64* %_2462
  br label %_start2470
_start2470:
  %_id_i2463 = load i64, i64* %_i2461
  %_2464 = icmp eq i64 %_id_i2463, 0
  br i1 %_2464, label %_then2471, label %_else2472
_then2471:
  store i64 1, i64* %_2462
  br label %_post2473
_else2472:
  %_id_i2466 = load i64, i64* %_i2461
  %_2467 = sub i64 %_id_i2466, 1
  %_2468 = call i64 @f(i64 %_2467)
  %_id_i2465 = load i64, i64* %_i2461
  %_2469 = mul i64 %_id_i2465, %_2468
  store i64 %_2469, i64* %_2462
  br label %_post2473
_post2473:
  %_id_r2474 = load i64, i64* %_2462
  ret i64 %_id_r2474
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2458 = alloca i64
  %_argv2459 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc2458
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2459
  %_2460 = call i64 @f(i64 5)
  ret i64 %_2460
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
