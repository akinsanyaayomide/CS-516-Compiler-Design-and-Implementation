; generated from: hw4programs/insertion_sort.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %partial, i64 %len, i64 %insertee) {
  %_partial5127 = alloca { i64, [0 x i64] }*
  %_len5128 = alloca i64
  %_insertee5129 = alloca i64
  %_5130 = alloca { i64, [0 x i64] }*
  %_5135 = alloca i64
  %_5149 = alloca i1
  %_5162 = alloca i64
  store { i64, [0 x i64] }* %partial, { i64, [0 x i64] }** %_partial5127
  store i64 %len, i64* %_len5128
  store i64 %insertee, i64* %_insertee5129
  %_id_len5131 = load i64, i64* %_len5128
  %_bop5132 = add i64 %_id_len5131, 1
  %_raw_array5133 = call i64* @oat_alloc_array(i64 %_bop5132)
  %_array5134 = bitcast i64* %_raw_array5133 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5134, { i64, [0 x i64] }** %_5130
  store i64 0, i64* %_5135
  br label %_cond5147
_cond5147:
  %_id_i5136 = load i64, i64* %_5135
  %_id_len5137 = load i64, i64* %_len5128
  %_bop5138 = add i64 %_id_len5137, 1
  %_bop5139 = icmp slt i64 %_id_i5136, %_bop5138
  br i1 %_bop5139, label %_if5146, label %_merge5148
_if5146:
  %_unop5140 = sub i64 0, 1
  %_id_inserted5141 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5130
  %_id_i5142 = load i64, i64* %_5135
  %_5143 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted5141, i32 0, i32 1, i64 %_id_i5142
  store i64 %_unop5140, i64* %_5143
  %_id_i5144 = load i64, i64* %_5135
  %_bop5145 = add i64 %_id_i5144, 1
  store i64 %_bop5145, i64* %_5135
  br label %_cond5147
_merge5148:
  store i1 1, i1* %_5149
  br label %_begin_if5158
_begin_if5158:
  %_id_insertee5150 = load i64, i64* %_insertee5129
  %_id_partial5151 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5127
  %_index_pointer5152 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_partial5151, i32 0, i32 1, i32 0
  %_index_value5153 = load i64, i64* %_index_pointer5152
  %_bop5154 = icmp slt i64 %_id_insertee5150, %_index_value5153
  br i1 %_bop5154, label %_then_branch5159, label %_else_branch5160
_then_branch5159:
  store i1 0, i1* %_5149
  %_id_insertee5155 = load i64, i64* %_insertee5129
  %_id_inserted5156 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5130
  %_5157 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted5156, i32 0, i32 1, i32 0
  store i64 %_id_insertee5155, i64* %_5157
  br label %_end_if5161
_else_branch5160:
  br label %_end_if5161
_end_if5161:
  store i64 0, i64* %_5162
  br label %_cond5211
_cond5211:
  %_id_i5163 = load i64, i64* %_5162
  %_id_len5164 = load i64, i64* %_len5128
  %_bop5165 = icmp slt i64 %_id_i5163, %_id_len5164
  br i1 %_bop5165, label %_if5210, label %_merge5212
_if5210:
  br label %_begin_if5204
_begin_if5204:
  %_id_not_yet_inserted5166 = load i1, i1* %_5149
  br i1 %_id_not_yet_inserted5166, label %_then_branch5205, label %_else_branch5206
_then_branch5205:
  br label %_begin_if5192
_begin_if5192:
  %_id_insertee5167 = load i64, i64* %_insertee5129
  %_id_partial5168 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5127
  %_id_i5169 = load i64, i64* %_5162
  %_index_pointer5170 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_partial5168, i32 0, i32 1, i64 %_id_i5169
  %_index_value5171 = load i64, i64* %_index_pointer5170
  %_bop5172 = icmp sgt i64 %_id_insertee5167, %_index_value5171
  br i1 %_bop5172, label %_then_branch5193, label %_else_branch5194
_then_branch5193:
  store i1 0, i1* %_5149
  %_id_insertee5173 = load i64, i64* %_insertee5129
  %_id_inserted5174 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5130
  %_id_i5175 = load i64, i64* %_5162
  %_bop5176 = add i64 %_id_i5175, 1
  %_5177 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted5174, i32 0, i32 1, i64 %_bop5176
  store i64 %_id_insertee5173, i64* %_5177
  %_id_partial5178 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5127
  %_id_i5179 = load i64, i64* %_5162
  %_index_pointer5180 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_partial5178, i32 0, i32 1, i64 %_id_i5179
  %_index_value5181 = load i64, i64* %_index_pointer5180
  %_id_inserted5182 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5130
  %_id_i5183 = load i64, i64* %_5162
  %_5184 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted5182, i32 0, i32 1, i64 %_id_i5183
  store i64 %_index_value5181, i64* %_5184
  br label %_end_if5195
_else_branch5194:
  %_id_partial5185 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5127
  %_id_i5186 = load i64, i64* %_5162
  %_index_pointer5187 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_partial5185, i32 0, i32 1, i64 %_id_i5186
  %_index_value5188 = load i64, i64* %_index_pointer5187
  %_id_inserted5189 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5130
  %_id_i5190 = load i64, i64* %_5162
  %_5191 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted5189, i32 0, i32 1, i64 %_id_i5190
  store i64 %_index_value5188, i64* %_5191
  br label %_end_if5195
_end_if5195:
  br label %_end_if5207
_else_branch5206:
  %_id_partial5196 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5127
  %_id_i5197 = load i64, i64* %_5162
  %_index_pointer5198 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_partial5196, i32 0, i32 1, i64 %_id_i5197
  %_index_value5199 = load i64, i64* %_index_pointer5198
  %_id_inserted5200 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5130
  %_id_i5201 = load i64, i64* %_5162
  %_bop5202 = add i64 %_id_i5201, 1
  %_5203 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted5200, i32 0, i32 1, i64 %_bop5202
  store i64 %_index_value5199, i64* %_5203
  br label %_end_if5207
_end_if5207:
  %_id_i5208 = load i64, i64* %_5162
  %_bop5209 = add i64 %_id_i5208, 1
  store i64 %_bop5209, i64* %_5162
  br label %_cond5211
_merge5212:
  %_id_inserted5213 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5130
  ret { i64, [0 x i64] }* %_id_inserted5213
}

define { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %unsorted, i64 %len) {
  %_unsorted5098 = alloca { i64, [0 x i64] }*
  %_len5099 = alloca i64
  %_5100 = alloca { i64, [0 x i64] }*
  %_5110 = alloca i64
  store { i64, [0 x i64] }* %unsorted, { i64, [0 x i64] }** %_unsorted5098
  store i64 %len, i64* %_len5099
  %_raw_array5101 = call i64* @oat_alloc_array(i64 1)
  %_array5102 = bitcast i64* %_raw_array5101 to { i64, [0 x i64] }*
  %_5103 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5102, i32 0, i32 1, i32 0
  store i64 0, i64* %_5103
  store { i64, [0 x i64] }* %_array5102, { i64, [0 x i64] }** %_5100
  %_id_unsorted5105 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted5098
  %_index_pointer5106 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_unsorted5105, i32 0, i32 1, i32 0
  %_index_value5107 = load i64, i64* %_index_pointer5106
  %_id_out5108 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5100
  %_5109 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_out5108, i32 0, i32 1, i32 0
  store i64 %_index_value5107, i64* %_5109
  store i64 1, i64* %_5110
  br label %_cond5124
_cond5124:
  %_id_i5111 = load i64, i64* %_5110
  %_id_len5112 = load i64, i64* %_len5099
  %_bop5113 = icmp slt i64 %_id_i5111, %_id_len5112
  br i1 %_bop5113, label %_if5123, label %_merge5125
_if5123:
  %_id_out5114 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5100
  %_id_i5115 = load i64, i64* %_5110
  %_id_unsorted5116 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted5098
  %_id_i5117 = load i64, i64* %_5110
  %_index_pointer5118 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_unsorted5116, i32 0, i32 1, i64 %_id_i5117
  %_index_value5119 = load i64, i64* %_index_pointer5118
  %_5120 = call { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_id_out5114, i64 %_id_i5115, i64 %_index_value5119)
  store { i64, [0 x i64] }* %_5120, { i64, [0 x i64] }** %_5100
  %_id_i5121 = load i64, i64* %_5110
  %_bop5122 = add i64 %_id_i5121, 1
  store i64 %_bop5122, i64* %_5110
  br label %_cond5124
_merge5125:
  %_id_out5126 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5100
  ret { i64, [0 x i64] }* %_id_out5126
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5075 = alloca i64
  %_argv5076 = alloca { i64, [0 x i8*] }*
  %_5077 = alloca { i64, [0 x i64] }*
  %_5092 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc5075
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5076
  %_raw_array5078 = call i64* @oat_alloc_array(i64 6)
  %_array5079 = bitcast i64* %_raw_array5078 to { i64, [0 x i64] }*
  %_5090 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5079, i32 0, i32 1, i32 5
  store i64 6, i64* %_5090
  %_5088 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5079, i32 0, i32 1, i32 4
  store i64 2, i64* %_5088
  %_5086 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5079, i32 0, i32 1, i32 3
  store i64 3, i64* %_5086
  %_5084 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5079, i32 0, i32 1, i32 2
  store i64 32, i64* %_5084
  %_5082 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5079, i32 0, i32 1, i32 1
  store i64 42, i64* %_5082
  %_5080 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5079, i32 0, i32 1, i32 0
  store i64 13, i64* %_5080
  store { i64, [0 x i64] }* %_array5079, { i64, [0 x i64] }** %_5077
  %_id_array5093 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5077
  %_5094 = call { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_id_array5093, i64 6)
  store { i64, [0 x i64] }* %_5094, { i64, [0 x i64] }** %_5092
  %_id_result5095 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5092
  %_index_pointer5096 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_result5095, i32 0, i32 1, i32 5
  %_index_value5097 = load i64, i64* %_index_pointer5096
  ret i64 %_index_value5097
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
