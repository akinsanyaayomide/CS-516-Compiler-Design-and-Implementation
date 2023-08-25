; generated from: hw4programs/lib15.oat
target triple = "x86_64-apple-macosx10.13.0"
define i8* @sub(i8* %str, i64 %start, i64 %len) {
  %_str2977 = alloca i8*
  %_start2978 = alloca i64
  %_len2979 = alloca i64
  %_2980 = alloca { i64, [0 x i64] }*
  %_2983 = alloca { i64, [0 x i64] }*
  %_2987 = alloca i64
  store i8* %str, i8** %_str2977
  store i64 %start, i64* %_start2978
  store i64 %len, i64* %_len2979
  %_id_str2981 = load i8*, i8** %_str2977
  %_2982 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_str2981)
  store { i64, [0 x i64] }* %_2982, { i64, [0 x i64] }** %_2980
  %_id_len2984 = load i64, i64* %_len2979
  %_raw_array2985 = call i64* @oat_alloc_array(i64 %_id_len2984)
  %_array2986 = bitcast i64* %_raw_array2985 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2986, { i64, [0 x i64] }** %_2983
  store i64 0, i64* %_2987
  br label %_cond3003
_cond3003:
  %_id_i2988 = load i64, i64* %_2987
  %_id_len2989 = load i64, i64* %_len2979
  %_bop2990 = icmp slt i64 %_id_i2988, %_id_len2989
  br i1 %_bop2990, label %_if3002, label %_merge3004
_if3002:
  %_id_arr2991 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2980
  %_id_i2992 = load i64, i64* %_2987
  %_id_start2993 = load i64, i64* %_start2978
  %_bop2994 = add i64 %_id_i2992, %_id_start2993
  %_index_pointer2996 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr2991, i32 0, i32 1, i64 %_bop2994
  %_index_value2995 = load i64, i64* %_index_pointer2996
  %_id_r2997 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2983
  %_id_i2998 = load i64, i64* %_2987
  %_2999 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_r2997, i32 0, i32 1, i64 %_id_i2998
  store i64 %_index_value2995, i64* %_2999
  %_id_i3000 = load i64, i64* %_2987
  %_bop3001 = add i64 %_id_i3000, 1
  store i64 %_bop3001, i64* %_2987
  br label %_cond3003
_merge3004:
  %_id_r3005 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2983
  %_3006 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_r3005)
  ret i8* %_3006
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2970 = alloca i64
  %_argv2971 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc2970
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2971
  %_id_argv2972 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2971
  %_index_pointer2974 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_id_argv2972, i32 0, i32 1, i32 1
  %_index_value2973 = load i8*, i8** %_index_pointer2974
  %_2975 = call i8* @sub(i8* %_index_value2973, i64 3, i64 5)
  call void @print_string(i8* %_2975)
  ret i64 0
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
