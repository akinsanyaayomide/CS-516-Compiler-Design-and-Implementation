; generated from: hw4programs/run41.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x1662 = alloca i64
  %_x2663 = alloca i64
  %_x3664 = alloca i64
  %_x4665 = alloca i64
  %_x5666 = alloca i64
  %_x6667 = alloca i64
  %_x7668 = alloca i64
  %_x8669 = alloca i64
  store i64 %x1, i64* %_x1662
  store i64 %x2, i64* %_x2663
  store i64 %x3, i64* %_x3664
  store i64 %x4, i64* %_x4665
  store i64 %x5, i64* %_x5666
  store i64 %x6, i64* %_x6667
  store i64 %x7, i64* %_x7668
  store i64 %x8, i64* %_x8669
  %_id_x8683 = load i64, i64* %_x8669
  %_id_x7681 = load i64, i64* %_x7668
  %_id_x6679 = load i64, i64* %_x6667
  %_id_x5677 = load i64, i64* %_x5666
  %_id_x4675 = load i64, i64* %_x4665
  %_id_x3673 = load i64, i64* %_x3664
  %_id_x2671 = load i64, i64* %_x2663
  %_id_x1670 = load i64, i64* %_x1662
  %_672 = add i64 %_id_x1670, %_id_x2671
  %_674 = add i64 %_672, %_id_x3673
  %_676 = add i64 %_674, %_id_x4675
  %_678 = add i64 %_676, %_id_x5677
  %_680 = add i64 %_678, %_id_x6679
  %_682 = add i64 %_680, %_id_x7681
  %_684 = add i64 %_682, %_id_x8683
  ret i64 %_684
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc656 = alloca i64
  %_argv657 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc656
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv657
  %_unop658 = sub i64 0, 5
  %_unop659 = sub i64 0, 4
  %_unop660 = sub i64 0, 3
  %_661 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_unop658, i64 %_unop659, i64 %_unop660)
  ret i64 %_661
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
