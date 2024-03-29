; generated from: hw4programs/fac.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f(i64 %i) {
  %_i2387 = alloca i64
  %_2388 = alloca i64
  store i64 %i, i64* %_i2387
  store i64 0, i64* %_2388
  %_id_i2389 = load i64, i64* %_i2387
  %_2390 = icmp eq i64 %_id_i2389, 0
  br i1 %_2390, label %_if2396, label %_else2397
_if2396:
  store i64 1, i64* %_2388
  br label %_merge2398
_else2397:
  %_id_i2392 = load i64, i64* %_i2387
  %_2393 = sub i64 %_id_i2392, 1
  %_2394 = call i64 @f(i64 %_2393)
  %_id_i2391 = load i64, i64* %_i2387
  %_2395 = mul i64 %_id_i2391, %_2394
  store i64 %_2395, i64* %_2388
  br label %_merge2398
_merge2398:
  %_id_r2399 = load i64, i64* %_2388
  ret i64 %_id_r2399
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2384 = alloca i64
  %_argv2385 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc2384
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2385
  %_2386 = call i64 @f(i64 5)
  ret i64 %_2386
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
