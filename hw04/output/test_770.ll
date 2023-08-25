; generated from: hw4programs/run41.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x1666 = alloca i64
  %_x2667 = alloca i64
  %_x3668 = alloca i64
  %_x4669 = alloca i64
  %_x5670 = alloca i64
  %_x6671 = alloca i64
  %_x7672 = alloca i64
  %_x8673 = alloca i64
  store i64 %x1, i64* %_x1666
  store i64 %x2, i64* %_x2667
  store i64 %x3, i64* %_x3668
  store i64 %x4, i64* %_x4669
  store i64 %x5, i64* %_x5670
  store i64 %x6, i64* %_x6671
  store i64 %x7, i64* %_x7672
  store i64 %x8, i64* %_x8673
  %_id_x8687 = load i64, i64* %_x8673
  %_id_x7685 = load i64, i64* %_x7672
  %_id_x6683 = load i64, i64* %_x6671
  %_id_x5681 = load i64, i64* %_x5670
  %_id_x4679 = load i64, i64* %_x4669
  %_id_x3677 = load i64, i64* %_x3668
  %_id_x2675 = load i64, i64* %_x2667
  %_id_x1674 = load i64, i64* %_x1666
  %_676 = add i64 %_id_x1674, %_id_x2675
  %_678 = add i64 %_676, %_id_x3677
  %_680 = add i64 %_678, %_id_x4679
  %_682 = add i64 %_680, %_id_x5681
  %_684 = add i64 %_682, %_id_x6683
  %_686 = add i64 %_684, %_id_x7685
  %_688 = add i64 %_686, %_id_x8687
  ret i64 %_688
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc660 = alloca i64
  %_argv661 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc660
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv661
  %_662 = mul i64 5, -1
  %_663 = mul i64 4, -1
  %_664 = mul i64 3, -1
  %_665 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_662, i64 %_663, i64 %_664)
  ret i64 %_665
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
