; generated from: hw4programs/maxsubsequence.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @maxsum({ i64, [0 x i64] }* %arr, i64 %size) {
  %_arr4918 = alloca { i64, [0 x i64] }*
  %_size4919 = alloca i64
  %_4920 = alloca { i64, [0 x i64] }*
  %_4924 = alloca i64
  %_4930 = alloca i64
  %_4934 = alloca i64
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4918
  store i64 %size, i64* %_size4919
  %_id_size4921 = load i64, i64* %_size4919
  %_raw_array4922 = call i64* @oat_alloc_array(i64 %_id_size4921)
  %_array4923 = bitcast i64* %_raw_array4922 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4923, { i64, [0 x i64] }** %_4920
  store i64 0, i64* %_4924
  %_id_arr4925 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4918
  %_index_pointer4926 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4925, i32 0, i32 1, i32 0
  %_index_value4927 = load i64, i64* %_index_pointer4926
  %_id_maxarr4928 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4920
  %_4929 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr4928, i32 0, i32 1, i32 0
  store i64 %_index_value4927, i64* %_4929
  store i64 0, i64* %_4930
  br label %_start4999
_start4999:
  %_id_size4932 = load i64, i64* %_size4919
  %_id_i4931 = load i64, i64* %_4930
  %_4933 = icmp slt i64 %_id_i4931, %_id_size4932
  br i1 %_4933, label %_body5000, label %_else5001
_body5000:
  store i64 0, i64* %_4934
  br label %_start4980
_start4980:
  %_id_i4936 = load i64, i64* %_4930
  %_id_j4935 = load i64, i64* %_4934
  %_4937 = icmp slt i64 %_id_j4935, %_id_i4936
  br i1 %_4937, label %_body4981, label %_else4982
_body4981:
  br label %_start4974
_start4974:
  %_id_arr4955 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4918
  %_id_i4956 = load i64, i64* %_4930
  %_index_pointer4957 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4955, i32 0, i32 1, i64 %_id_i4956
  %_index_value4958 = load i64, i64* %_index_pointer4957
  %_id_maxarr4951 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4920
  %_id_j4952 = load i64, i64* %_4934
  %_index_pointer4953 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr4951, i32 0, i32 1, i64 %_id_j4952
  %_index_value4954 = load i64, i64* %_index_pointer4953
  %_4959 = add i64 %_index_value4954, %_index_value4958
  %_id_maxarr4947 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4920
  %_id_i4948 = load i64, i64* %_4930
  %_index_pointer4949 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr4947, i32 0, i32 1, i64 %_id_i4948
  %_index_value4950 = load i64, i64* %_index_pointer4949
  %_4960 = icmp slt i64 %_index_value4950, %_4959
  %_id_arr4942 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4918
  %_id_j4943 = load i64, i64* %_4934
  %_index_pointer4944 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4942, i32 0, i32 1, i64 %_id_j4943
  %_index_value4945 = load i64, i64* %_index_pointer4944
  %_id_arr4938 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4918
  %_id_i4939 = load i64, i64* %_4930
  %_index_pointer4940 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4938, i32 0, i32 1, i64 %_id_i4939
  %_index_value4941 = load i64, i64* %_index_pointer4940
  %_4946 = icmp sgt i64 %_index_value4941, %_index_value4945
  %_4961 = and i1 %_4946, %_4960
  br i1 %_4961, label %_then4975, label %_else4976
_then4975:
  %_id_arr4966 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4918
  %_id_i4967 = load i64, i64* %_4930
  %_index_pointer4968 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4966, i32 0, i32 1, i64 %_id_i4967
  %_index_value4969 = load i64, i64* %_index_pointer4968
  %_id_maxarr4962 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4920
  %_id_j4963 = load i64, i64* %_4934
  %_index_pointer4964 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr4962, i32 0, i32 1, i64 %_id_j4963
  %_index_value4965 = load i64, i64* %_index_pointer4964
  %_4970 = add i64 %_index_value4965, %_index_value4969
  %_id_maxarr4971 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4920
  %_id_i4972 = load i64, i64* %_4930
  %_4973 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr4971, i32 0, i32 1, i64 %_id_i4972
  store i64 %_4970, i64* %_4973
  br label %_post4977
_else4976:
  br label %_post4977
_post4977:
  %_id_j4978 = load i64, i64* %_4934
  %_4979 = add i64 %_id_j4978, 1
  store i64 %_4979, i64* %_4934
  br label %_start4980
_else4982:
  br label %_start4993
_start4993:
  %_id_maxarr4984 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4920
  %_id_i4985 = load i64, i64* %_4930
  %_index_pointer4986 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr4984, i32 0, i32 1, i64 %_id_i4985
  %_index_value4987 = load i64, i64* %_index_pointer4986
  %_id_maxs4983 = load i64, i64* %_4924
  %_4988 = icmp slt i64 %_id_maxs4983, %_index_value4987
  br i1 %_4988, label %_then4994, label %_else4995
_then4994:
  %_id_maxarr4989 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4920
  %_id_i4990 = load i64, i64* %_4930
  %_index_pointer4991 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr4989, i32 0, i32 1, i64 %_id_i4990
  %_index_value4992 = load i64, i64* %_index_pointer4991
  store i64 %_index_value4992, i64* %_4924
  br label %_post4996
_else4995:
  br label %_post4996
_post4996:
  %_id_i4997 = load i64, i64* %_4930
  %_4998 = add i64 %_id_i4997, 1
  store i64 %_4998, i64* %_4930
  br label %_start4999
_else5001:
  %_id_maxs5002 = load i64, i64* %_4924
  ret i64 %_id_maxs5002
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4895 = alloca i64
  %_argv4896 = alloca { i64, [0 x i8*] }*
  %_4897 = alloca { i64, [0 x i64] }*
  %_4914 = alloca i64
  store i64 %argc, i64* %_argc4895
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4896
  %_raw_array4898 = call i64* @oat_alloc_array(i64 7)
  %_array4899 = bitcast i64* %_raw_array4898 to { i64, [0 x i64] }*
  %_4912 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4899, i32 0, i32 1, i32 6
  store i64 5, i64* %_4912
  %_4910 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4899, i32 0, i32 1, i32 5
  store i64 4, i64* %_4910
  %_4908 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4899, i32 0, i32 1, i32 4
  store i64 101, i64* %_4908
  %_4906 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4899, i32 0, i32 1, i32 3
  store i64 3, i64* %_4906
  %_4904 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4899, i32 0, i32 1, i32 2
  store i64 2, i64* %_4904
  %_4902 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4899, i32 0, i32 1, i32 1
  store i64 101, i64* %_4902
  %_4900 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4899, i32 0, i32 1, i32 0
  store i64 1, i64* %_4900
  store { i64, [0 x i64] }* %_array4899, { i64, [0 x i64] }** %_4897
  %_id_array4915 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4897
  %_4916 = call i64 @maxsum({ i64, [0 x i64] }* %_id_array4915, i64 7)
  store i64 %_4916, i64* %_4914
  %_id_max_ans4917 = load i64, i64* %_4914
  ret i64 %_id_max_ans4917
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
