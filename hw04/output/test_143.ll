; generated from: hw4programs/run41.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x1635 = alloca i64
  %_x2636 = alloca i64
  %_x3637 = alloca i64
  %_x4638 = alloca i64
  %_x5639 = alloca i64
  %_x6640 = alloca i64
  %_x7641 = alloca i64
  %_x8642 = alloca i64
  store i64 %x1, i64* %_x1635
  store i64 %x2, i64* %_x2636
  store i64 %x3, i64* %_x3637
  store i64 %x4, i64* %_x4638
  store i64 %x5, i64* %_x5639
  store i64 %x6, i64* %_x6640
  store i64 %x7, i64* %_x7641
  store i64 %x8, i64* %_x8642
  %_id_x8656 = load i64, i64* %_x8642
  %_id_x7654 = load i64, i64* %_x7641
  %_id_x6652 = load i64, i64* %_x6640
  %_id_x5650 = load i64, i64* %_x5639
  %_id_x4648 = load i64, i64* %_x4638
  %_id_x3646 = load i64, i64* %_x3637
  %_id_x2644 = load i64, i64* %_x2636
  %_id_x1643 = load i64, i64* %_x1635
  %_645 = add i64 %_id_x1643, %_id_x2644
  %_647 = add i64 %_645, %_id_x3646
  %_649 = add i64 %_647, %_id_x4648
  %_651 = add i64 %_649, %_id_x5650
  %_653 = add i64 %_651, %_id_x6652
  %_655 = add i64 %_653, %_id_x7654
  %_657 = add i64 %_655, %_id_x8656
  ret i64 %_657
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc629 = alloca i64
  %_argv630 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc629
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv630
  %_631 = mul i64 5, -1
  %_632 = mul i64 4, -1
  %_633 = mul i64 3, -1
  %_634 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_631, i64 %_632, i64 %_633)
  ret i64 %_634
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
