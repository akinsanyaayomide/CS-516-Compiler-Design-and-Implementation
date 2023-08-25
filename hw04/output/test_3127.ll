; generated from: hw4programs/fac.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f(i64 %i) {
  %_i2644 = alloca i64
  %_2645 = alloca i64
  store i64 %i, i64* %_i2644
  store i64 0, i64* %_2645
  br label %_begin_if2653
_begin_if2653:
  %_id_i2646 = load i64, i64* %_i2644
  %_2647 = icmp eq i64 %_id_i2646, 0
  br i1 %_2647, label %_then_branch2654, label %_else_branch2655
_then_branch2654:
  store i64 1, i64* %_2645
  br label %_end_if2656
_else_branch2655:
  %_id_i2649 = load i64, i64* %_i2644
  %_2650 = sub i64 %_id_i2649, 1
  %_2651 = call i64 @f(i64 %_2650)
  %_id_i2648 = load i64, i64* %_i2644
  %_2652 = mul i64 %_id_i2648, %_2651
  store i64 %_2652, i64* %_2645
  br label %_end_if2656
_end_if2656:
  %_id_r2657 = load i64, i64* %_2645
  ret i64 %_id_r2657
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2641 = alloca i64
  %_argv2642 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc2641
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2642
  %_2643 = call i64 @f(i64 5)
  ret i64 %_2643
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
