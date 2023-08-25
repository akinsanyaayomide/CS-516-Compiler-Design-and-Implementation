; generated from: hw4programs/easyrun10.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc130 = alloca i64
  %_argv131 = alloca { i64, [0 x i8*] }*
  %_132 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_175 = alloca i64
  %_176 = alloca i64
  store i64 %argc, i64* %_argc130
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv131
  %_raw_array147 = call i64* @oat_alloc_array(i64 1)
  %_array148 = bitcast i64* %_raw_array147 to { i64, [0 x i64] }*
  %_149 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array148, i32 0, i32 1, i32 0
  store i64 4, i64* %_149
  %_raw_array143 = call i64* @oat_alloc_array(i64 1)
  %_array144 = bitcast i64* %_raw_array143 to { i64, [0 x i64] }*
  %_145 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array144, i32 0, i32 1, i32 0
  store i64 3, i64* %_145
  %_raw_array139 = call i64* @oat_alloc_array(i64 1)
  %_array140 = bitcast i64* %_raw_array139 to { i64, [0 x i64] }*
  %_141 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array140, i32 0, i32 1, i32 0
  store i64 2, i64* %_141
  %_raw_array135 = call i64* @oat_alloc_array(i64 1)
  %_array136 = bitcast i64* %_raw_array135 to { i64, [0 x i64] }*
  %_137 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array136, i32 0, i32 1, i32 0
  store i64 1, i64* %_137
  %_raw_array133 = call i64* @oat_alloc_array(i64 4)
  %_array134 = bitcast i64* %_raw_array133 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_173 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array134, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array164, { i64, [0 x i64] }** %_173
  %_171 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array134, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array160, { i64, [0 x i64] }** %_171
  %_169 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array134, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array156, { i64, [0 x i64] }** %_169
  %_167 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array134, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array152, { i64, [0 x i64] }** %_167
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array134, { i64, [0 x { i64, [0 x i64] }*] }** %_132
  store i64 0, i64* %_175
  store i64 0, i64* %_176
  br label %_cond190
_cond190:
  %_id_i177 = load i64, i64* %_176
  %_bop178 = icmp slt i64 %_id_i177, 4
  br i1 %_bop178, label %_if189, label %_merge191
_if189:
  %_id_x179 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_132
  %_id_i180 = load i64, i64* %_176
  %_index_pointer182 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_x179, i32 0, i32 1, i64 %_id_i180
  %_index_value181 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer182
  %_index_pointer184 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value181, i32 0, i32 1, i32 0
  %_index_value183 = load i64, i64* %_index_pointer184
  %_id_ans185 = load i64, i64* %_175
  %_bop186 = sub i64 %_index_value183, %_id_ans185
  store i64 %_bop186, i64* %_175
  %_id_i187 = load i64, i64* %_176
  %_bop188 = add i64 %_id_i187, 1
  store i64 %_bop188, i64* %_176
  br label %_cond190
_merge191:
  br label %_begin_if199
_begin_if199:
  %_unop192 = xor i64 5, -1
  %_bop193 = and i64 5, %_unop192
  %_bop194 = or i64 %_bop193, 0
  %_bop195 = icmp ne i64 %_bop194, 0
  br i1 %_bop195, label %_then_branch200, label %_else_branch201
_then_branch200:
  %_id_ans196 = load i64, i64* %_175
  ret i64 %_id_ans196
_else_branch201:
  %_id_ans197 = load i64, i64* %_175
  %_unop198 = sub i64 0, %_id_ans197
  ret i64 %_unop198
_end_if202:
  %_id_ans203 = load i64, i64* %_175
  ret i64 %_id_ans203
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
