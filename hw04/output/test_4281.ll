; generated from: hw4programs/lfsr.oat
target triple = "x86_64-apple-macosx10.13.0"
@lfsr_iterations = global i64 5
@lfsr_length = global i64 4
@lfsr_init_values = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 1, i1 0, i1 1, i1 0 ] }
@_string4975 = global [2 x i8] c"T\00"
@_string4977 = global [2 x i8] c"F\00"
@_string4950 = global [2 x i8] c" \00"

define i1 @xor(i1 %x, i1 %y) {
  %_x4983 = alloca i1
  %_y4984 = alloca i1
  store i1 %x, i1* %_x4983
  store i1 %y, i1* %_y4984
  %_id_x4985 = load i1, i1* %_x4983
  %_id_y4986 = load i1, i1* %_y4984
  %_unop4987 = icmp eq i1 %_id_y4986, 0
  %_bop4988 = and i1 %_id_x4985, %_unop4987
  %_id_x4989 = load i1, i1* %_x4983
  %_unop4990 = icmp eq i1 %_id_x4989, 0
  %_id_y4991 = load i1, i1* %_y4984
  %_bop4992 = and i1 %_unop4990, %_id_y4991
  %_bop4993 = or i1 %_bop4988, %_bop4992
  ret i1 %_bop4993
}

define i8* @string_of_bool(i1 %b) {
  %_b4973 = alloca i1
  store i1 %b, i1* %_b4973
  br label %_begin_if4979
_begin_if4979:
  %_id_b4974 = load i1, i1* %_b4973
  br i1 %_id_b4974, label %_then_branch4980, label %_else_branch4981
_then_branch4980:
  %_string14976 = getelementptr [2 x i8], [2 x i8]* @_string4975, i32 0, i32 0
  ret i8* %_string14976
_else_branch4981:
  %_string14978 = getelementptr [2 x i8], [2 x i8]* @_string4977, i32 0, i32 0
  ret i8* %_string14978
}

define void @print_lfsr({ i64, [0 x i1] }* %lfsr_register, i64 %len) {
  %_lfsr_register4956 = alloca { i64, [0 x i1] }*
  %_len4957 = alloca i64
  %_4958 = alloca i64
  store { i64, [0 x i1] }* %lfsr_register, { i64, [0 x i1] }** %_lfsr_register4956
  store i64 %len, i64* %_len4957
  store i64 0, i64* %_4958
  br label %_cond4971
_cond4971:
  %_id_i4959 = load i64, i64* %_4958
  %_id_len4960 = load i64, i64* %_len4957
  %_bop4961 = icmp slt i64 %_id_i4959, %_id_len4960
  br i1 %_bop4961, label %_if4970, label %_merge4972
_if4970:
  %_id_lfsr_register4962 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4956
  %_id_i4963 = load i64, i64* %_4958
  %_index_pointer4965 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_register4962, i32 0, i32 1, i64 %_id_i4963
  %_index_value4964 = load i1, i1* %_index_pointer4965
  %_4966 = call i8* @string_of_bool(i1 %_index_value4964)
  call void @print_string(i8* %_4966)
  %_id_i4968 = load i64, i64* %_4958
  %_bop4969 = add i64 %_id_i4968, 1
  store i64 %_bop4969, i64* %_4958
  br label %_cond4971
_merge4972:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4883 = alloca i64
  %_argv4884 = alloca { i64, [0 x i8*] }*
  %_4885 = alloca { i64, [0 x i1] }*
  %_4889 = alloca i64
  %_4905 = alloca i64
  %_4909 = alloca i1
  %_4921 = alloca i64
  store i64 %argc, i64* %_argc4883
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4884
  %_id_lfsr_length4886 = load i64, i64* @lfsr_length
  %_raw_array4887 = call i64* @oat_alloc_array(i64 %_id_lfsr_length4886)
  %_array4888 = bitcast i64* %_raw_array4887 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array4888, { i64, [0 x i1] }** %_4885
  store i64 0, i64* %_4889
  br label %_cond4903
_cond4903:
  %_id_i4890 = load i64, i64* %_4889
  %_id_lfsr_length4891 = load i64, i64* @lfsr_length
  %_bop4892 = icmp slt i64 %_id_i4890, %_id_lfsr_length4891
  br i1 %_bop4892, label %_if4902, label %_merge4904
_if4902:
  %_id_lfsr_init_values4893 = bitcast { i64, [4 x i1] }* @lfsr_init_values to { i64, [0 x i1] }*
  %_id_i4894 = load i64, i64* %_4889
  %_index_pointer4896 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_init_values4893, i32 0, i32 1, i64 %_id_i4894
  %_index_value4895 = load i1, i1* %_index_pointer4896
  %_id_lfsr_register4897 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4885
  %_id_i4898 = load i64, i64* %_4889
  %_4899 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_register4897, i32 0, i32 1, i64 %_id_i4898
  store i1 %_index_value4895, i1* %_4899
  %_id_i4900 = load i64, i64* %_4889
  %_bop4901 = add i64 %_id_i4900, 1
  store i64 %_bop4901, i64* %_4889
  br label %_cond4903
_merge4904:
  store i64 0, i64* %_4905
  br label %_cond4945
_cond4945:
  %_id_i4906 = load i64, i64* %_4905
  %_id_lfsr_iterations4907 = load i64, i64* @lfsr_iterations
  %_bop4908 = icmp slt i64 %_id_i4906, %_id_lfsr_iterations4907
  br i1 %_bop4908, label %_if4944, label %_merge4946
_if4944:
  %_id_lfsr_register4910 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4885
  %_id_lfsr_length4911 = load i64, i64* @lfsr_length
  %_bop4912 = sub i64 %_id_lfsr_length4911, 1
  %_index_pointer4914 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_register4910, i32 0, i32 1, i64 %_bop4912
  %_index_value4913 = load i1, i1* %_index_pointer4914
  %_id_lfsr_register4915 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4885
  %_id_lfsr_length4916 = load i64, i64* @lfsr_length
  %_bop4917 = sub i64 %_id_lfsr_length4916, 2
  %_index_pointer4919 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_register4915, i32 0, i32 1, i64 %_bop4917
  %_index_value4918 = load i1, i1* %_index_pointer4919
  %_4920 = call i1 @xor(i1 %_index_value4913, i1 %_index_value4918)
  store i1 %_4920, i1* %_4909
  %_id_lfsr_length4922 = load i64, i64* @lfsr_length
  %_bop4923 = sub i64 %_id_lfsr_length4922, 1
  store i64 %_bop4923, i64* %_4921
  br label %_cond4937
_cond4937:
  %_id_j4924 = load i64, i64* %_4921
  %_bop4925 = icmp sgt i64 %_id_j4924, 0
  br i1 %_bop4925, label %_if4936, label %_merge4938
_if4936:
  %_id_lfsr_register4926 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4885
  %_id_j4927 = load i64, i64* %_4921
  %_bop4928 = sub i64 %_id_j4927, 1
  %_index_pointer4930 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_register4926, i32 0, i32 1, i64 %_bop4928
  %_index_value4929 = load i1, i1* %_index_pointer4930
  %_id_lfsr_register4931 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4885
  %_id_j4932 = load i64, i64* %_4921
  %_4933 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_register4931, i32 0, i32 1, i64 %_id_j4932
  store i1 %_index_value4929, i1* %_4933
  %_id_j4934 = load i64, i64* %_4921
  %_bop4935 = sub i64 %_id_j4934, 1
  store i64 %_bop4935, i64* %_4921
  br label %_cond4937
_merge4938:
  %_id_new_first4939 = load i1, i1* %_4909
  %_id_lfsr_register4940 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4885
  %_4941 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_register4940, i32 0, i32 1, i32 0
  store i1 %_id_new_first4939, i1* %_4941
  %_id_i4942 = load i64, i64* %_4905
  %_bop4943 = add i64 %_id_i4942, 1
  store i64 %_bop4943, i64* %_4905
  br label %_cond4945
_merge4946:
  %_id_lfsr_init_values4947 = bitcast { i64, [4 x i1] }* @lfsr_init_values to { i64, [0 x i1] }*
  %_id_lfsr_length4948 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_id_lfsr_init_values4947, i64 %_id_lfsr_length4948)
  %_string14951 = getelementptr [2 x i8], [2 x i8]* @_string4950, i32 0, i32 0
  call void @print_string(i8* %_string14951)
  %_id_lfsr_register4953 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_4885
  %_id_lfsr_length4954 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_id_lfsr_register4953, i64 %_id_lfsr_length4954)
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
