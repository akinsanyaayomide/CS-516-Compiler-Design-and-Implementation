; generated from: hw4programs/lib9.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2881 = alloca i64
  %_argv2882 = alloca { i64, [0 x i8*] }*
  %_2883 = alloca i64
  store i64 %argc, i64* %_argc2881
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2882
  store i64 1, i64* %_2883
  br label %_cond2895
_cond2895:
  %_id_i2884 = load i64, i64* %_2883
  %_id_argc2885 = load i64, i64* %_argc2881
  %_bop2886 = icmp slt i64 %_id_i2884, %_id_argc2885
  br i1 %_bop2886, label %_if2894, label %_merge2896
_if2894:
  %_id_argv2887 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2882
  %_id_i2888 = load i64, i64* %_2883
  %_index_pointer2890 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_id_argv2887, i32 0, i32 1, i64 %_id_i2888
  %_index_value2889 = load i8*, i8** %_index_pointer2890
  call void @print_string(i8* %_index_value2889)
  %_id_i2892 = load i64, i64* %_2883
  %_bop2893 = add i64 %_id_i2892, 1
  store i64 %_bop2893, i64* %_2883
  br label %_cond2895
_merge2896:
  %_id_argc2897 = load i64, i64* %_argc2881
  ret i64 %_id_argc2897
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
