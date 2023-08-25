; generated from: hw4programs/lib5.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string2767 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2764 = alloca i64
  %_argv2765 = alloca { i64, [0 x i8*] }*
  %_2766 = alloca i8*
  %_2769 = alloca { i64, [0 x i64] }*
  %_2772 = alloca i64
  %_2773 = alloca i64
  store i64 %argc, i64* %_argc2764
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2765
  %_string12768 = getelementptr [6 x i8], [6 x i8]* @_string2767, i32 0, i32 0
  store i8* %_string12768, i8** %_2766
  %_id_str2770 = load i8*, i8** %_2766
  %_2771 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_str2770)
  store { i64, [0 x i64] }* %_2771, { i64, [0 x i64] }** %_2769
  store i64 0, i64* %_2772
  store i64 0, i64* %_2773
  br label %_cond2785
_cond2785:
  %_id_i2774 = load i64, i64* %_2773
  %_bop2775 = icmp slt i64 %_id_i2774, 5
  br i1 %_bop2775, label %_if2784, label %_merge2786
_if2784:
  %_id_s2776 = load i64, i64* %_2772
  %_id_arr2777 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2769
  %_id_i2778 = load i64, i64* %_2773
  %_index_pointer2780 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr2777, i32 0, i32 1, i64 %_id_i2778
  %_index_value2779 = load i64, i64* %_index_pointer2780
  %_bop2781 = add i64 %_id_s2776, %_index_value2779
  store i64 %_bop2781, i64* %_2772
  %_id_i2782 = load i64, i64* %_2773
  %_bop2783 = add i64 %_id_i2782, 1
  store i64 %_bop2783, i64* %_2773
  br label %_cond2785
_merge2786:
  %_id_s2787 = load i64, i64* %_2772
  ret i64 %_id_s2787
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
