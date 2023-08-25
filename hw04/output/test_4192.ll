; generated from: hw4programs/easyrun10.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc134 = alloca i64
  %_argv135 = alloca { i64, [0 x i8*] }*
  %_136 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_171 = alloca i64
  %_172 = alloca i64
  store i64 %argc, i64* %_argc134
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv135
  %_raw_array154 = call i64* @oat_alloc_array(i64 1)
  %_array155 = bitcast i64* %_raw_array154 to { i64, [0 x i64] }*
  %_158 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array155, i32 0, i32 1, i32 0
  store i64 4, i64* %_156
  %_raw_array149 = call i64* @oat_alloc_array(i64 1)
  %_array150 = bitcast i64* %_raw_array149 to { i64, [0 x i64] }*
  %_153 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array150, i32 0, i32 1, i32 0
  store i64 3, i64* %_151
  %_raw_array144 = call i64* @oat_alloc_array(i64 1)
  %_array145 = bitcast i64* %_raw_array144 to { i64, [0 x i64] }*
  %_148 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array145, i32 0, i32 1, i32 0
  store i64 2, i64* %_146
  %_raw_array139 = call i64* @oat_alloc_array(i64 1)
  %_array140 = bitcast i64* %_raw_array139 to { i64, [0 x i64] }*
  %_143 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array140, i32 0, i32 1, i32 0
  store i64 1, i64* %_141
  %_raw_array137 = call i64* @oat_alloc_array(i64 4)
  %_array138 = bitcast i64* %_raw_array137 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_170 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array138, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array155, { i64, [0 x i64] }** %_168
  %_167 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array138, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array150, { i64, [0 x i64] }** %_165
  %_164 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array138, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array145, { i64, [0 x i64] }** %_162
  %_161 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array138, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array140, { i64, [0 x i64] }** %_159
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array138, { i64, [0 x { i64, [0 x i64] }*] }** %_136
  store i64 0, i64* %_171
  store i64 0, i64* %_172
  br label %_cond186
_cond186:
  %_id_i173 = load i64, i64* %_172
  %_bop174 = icmp slt i64 %_id_i173, 4
  br i1 %_bop174, label %_if185, label %_merge187
_if185:
  %_id_x175 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_136
  %_id_i176 = load i64, i64* %_172
  %_index_pointer178 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_x175, i32 0, i32 1, i64 %_id_i176
  %_index_value177 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer178
  %_index_pointer180 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value177, i32 0, i32 1, i32 0
  %_index_value179 = load i64, i64* %_index_pointer180
  %_id_ans181 = load i64, i64* %_171
  %_bop182 = sub i64 %_index_value179, %_id_ans181
  store i64 %_bop182, i64* %_171
  %_id_i183 = load i64, i64* %_172
  %_bop184 = add i64 %_id_i183, 1
  store i64 %_bop184, i64* %_172
  br label %_cond186
_merge187:
  br label %_begin_if195
_begin_if195:
  %_unop188 = xor i64 5, -1
  %_bop189 = and i64 5, %_unop188
  %_bop190 = or i64 %_bop189, 0
  %_bop191 = icmp ne i64 %_bop190, 0
  br i1 %_bop191, label %_then_branch196, label %_else_branch197
_then_branch196:
  %_id_ans192 = load i64, i64* %_171
  ret i64 %_id_ans192
_else_branch197:
  %_id_ans193 = load i64, i64* %_171
  %_unop194 = sub i64 0, %_id_ans193
  ret i64 %_unop194
_end_if198:
  %_id_ans199 = load i64, i64* %_171
  ret i64 %_id_ans199
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
