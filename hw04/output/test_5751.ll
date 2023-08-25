; generated from: hw4programs/insertion_sort.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %partial, i64 %len, i64 %insertee) {
  %_partial5127 = alloca { i64, [0 x i64] }*
  %_len5128 = alloca i64
  %_insertee5129 = alloca i64
  %_inserted5134 = alloca { i64, [0 x i64] }*
  %_i5135 = alloca i64
  %_not_yet_inserted5149 = alloca i1
  %_i5162 = alloca i64
  store { i64, [0 x i64] }* %partial, { i64, [0 x i64] }** %_partial5127
  store i64 %len, i64* %_len5128
  store i64 %insertee, i64* %_insertee5129
  %_id_len5130 = load i64, i64* %_len5128
  %_bop5131 = add i64 %_id_len5130, 1
  %_raw_array5132 = call i64* @oat_alloc_array(i64 %_bop5131)
  %_array5133 = bitcast i64* %_raw_array5132 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5133, { i64, [0 x i64] }** %_inserted5134
  store i64 0, i64* %_i5135
  br label %_cond5147
_cond5147:
  %_id_i5136 = load i64, i64* %_i5135
  %_id_len5137 = load i64, i64* %_len5128
  %_bop5138 = add i64 %_id_len5137, 1
  %_bop5139 = icmp slt i64 %_id_i5136, %_bop5138
  br i1 %_bop5139, label %_if5146, label %_merge5148
_if5146:
  %_unop5140 = sub i64 0, 1
  %_id_inserted5141 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5134
  %_id_i5142 = load i64, i64* %_i5135
  %_5143 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted5141, i32 0, i32 1, i64 %_id_i5142
  store i64 %_unop5140, i64* %_5143
  %_id_i5144 = load i64, i64* %_i5135
  %_bop5145 = add i64 %_id_i5144, 1
  store i64 %_bop5145, i64* %_i5135
  br label %_cond5147
_merge5148:
  store i1 1, i1* %_not_yet_inserted5149
  br label %_begin_if5161
_begin_if5161:
  %_id_insertee5150 = load i64, i64* %_insertee5129
  %_id_partial5151 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5127
  %_index_pointer5153 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_partial5151, i32 0, i32 1, i32 0
  %_index_value5152 = load i64, i64* %_index_pointer5153
  %_bop5154 = icmp slt i64 %_id_insertee5150, %_index_value5152
  br i1 %_bop5154, label %_then_branch5160, label %_else_branch5159
_then_branch5160:
  store i1 0, i1* %_not_yet_inserted5149
  %_id_insertee5155 = load i64, i64* %_insertee5129
  %_id_inserted5156 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5134
  %_5157 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted5156, i32 0, i32 1, i32 0
  store i64 %_id_insertee5155, i64* %_5157
  br label %_end_if5158
_else_branch5159:
  br label %_end_if5158
_end_if5158:
  store i64 0, i64* %_i5162
  br label %_cond5211
_cond5211:
  %_id_i5163 = load i64, i64* %_i5162
  %_id_len5164 = load i64, i64* %_len5128
  %_bop5165 = icmp slt i64 %_id_i5163, %_id_len5164
  br i1 %_bop5165, label %_if5210, label %_merge5212
_if5210:
  br label %_begin_if5207
_begin_if5207:
  %_id_not_yet_inserted5166 = load i1, i1* %_not_yet_inserted5149
  br i1 %_id_not_yet_inserted5166, label %_then_branch5206, label %_else_branch5205
_then_branch5206:
  br label %_begin_if5203
_begin_if5203:
  %_id_insertee5175 = load i64, i64* %_insertee5129
  %_id_partial5176 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5127
  %_id_i5177 = load i64, i64* %_i5162
  %_index_pointer5179 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_partial5176, i32 0, i32 1, i64 %_id_i5177
  %_index_value5178 = load i64, i64* %_index_pointer5179
  %_bop5180 = icmp sgt i64 %_id_insertee5175, %_index_value5178
  br i1 %_bop5180, label %_then_branch5202, label %_else_branch5201
_then_branch5202:
  store i1 0, i1* %_not_yet_inserted5149
  %_id_insertee5188 = load i64, i64* %_insertee5129
  %_id_inserted5189 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5134
  %_id_i5190 = load i64, i64* %_i5162
  %_bop5191 = add i64 %_id_i5190, 1
  %_5192 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted5189, i32 0, i32 1, i64 %_bop5191
  store i64 %_id_insertee5188, i64* %_5192
  %_id_partial5193 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5127
  %_id_i5194 = load i64, i64* %_i5162
  %_index_pointer5196 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_partial5193, i32 0, i32 1, i64 %_id_i5194
  %_index_value5195 = load i64, i64* %_index_pointer5196
  %_id_inserted5197 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5134
  %_id_i5198 = load i64, i64* %_i5162
  %_5199 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted5197, i32 0, i32 1, i64 %_id_i5198
  store i64 %_index_value5195, i64* %_5199
  br label %_end_if5200
_else_branch5201:
  %_id_partial5181 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5127
  %_id_i5182 = load i64, i64* %_i5162
  %_index_pointer5184 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_partial5181, i32 0, i32 1, i64 %_id_i5182
  %_index_value5183 = load i64, i64* %_index_pointer5184
  %_id_inserted5185 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5134
  %_id_i5186 = load i64, i64* %_i5162
  %_5187 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted5185, i32 0, i32 1, i64 %_id_i5186
  store i64 %_index_value5183, i64* %_5187
  br label %_end_if5200
_end_if5200:
  br label %_end_if5204
_else_branch5205:
  %_id_partial5167 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5127
  %_id_i5168 = load i64, i64* %_i5162
  %_index_pointer5170 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_partial5167, i32 0, i32 1, i64 %_id_i5168
  %_index_value5169 = load i64, i64* %_index_pointer5170
  %_id_inserted5171 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5134
  %_id_i5172 = load i64, i64* %_i5162
  %_bop5173 = add i64 %_id_i5172, 1
  %_5174 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted5171, i32 0, i32 1, i64 %_bop5173
  store i64 %_index_value5169, i64* %_5174
  br label %_end_if5204
_end_if5204:
  %_id_i5208 = load i64, i64* %_i5162
  %_bop5209 = add i64 %_id_i5208, 1
  store i64 %_bop5209, i64* %_i5162
  br label %_cond5211
_merge5212:
  %_id_inserted5213 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5134
  ret { i64, [0 x i64] }* %_id_inserted5213
}

define { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %unsorted, i64 %len) {
  %_unsorted5098 = alloca { i64, [0 x i64] }*
  %_len5099 = alloca i64
  %_out5104 = alloca { i64, [0 x i64] }*
  %_i5110 = alloca i64
  store { i64, [0 x i64] }* %unsorted, { i64, [0 x i64] }** %_unsorted5098
  store i64 %len, i64* %_len5099
  %_raw_array5100 = call i64* @oat_alloc_array(i64 1)
  %_array5101 = bitcast i64* %_raw_array5100 to { i64, [0 x i64] }*
  %_5102 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5101, i32 0, i32 1, i32 0
  store i64 0, i64* %_5102
  store { i64, [0 x i64] }* %_array5101, { i64, [0 x i64] }** %_out5104
  %_id_unsorted5105 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted5098
  %_index_pointer5107 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_unsorted5105, i32 0, i32 1, i32 0
  %_index_value5106 = load i64, i64* %_index_pointer5107
  %_id_out5108 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out5104
  %_5109 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_out5108, i32 0, i32 1, i32 0
  store i64 %_index_value5106, i64* %_5109
  store i64 1, i64* %_i5110
  br label %_cond5124
_cond5124:
  %_id_i5111 = load i64, i64* %_i5110
  %_id_len5112 = load i64, i64* %_len5099
  %_bop5113 = icmp slt i64 %_id_i5111, %_id_len5112
  br i1 %_bop5113, label %_if5123, label %_merge5125
_if5123:
  %_id_out5114 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out5104
  %_id_i5115 = load i64, i64* %_i5110
  %_id_unsorted5116 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted5098
  %_id_i5117 = load i64, i64* %_i5110
  %_index_pointer5119 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_unsorted5116, i32 0, i32 1, i64 %_id_i5117
  %_index_value5118 = load i64, i64* %_index_pointer5119
  %_5120 = call { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_id_out5114, i64 %_id_i5115, i64 %_index_value5118)
  store { i64, [0 x i64] }* %_5120, { i64, [0 x i64] }** %_out5104
  %_id_i5121 = load i64, i64* %_i5110
  %_bop5122 = add i64 %_id_i5121, 1
  store i64 %_bop5122, i64* %_i5110
  br label %_cond5124
_merge5125:
  %_id_out5126 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out5104
  ret { i64, [0 x i64] }* %_id_out5126
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5075 = alloca i64
  %_argv5076 = alloca { i64, [0 x i8*] }*
  %_array5091 = alloca { i64, [0 x i64] }*
  %_result5094 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc5075
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5076
  %_raw_array5077 = call i64* @oat_alloc_array(i64 6)
  %_array5078 = bitcast i64* %_raw_array5077 to { i64, [0 x i64] }*
  %_5089 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5078, i32 0, i32 1, i32 5
  store i64 6, i64* %_5089
  %_5087 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5078, i32 0, i32 1, i32 4
  store i64 2, i64* %_5087
  %_5085 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5078, i32 0, i32 1, i32 3
  store i64 3, i64* %_5085
  %_5083 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5078, i32 0, i32 1, i32 2
  store i64 32, i64* %_5083
  %_5081 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5078, i32 0, i32 1, i32 1
  store i64 42, i64* %_5081
  %_5079 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5078, i32 0, i32 1, i32 0
  store i64 13, i64* %_5079
  store { i64, [0 x i64] }* %_array5078, { i64, [0 x i64] }** %_array5091
  %_id_array5092 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5091
  %_5093 = call { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_id_array5092, i64 6)
  store { i64, [0 x i64] }* %_5093, { i64, [0 x i64] }** %_result5094
  %_id_result5095 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_result5094
  %_index_pointer5097 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_result5095, i32 0, i32 1, i32 5
  %_index_value5096 = load i64, i64* %_index_pointer5097
  ret i64 %_index_value5096
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
