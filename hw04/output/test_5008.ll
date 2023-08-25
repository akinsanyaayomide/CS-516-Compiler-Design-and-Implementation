; generated from: hw4programs/lcs.oat
target triple = "x86_64-apple-macosx10.13.0"
@buf = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_string4997 = global [1 x i8] c"\00"
@_string4979 = global [7 x i8] c"TOMATO\00"
@_string4982 = global [8 x i8] c"ORATING\00"

define i8* @lcs(i64 %i, i64 %j, i8* %a, i8* %b) {
  %_i4988 = alloca i64
  %_j4989 = alloca i64
  %_a4990 = alloca i8*
  %_b4991 = alloca i8*
  %_5003 = alloca { i64, [0 x i64] }*
  %_5006 = alloca { i64, [0 x i64] }*
  %_5009 = alloca i64
  %_5014 = alloca i64
  %_5022 = alloca i8*
  %_5036 = alloca i8*
  %_5046 = alloca i8*
  %_5053 = alloca i8*
  %_5060 = alloca i64
  %_5063 = alloca i64
  store i64 %i, i64* %_i4988
  store i64 %j, i64* %_j4989
  store i8* %a, i8** %_a4990
  store i8* %b, i8** %_b4991
  br label %_begin_if4999
_begin_if4999:
  %_id_i4992 = load i64, i64* %_i4988
  %_bop4993 = icmp slt i64 %_id_i4992, 0
  %_id_j4994 = load i64, i64* %_j4989
  %_bop4995 = icmp slt i64 %_id_j4994, 0
  %_bop4996 = or i1 %_bop4993, %_bop4995
  br i1 %_bop4996, label %_then_branch5000, label %_else_branch5001
_then_branch5000:
  %_string14998 = getelementptr [1 x i8], [1 x i8]* @_string4997, i32 0, i32 0
  ret i8* %_string14998
_else_branch5001:
  br label %_end_if5002
_end_if5002:
  %_id_a5004 = load i8*, i8** %_a4990
  %_5005 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_a5004)
  store { i64, [0 x i64] }* %_5005, { i64, [0 x i64] }** %_5003
  %_id_b5007 = load i8*, i8** %_b4991
  %_5008 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_b5007)
  store { i64, [0 x i64] }* %_5008, { i64, [0 x i64] }** %_5006
  %_id_a_chars5010 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5003
  %_id_i5011 = load i64, i64* %_i4988
  %_index_pointer5013 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a_chars5010, i32 0, i32 1, i64 %_id_i5011
  %_index_value5012 = load i64, i64* %_index_pointer5013
  store i64 %_index_value5012, i64* %_5009
  %_id_b_chars5015 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5006
  %_id_j5016 = load i64, i64* %_j4989
  %_index_pointer5018 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b_chars5015, i32 0, i32 1, i64 %_id_j5016
  %_index_value5017 = load i64, i64* %_index_pointer5018
  store i64 %_index_value5017, i64* %_5014
  br label %_begin_if5042
_begin_if5042:
  %_id_last_char_a5019 = load i64, i64* %_5009
  %_id_last_char_b5020 = load i64, i64* %_5014
  %_bop5021 = icmp eq i64 %_id_last_char_a5019, %_id_last_char_b5020
  br i1 %_bop5021, label %_then_branch5043, label %_else_branch5044
_then_branch5043:
  %_id_i5023 = load i64, i64* %_i4988
  %_bop5024 = sub i64 %_id_i5023, 1
  %_id_j5025 = load i64, i64* %_j4989
  %_bop5026 = sub i64 %_id_j5025, 1
  %_id_a5027 = load i8*, i8** %_a4990
  %_id_b5028 = load i8*, i8** %_b4991
  %_5029 = call i8* @lcs(i64 %_bop5024, i64 %_bop5026, i8* %_id_a5027, i8* %_id_b5028)
  store i8* %_5029, i8** %_5022
  %_id_a_chars5030 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5003
  %_id_i5031 = load i64, i64* %_i4988
  %_index_pointer5033 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a_chars5030, i32 0, i32 1, i64 %_id_i5031
  %_index_value5032 = load i64, i64* %_index_pointer5033
  %_id_buf5034 = bitcast { i64, [1 x i64] }* @buf to { i64, [0 x i64] }*
  %_5035 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_buf5034, i32 0, i32 1, i32 0
  store i64 %_index_value5032, i64* %_5035
  %_id_buf5037 = bitcast { i64, [1 x i64] }* @buf to { i64, [0 x i64] }*
  %_5038 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_buf5037)
  store i8* %_5038, i8** %_5036
  %_id_prev_lcs5039 = load i8*, i8** %_5022
  %_id_next_char5040 = load i8*, i8** %_5036
  %_5041 = call i8* @string_cat(i8* %_id_prev_lcs5039, i8* %_id_next_char5040)
  ret i8* %_5041
_else_branch5044:
  br label %_end_if5045
_end_if5045:
  %_id_i5047 = load i64, i64* %_i4988
  %_id_j5048 = load i64, i64* %_j4989
  %_bop5049 = sub i64 %_id_j5048, 1
  %_id_a5050 = load i8*, i8** %_a4990
  %_id_b5051 = load i8*, i8** %_b4991
  %_5052 = call i8* @lcs(i64 %_id_i5047, i64 %_bop5049, i8* %_id_a5050, i8* %_id_b5051)
  store i8* %_5052, i8** %_5046
  %_id_i5054 = load i64, i64* %_i4988
  %_bop5055 = sub i64 %_id_i5054, 1
  %_id_j5056 = load i64, i64* %_j4989
  %_id_a5057 = load i8*, i8** %_a4990
  %_id_b5058 = load i8*, i8** %_b4991
  %_5059 = call i8* @lcs(i64 %_bop5055, i64 %_id_j5056, i8* %_id_a5057, i8* %_id_b5058)
  store i8* %_5059, i8** %_5053
  %_id_left_lcs5061 = load i8*, i8** %_5046
  %_5062 = call i64 @length_of_string(i8* %_id_left_lcs5061)
  store i64 %_5062, i64* %_5060
  %_id_right_lcs5064 = load i8*, i8** %_5053
  %_5065 = call i64 @length_of_string(i8* %_id_right_lcs5064)
  store i64 %_5065, i64* %_5063
  br label %_begin_if5071
_begin_if5071:
  %_id_left_len5066 = load i64, i64* %_5060
  %_id_right_len5067 = load i64, i64* %_5063
  %_bop5068 = icmp slt i64 %_id_left_len5066, %_id_right_len5067
  br i1 %_bop5068, label %_then_branch5072, label %_else_branch5073
_then_branch5072:
  %_id_right_lcs5069 = load i8*, i8** %_5053
  ret i8* %_id_right_lcs5069
_else_branch5073:
  %_id_left_lcs5070 = load i8*, i8** %_5046
  ret i8* %_id_left_lcs5070
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4976 = alloca i64
  %_argv4977 = alloca { i64, [0 x i8*] }*
  %_4978 = alloca i8*
  %_4981 = alloca i8*
  store i64 %argc, i64* %_argc4976
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4977
  %_string14980 = getelementptr [7 x i8], [7 x i8]* @_string4979, i32 0, i32 0
  store i8* %_string14980, i8** %_4978
  %_string14983 = getelementptr [8 x i8], [8 x i8]* @_string4982, i32 0, i32 0
  store i8* %_string14983, i8** %_4981
  %_id_tomato4984 = load i8*, i8** %_4978
  %_id_orating4985 = load i8*, i8** %_4981
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
