; generated from: hw4programs/lcs.oat
target triple = "x86_64-apple-macosx10.13.0"
@buf = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_string4997 = global [1 x i8] c"\00"
@_string4978 = global [7 x i8] c"TOMATO\00"
@_string4981 = global [8 x i8] c"ORATING\00"

define i8* @lcs(i64 %i, i64 %j, i8* %a, i8* %b) {
  %_i4988 = alloca i64
  %_j4989 = alloca i64
  %_a4990 = alloca i8*
  %_b4991 = alloca i8*
  %_a_chars5005 = alloca { i64, [0 x i64] }*
  %_b_chars5008 = alloca { i64, [0 x i64] }*
  %_last_char_a5013 = alloca i64
  %_last_char_b5018 = alloca i64
  %_prev_lcs5029 = alloca i8*
  %_next_char5038 = alloca i8*
  %_left_lcs5052 = alloca i8*
  %_right_lcs5059 = alloca i8*
  %_left_len5062 = alloca i64
  %_right_len5065 = alloca i64
  store i64 %i, i64* %_i4988
  store i64 %j, i64* %_j4989
  store i8* %a, i8** %_a4990
  store i8* %b, i8** %_b4991
  br label %_begin_if5002
_begin_if5002:
  %_id_i4992 = load i64, i64* %_i4988
  %_bop4993 = icmp slt i64 %_id_i4992, 0
  %_id_j4994 = load i64, i64* %_j4989
  %_bop4995 = icmp slt i64 %_id_j4994, 0
  %_bop4996 = or i1 %_bop4993, %_bop4995
  br i1 %_bop4996, label %_then_branch5001, label %_else_branch5000
_then_branch5001:
  %_string14998 = getelementptr [1 x i8], [1 x i8]* @_string4997, i32 0, i32 0
  ret i8* %_string14998
_else_branch5000:
  br label %_end_if4999
_end_if4999:
  %_id_a5003 = load i8*, i8** %_a4990
  %_5004 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_a5003)
  store { i64, [0 x i64] }* %_5004, { i64, [0 x i64] }** %_a_chars5005
  %_id_b5006 = load i8*, i8** %_b4991
  %_5007 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_b5006)
  store { i64, [0 x i64] }* %_5007, { i64, [0 x i64] }** %_b_chars5008
  %_id_a_chars5009 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars5005
  %_id_i5010 = load i64, i64* %_i4988
  %_index_pointer5012 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a_chars5009, i32 0, i32 1, i64 %_id_i5010
  %_index_value5011 = load i64, i64* %_index_pointer5012
  store i64 %_index_value5011, i64* %_last_char_a5013
  %_id_b_chars5014 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b_chars5008
  %_id_j5015 = load i64, i64* %_j4989
  %_index_pointer5017 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b_chars5014, i32 0, i32 1, i64 %_id_j5015
  %_index_value5016 = load i64, i64* %_index_pointer5017
  store i64 %_index_value5016, i64* %_last_char_b5018
  br label %_begin_if5045
_begin_if5045:
  %_id_last_char_a5019 = load i64, i64* %_last_char_a5013
  %_id_last_char_b5020 = load i64, i64* %_last_char_b5018
  %_bop5021 = icmp eq i64 %_id_last_char_a5019, %_id_last_char_b5020
  br i1 %_bop5021, label %_then_branch5044, label %_else_branch5043
_then_branch5044:
  %_id_i5022 = load i64, i64* %_i4988
  %_bop5023 = sub i64 %_id_i5022, 1
  %_id_j5024 = load i64, i64* %_j4989
  %_bop5025 = sub i64 %_id_j5024, 1
  %_id_a5026 = load i8*, i8** %_a4990
  %_id_b5027 = load i8*, i8** %_b4991
  %_5028 = call i8* @lcs(i64 %_bop5023, i64 %_bop5025, i8* %_id_a5026, i8* %_id_b5027)
  store i8* %_5028, i8** %_prev_lcs5029
  %_id_a_chars5030 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars5005
  %_id_i5031 = load i64, i64* %_i4988
  %_index_pointer5033 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a_chars5030, i32 0, i32 1, i64 %_id_i5031
  %_index_value5032 = load i64, i64* %_index_pointer5033
  %_id_buf5034 = bitcast { i64, [1 x i64] }* @buf to { i64, [0 x i64] }*
  %_5035 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_buf5034, i32 0, i32 1, i32 0
  store i64 %_index_value5032, i64* %_5035
  %_id_buf5036 = bitcast { i64, [1 x i64] }* @buf to { i64, [0 x i64] }*
  %_5037 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_buf5036)
  store i8* %_5037, i8** %_next_char5038
  %_id_prev_lcs5039 = load i8*, i8** %_prev_lcs5029
  %_id_next_char5040 = load i8*, i8** %_next_char5038
  %_5041 = call i8* @string_cat(i8* %_id_prev_lcs5039, i8* %_id_next_char5040)
  ret i8* %_5041
_else_branch5043:
  br label %_end_if5042
_end_if5042:
  %_id_i5046 = load i64, i64* %_i4988
  %_id_j5047 = load i64, i64* %_j4989
  %_bop5048 = sub i64 %_id_j5047, 1
  %_id_a5049 = load i8*, i8** %_a4990
  %_id_b5050 = load i8*, i8** %_b4991
  %_5051 = call i8* @lcs(i64 %_id_i5046, i64 %_bop5048, i8* %_id_a5049, i8* %_id_b5050)
  store i8* %_5051, i8** %_left_lcs5052
  %_id_i5053 = load i64, i64* %_i4988
  %_bop5054 = sub i64 %_id_i5053, 1
  %_id_j5055 = load i64, i64* %_j4989
  %_id_a5056 = load i8*, i8** %_a4990
  %_id_b5057 = load i8*, i8** %_b4991
  %_5058 = call i8* @lcs(i64 %_bop5054, i64 %_id_j5055, i8* %_id_a5056, i8* %_id_b5057)
  store i8* %_5058, i8** %_right_lcs5059
  %_id_left_lcs5060 = load i8*, i8** %_left_lcs5052
  %_5061 = call i64 @length_of_string(i8* %_id_left_lcs5060)
  store i64 %_5061, i64* %_left_len5062
  %_id_right_lcs5063 = load i8*, i8** %_right_lcs5059
  %_5064 = call i64 @length_of_string(i8* %_id_right_lcs5063)
  store i64 %_5064, i64* %_right_len5065
  br label %_begin_if5074
_begin_if5074:
  %_id_left_len5066 = load i64, i64* %_left_len5062
  %_id_right_len5067 = load i64, i64* %_right_len5065
  %_bop5068 = icmp slt i64 %_id_left_len5066, %_id_right_len5067
  br i1 %_bop5068, label %_then_branch5073, label %_else_branch5072
_then_branch5073:
  %_id_right_lcs5069 = load i8*, i8** %_right_lcs5059
  ret i8* %_id_right_lcs5069
_else_branch5072:
  %_id_left_lcs5070 = load i8*, i8** %_left_lcs5052
  ret i8* %_id_left_lcs5070
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4976 = alloca i64
  %_argv4977 = alloca { i64, [0 x i8*] }*
  %_tomato4980 = alloca i8*
  %_orating4983 = alloca i8*
  store i64 %argc, i64* %_argc4976
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4977
  %_string14979 = getelementptr [7 x i8], [7 x i8]* @_string4978, i32 0, i32 0
  store i8* %_string14979, i8** %_tomato4980
  %_string14982 = getelementptr [8 x i8], [8 x i8]* @_string4981, i32 0, i32 0
  store i8* %_string14982, i8** %_orating4983
  %_id_tomato4984 = load i8*, i8** %_tomato4980
  %_id_orating4985 = load i8*, i8** %_orating4983
  %_4986 = call i8* @lcs(i64 5, i64 6, i8* %_id_tomato4984, i8* %_id_orating4985)
  call void @print_string(i8* %_4986)
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
