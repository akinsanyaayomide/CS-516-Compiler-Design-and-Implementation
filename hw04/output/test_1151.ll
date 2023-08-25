; generated from: hw4programs/lcs.oat
target triple = "x86_64-apple-macosx10.13.0"
@buf = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_string5004 = global [1 x i8] c"\00"
@_string4986 = global [7 x i8] c"TOMATO\00"
@_string4989 = global [8 x i8] c"ORATING\00"

define i8* @lcs(i64 %i, i64 %j, i8* %a, i8* %b) {
  %_i4995 = alloca i64
  %_j4996 = alloca i64
  %_a4997 = alloca i8*
  %_b4998 = alloca i8*
  %_5010 = alloca { i64, [0 x i64] }*
  %_5013 = alloca { i64, [0 x i64] }*
  %_5016 = alloca i64
  %_5021 = alloca i64
  %_5029 = alloca i8*
  %_5043 = alloca i8*
  %_5053 = alloca i8*
  %_5060 = alloca i8*
  %_5067 = alloca i64
  %_5070 = alloca i64
  store i64 %i, i64* %_i4995
  store i64 %j, i64* %_j4996
  store i8* %a, i8** %_a4997
  store i8* %b, i8** %_b4998
  br label %_start5006
_start5006:
  %_id_j5001 = load i64, i64* %_j4996
  %_5002 = icmp slt i64 %_id_j5001, 0
  %_id_i4999 = load i64, i64* %_i4995
  %_5000 = icmp slt i64 %_id_i4999, 0
  %_5003 = or i1 %_5000, %_5002
  br i1 %_5003, label %_then5007, label %_else5008
_then5007:
  %_string15005 = getelementptr [1 x i8], [1 x i8]* @_string5004, i32 0, i32 0
  ret i8* %_string15005
_else5008:
  br label %_post5009
_post5009:
  %_id_a5011 = load i8*, i8** %_a4997
  %_5012 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_a5011)
  store { i64, [0 x i64] }* %_5012, { i64, [0 x i64] }** %_5010
  %_id_b5014 = load i8*, i8** %_b4998
  %_5015 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_b5014)
  store { i64, [0 x i64] }* %_5015, { i64, [0 x i64] }** %_5013
  %_id_a_chars5017 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5010
  %_id_i5018 = load i64, i64* %_i4995
  %_index_pointer5019 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a_chars5017, i32 0, i32 1, i64 %_id_i5018
  %_index_value5020 = load i64, i64* %_index_pointer5019
  store i64 %_index_value5020, i64* %_5016
  %_id_b_chars5022 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5013
  %_id_j5023 = load i64, i64* %_j4996
  %_index_pointer5024 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b_chars5022, i32 0, i32 1, i64 %_id_j5023
  %_index_value5025 = load i64, i64* %_index_pointer5024
  store i64 %_index_value5025, i64* %_5021
  br label %_start5049
_start5049:
  %_id_last_char_b5027 = load i64, i64* %_5021
  %_id_last_char_a5026 = load i64, i64* %_5016
  %_5028 = icmp eq i64 %_id_last_char_a5026, %_id_last_char_b5027
  br i1 %_5028, label %_then5050, label %_else5051
_then5050:
  %_id_i5030 = load i64, i64* %_i4995
  %_5031 = sub i64 %_id_i5030, 1
  %_id_j5032 = load i64, i64* %_j4996
  %_5033 = sub i64 %_id_j5032, 1
  %_id_a5034 = load i8*, i8** %_a4997
  %_id_b5035 = load i8*, i8** %_b4998
  %_5036 = call i8* @lcs(i64 %_5031, i64 %_5033, i8* %_id_a5034, i8* %_id_b5035)
  store i8* %_5036, i8** %_5029
  %_id_a_chars5037 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5010
  %_id_i5038 = load i64, i64* %_i4995
  %_index_pointer5039 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a_chars5037, i32 0, i32 1, i64 %_id_i5038
  %_index_value5040 = load i64, i64* %_index_pointer5039
  %_id_buf5041 = bitcast { i64, [1 x i64] }* @buf to { i64, [0 x i64] }*
  %_5042 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_buf5041, i32 0, i32 1, i32 0
  store i64 %_index_value5040, i64* %_5042
  %_id_buf5044 = bitcast { i64, [1 x i64] }* @buf to { i64, [0 x i64] }*
  %_5045 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_buf5044)
  store i8* %_5045, i8** %_5043
  %_id_prev_lcs5046 = load i8*, i8** %_5029
  %_id_next_char5047 = load i8*, i8** %_5043
  %_5048 = call i8* @string_cat(i8* %_id_prev_lcs5046, i8* %_id_next_char5047)
  ret i8* %_5048
_else5051:
  br label %_post5052
_post5052:
  %_id_i5054 = load i64, i64* %_i4995
  %_id_j5055 = load i64, i64* %_j4996
  %_5056 = sub i64 %_id_j5055, 1
  %_id_a5057 = load i8*, i8** %_a4997
  %_id_b5058 = load i8*, i8** %_b4998
  %_5059 = call i8* @lcs(i64 %_id_i5054, i64 %_5056, i8* %_id_a5057, i8* %_id_b5058)
  store i8* %_5059, i8** %_5053
  %_id_i5061 = load i64, i64* %_i4995
  %_5062 = sub i64 %_id_i5061, 1
  %_id_j5063 = load i64, i64* %_j4996
  %_id_a5064 = load i8*, i8** %_a4997
  %_id_b5065 = load i8*, i8** %_b4998
  %_5066 = call i8* @lcs(i64 %_5062, i64 %_id_j5063, i8* %_id_a5064, i8* %_id_b5065)
  store i8* %_5066, i8** %_5060
  %_id_left_lcs5068 = load i8*, i8** %_5053
  %_5069 = call i64 @length_of_string(i8* %_id_left_lcs5068)
  store i64 %_5069, i64* %_5067
  %_id_right_lcs5071 = load i8*, i8** %_5060
  %_5072 = call i64 @length_of_string(i8* %_id_right_lcs5071)
  store i64 %_5072, i64* %_5070
  br label %_start5078
_start5078:
  %_id_right_len5074 = load i64, i64* %_5070
  %_id_left_len5073 = load i64, i64* %_5067
  %_5075 = icmp slt i64 %_id_left_len5073, %_id_right_len5074
  br i1 %_5075, label %_then5079, label %_else5080
_then5079:
  %_id_right_lcs5076 = load i8*, i8** %_5060
  ret i8* %_id_right_lcs5076
_else5080:
  %_id_left_lcs5077 = load i8*, i8** %_5053
  ret i8* %_id_left_lcs5077
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4983 = alloca i64
  %_argv4984 = alloca { i64, [0 x i8*] }*
  %_4985 = alloca i8*
  %_4988 = alloca i8*
  store i64 %argc, i64* %_argc4983
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4984
  %_string14987 = getelementptr [7 x i8], [7 x i8]* @_string4986, i32 0, i32 0
  store i8* %_string14987, i8** %_4985
  %_string14990 = getelementptr [8 x i8], [8 x i8]* @_string4989, i32 0, i32 0
  store i8* %_string14990, i8** %_4988
  %_id_tomato4991 = load i8*, i8** %_4985
  %_id_orating4992 = load i8*, i8** %_4988
  %_4993 = call i8* @lcs(i64 5, i64 6, i8* %_id_tomato4991, i8* %_id_orating4992)
  call void @print_string(i8* %_4993)
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
