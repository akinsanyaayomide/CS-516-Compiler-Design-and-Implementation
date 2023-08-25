; generated from: hw4programs/gcd.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @gcd(i64 %a, i64 %b) {
  %_a2538 = alloca i64
  %_b2539 = alloca i64
  %_2542 = alloca i64
  store i64 %a, i64* %_a2538
  store i64 %b, i64* %_b2539
  br label %_start2548
_start2548:
  %_id_b2540 = load i64, i64* %_b2539
  %_2541 = icmp ne i64 %_id_b2540, 0
  br i1 %_2541, label %_body2549, label %_else2550
_body2549:
  %_id_b2543 = load i64, i64* %_b2539
  store i64 %_id_b2543, i64* %_2542
  %_id_a2544 = load i64, i64* %_a2538
  %_id_b2545 = load i64, i64* %_b2539
  %_2546 = call i64 @mod(i64 %_id_a2544, i64 %_id_b2545)
  store i64 %_2546, i64* %_b2539
  %_id_t2547 = load i64, i64* %_2542
  store i64 %_id_t2547, i64* %_a2538
  br label %_start2548
_else2550:
  %_id_a2551 = load i64, i64* %_a2538
  ret i64 %_id_a2551
}

define i64 @mod(i64 %a, i64 %b) {
  %_a2523 = alloca i64
  %_b2524 = alloca i64
  %_2525 = alloca i64
  store i64 %a, i64* %_a2523
  store i64 %b, i64* %_b2524
  %_id_a2526 = load i64, i64* %_a2523
  store i64 %_id_a2526, i64* %_2525
  br label %_start2534
_start2534:
  %_id_b2528 = load i64, i64* %_b2524
  %_id_t2527 = load i64, i64* %_2525
  %_2529 = sub i64 %_id_t2527, %_id_b2528
  %_2530 = icmp sge i64 %_2529, 0
  br i1 %_2530, label %_body2535, label %_else2536
_body2535:
  %_id_b2532 = load i64, i64* %_b2524
  %_id_t2531 = load i64, i64* %_2525
  %_2533 = sub i64 %_id_t2531, %_id_b2532
  store i64 %_2533, i64* %_2525
  br label %_start2534
_else2536:
  %_id_t2537 = load i64, i64* %_2525
  ret i64 %_id_t2537
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2516 = alloca i64
  %_argv2517 = alloca { i64, [0 x i8*] }*
  %_2518 = alloca i64
  %_2519 = alloca i64
  store i64 %argc, i64* %_argc2516
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2517
  store i64 64, i64* %_2518
  store i64 48, i64* %_2519
  %_id_a2520 = load i64, i64* %_2518
  %_id_b2521 = load i64, i64* %_2519
  %_2522 = call i64 @gcd(i64 %_id_a2520, i64 %_id_b2521)
  ret i64 %_2522
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
