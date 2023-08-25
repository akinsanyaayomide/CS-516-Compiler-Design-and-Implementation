; generated from: hw4programs/fac.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f(i64 %i) {
  %_i2648 = alloca i64
  %_2649 = alloca i64
  store i64 %i, i64* %_i2648
  store i64 0, i64* %_2649
  br label %_start2657
_start2657:
  %_id_i2650 = load i64, i64* %_i2648
  %_2651 = icmp eq i64 %_id_i2650, 0
  br i1 %_2651, label %_then2658, label %_else2659
_then2658:
  store i64 1, i64* %_2649
  br label %_post2660
_else2659:
  %_id_i2653 = load i64, i64* %_i2648
  %_2654 = sub i64 %_id_i2653, 1
  %_2655 = call i64 @f(i64 %_2654)
  %_id_i2652 = load i64, i64* %_i2648
  %_2656 = mul i64 %_id_i2652, %_2655
  store i64 %_2656, i64* %_2649
  br label %_post2660
_post2660:
  %_id_r2661 = load i64, i64* %_2649
  ret i64 %_id_r2661
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2645 = alloca i64
  %_argv2646 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc2645
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2646
  %_2647 = call i64 @f(i64 5)
  ret i64 %_2647
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
