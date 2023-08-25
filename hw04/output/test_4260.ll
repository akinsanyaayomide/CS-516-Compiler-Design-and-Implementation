; generated from: hw4programs/lib6.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2788 = alloca i64
  %_argv2789 = alloca { i64, [0 x i8*] }*
  %_2790 = alloca { i64, [0 x i64] }*
  %_2808 = alloca i8*
  %_2811 = alloca { i64, [0 x i64] }*
  %_2814 = alloca i64
  %_2815 = alloca i64
  store i64 %argc, i64* %_argc2788
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2789
  %_raw_array2791 = call i64* @oat_alloc_array(i64 5)
  %_array2792 = bitcast i64* %_raw_array2791 to { i64, [0 x i64] }*
  %_2807 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2792, i32 0, i32 1, i32 4
  store i64 115, i64* %_2805
  %_2804 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2792, i32 0, i32 1, i32 3
  store i64 114, i64* %_2802
  %_2801 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2792, i32 0, i32 1, i32 2
  store i64 113, i64* %_2799
  %_2798 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2792, i32 0, i32 1, i32 1
  store i64 112, i64* %_2796
  %_2795 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2792, i32 0, i32 1, i32 0
  store i64 111, i64* %_2793
  store { i64, [0 x i64] }* %_array2792, { i64, [0 x i64] }** %_2790
  %_id_arr12809 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2790
  %_2810 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_arr12809)
  store i8* %_2810, i8** %_2808
  %_id_str2812 = load i8*, i8** %_2808
  %_2813 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_str2812)
  store { i64, [0 x i64] }* %_2813, { i64, [0 x i64] }** %_2811
  store i64 0, i64* %_2814
  store i64 0, i64* %_2815
  br label %_cond2827
_cond2827:
  %_id_i2816 = load i64, i64* %_2815
  %_bop2817 = icmp slt i64 %_id_i2816, 5
  br i1 %_bop2817, label %_if2826, label %_merge2828
_if2826:
  %_id_s2818 = load i64, i64* %_2814
  %_id_arr22819 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2811
  %_id_i2820 = load i64, i64* %_2815
  %_index_pointer2822 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr22819, i32 0, i32 1, i64 %_id_i2820
  %_index_value2821 = load i64, i64* %_index_pointer2822
  %_bop2823 = add i64 %_id_s2818, %_index_value2821
  store i64 %_bop2823, i64* %_2814
  %_id_i2824 = load i64, i64* %_2815
  %_bop2825 = add i64 %_id_i2824, 1
  store i64 %_bop2825, i64* %_2815
  br label %_cond2827
_merge2828:
  %_id_s2829 = load i64, i64* %_2814
  call void @print_int(i64 %_id_s2829)
  %_id_s2831 = load i64, i64* %_2814
  ret i64 %_id_s2831
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
