; generated from: hw4programs/gnomesort.oat
target triple = "x86_64-apple-macosx10.13.0"
define void @gnomeSort({ i64, [0 x i64] }* %a, i64 %len) {
  %_a5040 = alloca { i64, [0 x i64] }*
  %_len5041 = alloca i64
  %_5042 = alloca i64
  %_5043 = alloca i64
  %_5060 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a5040
  store i64 %len, i64* %_len5041
  store i64 1, i64* %_5042
  store i64 2, i64* %_5043
  br label %_cond5094
_cond5094:
  %_id_i5044 = load i64, i64* %_5042
  %_id_len5045 = load i64, i64* %_len5041
  %_bop5046 = icmp slt i64 %_id_i5044, %_id_len5045
  br i1 %_bop5046, label %_if5093, label %_merge5095
_if5093:
  br label %_begin_if5089
_begin_if5089:
  %_id_a5047 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5040
  %_id_i5048 = load i64, i64* %_5042
  %_bop5049 = sub i64 %_id_i5048, 1
  %_index_pointer5051 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a5047, i32 0, i32 1, i64 %_bop5049
  %_index_value5050 = load i64, i64* %_index_pointer5051
  %_id_a5052 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5040
  %_id_i5053 = load i64, i64* %_5042
  %_index_pointer5055 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a5052, i32 0, i32 1, i64 %_id_i5053
  %_index_value5054 = load i64, i64* %_index_pointer5055
  %_bop5056 = icmp sle i64 %_index_value5050, %_index_value5054
  br i1 %_bop5056, label %_then_branch5090, label %_else_branch5091
_then_branch5090:
  %_id_j5057 = load i64, i64* %_5043
  store i64 %_id_j5057, i64* %_5042
  %_id_j5058 = load i64, i64* %_5043
  %_bop5059 = add i64 %_id_j5058, 1
  store i64 %_bop5059, i64* %_5043
  br label %_end_if5092
_else_branch5091:
  %_id_a5061 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5040
  %_id_i5062 = load i64, i64* %_5042
  %_bop5063 = sub i64 %_id_i5062, 1
  %_index_pointer5065 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a5061, i32 0, i32 1, i64 %_bop5063
  %_index_value5064 = load i64, i64* %_index_pointer5065
  store i64 %_index_value5064, i64* %_5060
  %_id_a5066 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5040
  %_id_i5067 = load i64, i64* %_5042
  %_index_pointer5069 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a5066, i32 0, i32 1, i64 %_id_i5067
  %_index_value5068 = load i64, i64* %_index_pointer5069
  %_id_a5070 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5040
  %_id_i5071 = load i64, i64* %_5042
  %_bop5072 = sub i64 %_id_i5071, 1
  %_5073 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a5070, i32 0, i32 1, i64 %_bop5072
  store i64 %_index_value5068, i64* %_5073
  %_id_tmp5074 = load i64, i64* %_5060
  %_id_a5075 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5040
  %_id_i5076 = load i64, i64* %_5042
  %_5077 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a5075, i32 0, i32 1, i64 %_id_i5076
  store i64 %_id_tmp5074, i64* %_5077
  %_id_i5078 = load i64, i64* %_5042
  %_bop5079 = sub i64 %_id_i5078, 1
  store i64 %_bop5079, i64* %_5042
  br label %_begin_if5085
_begin_if5085:
  %_id_i5080 = load i64, i64* %_5042
  %_bop5081 = icmp eq i64 %_id_i5080, 0
  br i1 %_bop5081, label %_then_branch5086, label %_else_branch5087
_then_branch5086:
  %_id_j5082 = load i64, i64* %_5043
  store i64 %_id_j5082, i64* %_5042
  %_id_j5083 = load i64, i64* %_5043
  %_bop5084 = add i64 %_id_j5083, 1
  store i64 %_bop5084, i64* %_5043
  br label %_end_if5088
_else_branch5087:
  br label %_end_if5088
_end_if5088:
  br label %_end_if5092
_end_if5092:
  br label %_cond5094
_merge5095:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4994 = alloca i64
  %_argv4995 = alloca { i64, [0 x i8*] }*
  %_4996 = alloca { i64, [0 x i64] }*
  %_5023 = alloca i64
  %_5027 = alloca i64
  store i64 %argc, i64* %_argc4994
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4995
  %_raw_array4997 = call i64* @oat_alloc_array(i64 8)
  %_array4998 = bitcast i64* %_raw_array4997 to { i64, [0 x i64] }*
  %_5022 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4998, i32 0, i32 1, i32 7
  store i64 0, i64* %_5020
  %_5019 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4998, i32 0, i32 1, i32 6
  store i64 2, i64* %_5017
  %_5016 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4998, i32 0, i32 1, i32 5
  store i64 99, i64* %_5014
  %_5013 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4998, i32 0, i32 1, i32 4
  store i64 30, i64* %_5011
  %_5010 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4998, i32 0, i32 1, i32 3
  store i64 65, i64* %_5008
  %_5007 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4998, i32 0, i32 1, i32 2
  store i64 1, i64* %_5005
  %_5004 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4998, i32 0, i32 1, i32 1
  store i64 200, i64* %_5002
  %_5001 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4998, i32 0, i32 1, i32 0
  store i64 5, i64* %_4999
  store { i64, [0 x i64] }* %_array4998, { i64, [0 x i64] }** %_4996
  store i64 8, i64* %_5023
  %_id_arr5024 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4996
  %_id_len5025 = load i64, i64* %_5023
  call void @gnomeSort({ i64, [0 x i64] }* %_id_arr5024, i64 %_id_len5025)
  store i64 0, i64* %_5027
  br label %_cond5038
_cond5038:
  %_id_i5028 = load i64, i64* %_5027
  %_bop5029 = icmp slt i64 %_id_i5028, 8
  br i1 %_bop5029, label %_if5037, label %_merge5039
_if5037:
  %_id_arr5030 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4996
  %_id_i5031 = load i64, i64* %_5027
  %_index_pointer5033 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr5030, i32 0, i32 1, i64 %_id_i5031
  %_index_value5032 = load i64, i64* %_index_pointer5033
  call void @print_int(i64 %_index_value5032)
  %_id_i5035 = load i64, i64* %_5027
  %_bop5036 = add i64 %_id_i5035, 1
  store i64 %_bop5036, i64* %_5027
  br label %_cond5038
_merge5039:
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
