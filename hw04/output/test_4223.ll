; generated from: hw4programs/run41.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x1716 = alloca i64
  %_x2717 = alloca i64
  %_x3718 = alloca i64
  %_x4719 = alloca i64
  %_x5720 = alloca i64
  %_x6721 = alloca i64
  %_x7722 = alloca i64
  %_x8723 = alloca i64
  store i64 %x1, i64* %_x1716
  store i64 %x2, i64* %_x2717
  store i64 %x3, i64* %_x3718
  store i64 %x4, i64* %_x4719
  store i64 %x5, i64* %_x5720
  store i64 %x6, i64* %_x6721
  store i64 %x7, i64* %_x7722
  store i64 %x8, i64* %_x8723
  %_id_x1724 = load i64, i64* %_x1716
  %_id_x2725 = load i64, i64* %_x2717
  %_bop726 = add i64 %_id_x1724, %_id_x2725
  %_id_x3727 = load i64, i64* %_x3718
  %_bop728 = add i64 %_bop726, %_id_x3727
  %_id_x4729 = load i64, i64* %_x4719
  %_bop730 = add i64 %_bop728, %_id_x4729
  %_id_x5731 = load i64, i64* %_x5720
  %_bop732 = add i64 %_bop730, %_id_x5731
  %_id_x6733 = load i64, i64* %_x6721
  %_bop734 = add i64 %_bop732, %_id_x6733
  %_id_x7735 = load i64, i64* %_x7722
  %_bop736 = add i64 %_bop734, %_id_x7735
  %_id_x8737 = load i64, i64* %_x8723
  %_bop738 = add i64 %_bop736, %_id_x8737
  ret i64 %_bop738
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc710 = alloca i64
  %_argv711 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc710
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv711
  %_unop712 = sub i64 0, 5
  %_unop713 = sub i64 0, 4
  %_unop714 = sub i64 0, 3
  %_715 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_unop712, i64 %_unop713, i64 %_unop714)
  ret i64 %_715
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
