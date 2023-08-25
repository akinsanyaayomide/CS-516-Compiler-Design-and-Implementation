; generated from: hw4programs/run41.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x1750 = alloca i64
  %_x2751 = alloca i64
  %_x3752 = alloca i64
  %_x4753 = alloca i64
  %_x5754 = alloca i64
  %_x6755 = alloca i64
  %_x7756 = alloca i64
  %_x8757 = alloca i64
  store i64 %x1, i64* %_x1750
  store i64 %x2, i64* %_x2751
  store i64 %x3, i64* %_x3752
  store i64 %x4, i64* %_x4753
  store i64 %x5, i64* %_x5754
  store i64 %x6, i64* %_x6755
  store i64 %x7, i64* %_x7756
  store i64 %x8, i64* %_x8757
  %_id_x1758 = load i64, i64* %_x1750
  %_id_x2759 = load i64, i64* %_x2751
  %_bop760 = add i64 %_id_x1758, %_id_x2759
  %_id_x3761 = load i64, i64* %_x3752
  %_bop762 = add i64 %_bop760, %_id_x3761
  %_id_x4763 = load i64, i64* %_x4753
  %_bop764 = add i64 %_bop762, %_id_x4763
  %_id_x5765 = load i64, i64* %_x5754
  %_bop766 = add i64 %_bop764, %_id_x5765
  %_id_x6767 = load i64, i64* %_x6755
  %_bop768 = add i64 %_bop766, %_id_x6767
  %_id_x7769 = load i64, i64* %_x7756
  %_bop770 = add i64 %_bop768, %_id_x7769
  %_id_x8771 = load i64, i64* %_x8757
  %_bop772 = add i64 %_bop770, %_id_x8771
  ret i64 %_bop772
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc744 = alloca i64
  %_argv745 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc744
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv745
  %_unop746 = sub i64 0, 5
  %_unop747 = sub i64 0, 4
  %_unop748 = sub i64 0, 3
  %_749 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_unop746, i64 %_unop747, i64 %_unop748)
  ret i64 %_749
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
