; generated from: hw4programs/run41.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x1647 = alloca i64
  %_x2648 = alloca i64
  %_x3649 = alloca i64
  %_x4650 = alloca i64
  %_x5651 = alloca i64
  %_x6652 = alloca i64
  %_x7653 = alloca i64
  %_x8654 = alloca i64
  store i64 %x1, i64* %_x1647
  store i64 %x2, i64* %_x2648
  store i64 %x3, i64* %_x3649
  store i64 %x4, i64* %_x4650
  store i64 %x5, i64* %_x5651
  store i64 %x6, i64* %_x6652
  store i64 %x7, i64* %_x7653
  store i64 %x8, i64* %_x8654
  %_id_x8668 = load i64, i64* %_x8654
  %_id_x7666 = load i64, i64* %_x7653
  %_id_x6664 = load i64, i64* %_x6652
  %_id_x5662 = load i64, i64* %_x5651
  %_id_x4660 = load i64, i64* %_x4650
  %_id_x3658 = load i64, i64* %_x3649
  %_id_x2656 = load i64, i64* %_x2648
  %_id_x1655 = load i64, i64* %_x1647
  %_657 = add i64 %_id_x1655, %_id_x2656
  %_659 = add i64 %_657, %_id_x3658
  %_661 = add i64 %_659, %_id_x4660
  %_663 = add i64 %_661, %_id_x5662
  %_665 = add i64 %_663, %_id_x6664
  %_667 = add i64 %_665, %_id_x7666
  %_669 = add i64 %_667, %_id_x8668
  ret i64 %_669
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc641 = alloca i64
  %_argv642 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc641
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv642
  %_unop643 = sub i64 0, 5
  %_unop644 = sub i64 0, 4
  %_unop645 = sub i64 0, 3
  %_646 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_unop643, i64 %_unop644, i64 %_unop645)
  ret i64 %_646
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
