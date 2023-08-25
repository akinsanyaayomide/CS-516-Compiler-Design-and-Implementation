; generated from: hw4programs/lib4.oat
target triple = "x86_64-apple-macosx10.13.0"
@str = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2741 = alloca i64
  %_argv2742 = alloca { i64, [0 x i8*] }*
  %_2743 = alloca { i64, [0 x i64] }*
  %_2746 = alloca i64
  %_2747 = alloca i64
  store i64 %argc, i64* %_argc2741
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2742
  %_id_str2744 = bitcast [6 x i8]* @str to i8*
  %_2745 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_str2744)
  store { i64, [0 x i64] }* %_2745, { i64, [0 x i64] }** %_2743
  store i64 0, i64* %_2746
  store i64 0, i64* %_2747
  br label %_cond2759
_cond2759:
  %_id_i2748 = load i64, i64* %_2747
  %_bop2749 = icmp slt i64 %_id_i2748, 5
  br i1 %_bop2749, label %_if2758, label %_merge2760
_if2758:
  %_id_s2750 = load i64, i64* %_2746
  %_id_arr2751 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2743
  %_id_i2752 = load i64, i64* %_2747
  %_index_pointer2754 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr2751, i32 0, i32 1, i64 %_id_i2752
  %_index_value2753 = load i64, i64* %_index_pointer2754
  %_bop2755 = add i64 %_id_s2750, %_index_value2753
  store i64 %_bop2755, i64* %_2746
  %_id_i2756 = load i64, i64* %_2747
  %_bop2757 = add i64 %_id_i2756, 1
  store i64 %_bop2757, i64* %_2747
  br label %_cond2759
_merge2760:
  %_id_s2761 = load i64, i64* %_2746
  call void @print_int(i64 %_id_s2761)
  %_id_s2763 = load i64, i64* %_2746
  ret i64 %_id_s2763
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
