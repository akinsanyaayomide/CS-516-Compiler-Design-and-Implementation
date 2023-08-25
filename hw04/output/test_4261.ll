; generated from: hw4programs/lib7.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2832 = alloca i64
  %_argv2833 = alloca { i64, [0 x i8*] }*
  %_2834 = alloca { i64, [0 x i64] }*
  %_2852 = alloca i8*
  %_2855 = alloca { i64, [0 x i64] }*
  %_2858 = alloca i64
  %_2859 = alloca i64
  store i64 %argc, i64* %_argc2832
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2833
  %_raw_array2835 = call i64* @oat_alloc_array(i64 5)
  %_array2836 = bitcast i64* %_raw_array2835 to { i64, [0 x i64] }*
  %_2851 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2836, i32 0, i32 1, i32 4
  store i64 115, i64* %_2849
  %_2848 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2836, i32 0, i32 1, i32 3
  store i64 114, i64* %_2846
  %_2845 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2836, i32 0, i32 1, i32 2
  store i64 113, i64* %_2843
  %_2842 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2836, i32 0, i32 1, i32 1
  store i64 112, i64* %_2840
  %_2839 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2836, i32 0, i32 1, i32 0
  store i64 111, i64* %_2837
  store { i64, [0 x i64] }* %_array2836, { i64, [0 x i64] }** %_2834
  %_id_arr12853 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2834
  %_2854 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_arr12853)
  store i8* %_2854, i8** %_2852
  %_id_str2856 = load i8*, i8** %_2852
  %_2857 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_str2856)
  store { i64, [0 x i64] }* %_2857, { i64, [0 x i64] }** %_2855
  store i64 0, i64* %_2858
  store i64 0, i64* %_2859
  br label %_cond2871
_cond2871:
  %_id_i2860 = load i64, i64* %_2859
  %_bop2861 = icmp slt i64 %_id_i2860, 5
  br i1 %_bop2861, label %_if2870, label %_merge2872
_if2870:
  %_id_s2862 = load i64, i64* %_2858
  %_id_arr22863 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2855
  %_id_i2864 = load i64, i64* %_2859
  %_index_pointer2866 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr22863, i32 0, i32 1, i64 %_id_i2864
  %_index_value2865 = load i64, i64* %_index_pointer2866
  %_bop2867 = add i64 %_id_s2862, %_index_value2865
  store i64 %_bop2867, i64* %_2858
  %_id_i2868 = load i64, i64* %_2859
  %_bop2869 = add i64 %_id_i2868, 1
  store i64 %_bop2869, i64* %_2859
  br label %_cond2871
_merge2872:
  %_id_s2873 = load i64, i64* %_2858
  ret i64 %_id_s2873
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
