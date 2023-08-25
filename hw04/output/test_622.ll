; generated from: hw4programs/insertion_sort.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %partial, i64 %len, i64 %insertee) {
  %_partial5134 = alloca { i64, [0 x i64] }*
  %_len5135 = alloca i64
  %_insertee5136 = alloca i64
  %_5137 = alloca { i64, [0 x i64] }*
  %_5142 = alloca i64
  %_5156 = alloca i1
  %_5169 = alloca i64
  store { i64, [0 x i64] }* %partial, { i64, [0 x i64] }** %_partial5134
  store i64 %len, i64* %_len5135
  store i64 %insertee, i64* %_insertee5136
  %_id_len5138 = load i64, i64* %_len5135
  %_5139 = add i64 %_id_len5138, 1
  %_raw_array5140 = call i64* @oat_alloc_array(i64 %_5139)
  %_array5141 = bitcast i64* %_raw_array5140 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5141, { i64, [0 x i64] }** %_5137
  store i64 0, i64* %_5142
  br label %_start5153
_start5153:
  %_id_len5144 = load i64, i64* %_len5135
  %_5145 = add i64 %_id_len5144, 1
  %_id_i5143 = load i64, i64* %_5142
  %_5146 = icmp slt i64 %_id_i5143, %_5145
  br i1 %_5146, label %_body5154, label %_else5155
_body5154:
  %_5147 = mul i64 1, -1
  %_id_inserted5148 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5137
  %_id_i5149 = load i64, i64* %_5142
  %_5150 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted5148, i32 0, i32 1, i64 %_id_i5149
  store i64 %_5147, i64* %_5150
  %_id_i5151 = load i64, i64* %_5142
  %_5152 = add i64 %_id_i5151, 1
  store i64 %_5152, i64* %_5142
  br label %_start5153
_else5155:
  store i1 1, i1* %_5156
  br label %_start5165
_start5165:
  %_id_partial5158 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5134
  %_index_pointer5159 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_partial5158, i32 0, i32 1, i32 0
  %_index_value5160 = load i64, i64* %_index_pointer5159
  %_id_insertee5157 = load i64, i64* %_insertee5136
  %_5161 = icmp slt i64 %_id_insertee5157, %_index_value5160
  br i1 %_5161, label %_then5166, label %_else5167
_then5166:
  store i1 0, i1* %_5156
  %_id_insertee5162 = load i64, i64* %_insertee5136
  %_id_inserted5163 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5137
  %_5164 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted5163, i32 0, i32 1, i32 0
  store i64 %_id_insertee5162, i64* %_5164
  br label %_post5168
_else5167:
  br label %_post5168
_post5168:
  store i64 0, i64* %_5169
  br label %_start5217
_start5217:
  %_id_len5171 = load i64, i64* %_len5135
  %_id_i5170 = load i64, i64* %_5169
  %_5172 = icmp slt i64 %_id_i5170, %_id_len5171
  br i1 %_5172, label %_body5218, label %_else5219
_body5218:
  br label %_start5211
_start5211:
  %_id_not_yet_inserted5173 = load i1, i1* %_5156
  br i1 %_id_not_yet_inserted5173, label %_then5212, label %_else5213
_then5212:
  br label %_start5199
_start5199:
  %_id_partial5175 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5134
  %_id_i5176 = load i64, i64* %_5169
  %_index_pointer5177 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_partial5175, i32 0, i32 1, i64 %_id_i5176
  %_index_value5178 = load i64, i64* %_index_pointer5177
  %_id_insertee5174 = load i64, i64* %_insertee5136
  %_5179 = icmp sgt i64 %_id_insertee5174, %_index_value5178
  br i1 %_5179, label %_then5200, label %_else5201
_then5200:
  store i1 0, i1* %_5156
  %_id_insertee5180 = load i64, i64* %_insertee5136
  %_id_inserted5181 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5137
  %_id_i5182 = load i64, i64* %_5169
  %_5183 = add i64 %_id_i5182, 1
  %_5184 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted5181, i32 0, i32 1, i64 %_5183
  store i64 %_id_insertee5180, i64* %_5184
  %_id_partial5185 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5134
  %_id_i5186 = load i64, i64* %_5169
  %_index_pointer5187 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_partial5185, i32 0, i32 1, i64 %_id_i5186
  %_index_value5188 = load i64, i64* %_index_pointer5187
  %_id_inserted5189 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5137
  %_id_i5190 = load i64, i64* %_5169
  %_5191 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted5189, i32 0, i32 1, i64 %_id_i5190
  store i64 %_index_value5188, i64* %_5191
  br label %_post5202
_else5201:
  %_id_partial5192 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5134
  %_id_i5193 = load i64, i64* %_5169
  %_index_pointer5194 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_partial5192, i32 0, i32 1, i64 %_id_i5193
  %_index_value5195 = load i64, i64* %_index_pointer5194
  %_id_inserted5196 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5137
  %_id_i5197 = load i64, i64* %_5169
  %_5198 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted5196, i32 0, i32 1, i64 %_id_i5197
  store i64 %_index_value5195, i64* %_5198
  br label %_post5202
_post5202:
  br label %_post5214
_else5213:
  %_id_partial5203 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5134
  %_id_i5204 = load i64, i64* %_5169
  %_index_pointer5205 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_partial5203, i32 0, i32 1, i64 %_id_i5204
  %_index_value5206 = load i64, i64* %_index_pointer5205
  %_id_inserted5207 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5137
  %_id_i5208 = load i64, i64* %_5169
  %_5209 = add i64 %_id_i5208, 1
  %_5210 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted5207, i32 0, i32 1, i64 %_5209
  store i64 %_index_value5206, i64* %_5210
  br label %_post5214
_post5214:
  %_id_i5215 = load i64, i64* %_5169
  %_5216 = add i64 %_id_i5215, 1
  store i64 %_5216, i64* %_5169
  br label %_start5217
_else5219:
  %_id_inserted5220 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5137
  ret { i64, [0 x i64] }* %_id_inserted5220
}

define { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %unsorted, i64 %len) {
  %_unsorted5105 = alloca { i64, [0 x i64] }*
  %_len5106 = alloca i64
  %_5107 = alloca { i64, [0 x i64] }*
  %_5117 = alloca i64
  store { i64, [0 x i64] }* %unsorted, { i64, [0 x i64] }** %_unsorted5105
  store i64 %len, i64* %_len5106
  %_raw_array5108 = call i64* @oat_alloc_array(i64 1)
  %_array5109 = bitcast i64* %_raw_array5108 to { i64, [0 x i64] }*
  %_5110 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5109, i32 0, i32 1, i32 0
  store i64 0, i64* %_5110
  store { i64, [0 x i64] }* %_array5109, { i64, [0 x i64] }** %_5107
  %_id_unsorted5112 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted5105
  %_index_pointer5113 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_unsorted5112, i32 0, i32 1, i32 0
  %_index_value5114 = load i64, i64* %_index_pointer5113
  %_id_out5115 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5107
  %_5116 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_out5115, i32 0, i32 1, i32 0
  store i64 %_index_value5114, i64* %_5116
  store i64 1, i64* %_5117
  br label %_start5130
_start5130:
  %_id_len5119 = load i64, i64* %_len5106
  %_id_i5118 = load i64, i64* %_5117
  %_5120 = icmp slt i64 %_id_i5118, %_id_len5119
  br i1 %_5120, label %_body5131, label %_else5132
_body5131:
  %_id_out5121 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5107
  %_id_i5122 = load i64, i64* %_5117
  %_id_unsorted5123 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted5105
  %_id_i5124 = load i64, i64* %_5117
  %_index_pointer5125 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_unsorted5123, i32 0, i32 1, i64 %_id_i5124
  %_index_value5126 = load i64, i64* %_index_pointer5125
  %_5127 = call { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_id_out5121, i64 %_id_i5122, i64 %_index_value5126)
  store { i64, [0 x i64] }* %_5127, { i64, [0 x i64] }** %_5107
  %_id_i5128 = load i64, i64* %_5117
  %_5129 = add i64 %_id_i5128, 1
  store i64 %_5129, i64* %_5117
  br label %_start5130
_else5132:
  %_id_out5133 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5107
  ret { i64, [0 x i64] }* %_id_out5133
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5082 = alloca i64
  %_argv5083 = alloca { i64, [0 x i8*] }*
  %_5084 = alloca { i64, [0 x i64] }*
  %_5099 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc5082
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5083
  %_raw_array5085 = call i64* @oat_alloc_array(i64 6)
  %_array5086 = bitcast i64* %_raw_array5085 to { i64, [0 x i64] }*
  %_5097 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5086, i32 0, i32 1, i32 5
  store i64 6, i64* %_5097
  %_5095 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5086, i32 0, i32 1, i32 4
  store i64 2, i64* %_5095
  %_5093 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5086, i32 0, i32 1, i32 3
  store i64 3, i64* %_5093
  %_5091 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5086, i32 0, i32 1, i32 2
  store i64 32, i64* %_5091
  %_5089 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5086, i32 0, i32 1, i32 1
  store i64 42, i64* %_5089
  %_5087 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5086, i32 0, i32 1, i32 0
  store i64 13, i64* %_5087
  store { i64, [0 x i64] }* %_array5086, { i64, [0 x i64] }** %_5084
  %_id_array5100 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5084
  %_5101 = call { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_id_array5100, i64 6)
  store { i64, [0 x i64] }* %_5101, { i64, [0 x i64] }** %_5099
  %_id_result5102 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5099
  %_index_pointer5103 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_result5102, i32 0, i32 1, i32 5
  %_index_value5104 = load i64, i64* %_index_pointer5103
  ret i64 %_index_value5104
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
