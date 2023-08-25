; generated from: hw4programs/lib11.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string2901 = global [11 x i8] c"1234967890\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2898 = alloca i64
  %_argv2899 = alloca { i64, [0 x i8*] }*
  %_2900 = alloca { i64, [0 x i64] }*
  %_2904 = alloca i64
  %_2905 = alloca i64
  %_2917 = alloca i64
  store i64 %argc, i64* %_argc2898
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2899
  %_string12902 = getelementptr [11 x i8], [11 x i8]* @_string2901, i32 0, i32 0
  %_2903 = call { i64, [0 x i64] }* @array_of_string(i8* %_string12902)
  store { i64, [0 x i64] }* %_2903, { i64, [0 x i64] }** %_2900
  store i64 0, i64* %_2904
  store i64 0, i64* %_2905
  br label %_cond2915
_cond2915:
  %_id_i2906 = load i64, i64* %_2905
  %_bop2907 = icmp slt i64 %_id_i2906, 10
  br i1 %_bop2907, label %_if2914, label %_merge2916
_if2914:
  %_id_i2908 = load i64, i64* %_2905
  %_id_arr2909 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2900
  %_id_i2910 = load i64, i64* %_2905
  %_2911 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr2909, i32 0, i32 1, i64 %_id_i2910
  store i64 %_id_i2908, i64* %_2911
  %_id_i2912 = load i64, i64* %_2905
  %_bop2913 = add i64 %_id_i2912, 1
  store i64 %_bop2913, i64* %_2905
  br label %_cond2915
_merge2916:
  store i64 0, i64* %_2917
  br label %_cond2929
_cond2929:
  %_id_i2918 = load i64, i64* %_2917
  %_bop2919 = icmp slt i64 %_id_i2918, 10
  br i1 %_bop2919, label %_if2928, label %_merge2930
_if2928:
  %_id_sum2920 = load i64, i64* %_2904
  %_id_arr2921 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2900
  %_id_i2922 = load i64, i64* %_2917
  %_index_pointer2924 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr2921, i32 0, i32 1, i64 %_id_i2922
  %_index_value2923 = load i64, i64* %_index_pointer2924
  %_bop2925 = add i64 %_id_sum2920, %_index_value2923
  store i64 %_bop2925, i64* %_2904
  %_id_i2926 = load i64, i64* %_2917
  %_bop2927 = add i64 %_id_i2926, 1
  store i64 %_bop2927, i64* %_2917
  br label %_cond2929
_merge2930:
  %_id_sum2931 = load i64, i64* %_2904
  ret i64 %_id_sum2931
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
