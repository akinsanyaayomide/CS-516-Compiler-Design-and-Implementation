; generated from: hw4programs/easyrun10.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc133 = alloca i64
  %_argv134 = alloca { i64, [0 x i8*] }*
  %_135 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_162 = alloca i64
  %_163 = alloca i64
  store i64 %argc, i64* %_argc133
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv134
  %_raw_array150 = call i64* @oat_alloc_array(i64 1)
  %_array151 = bitcast i64* %_raw_array150 to { i64, [0 x i64] }*
  %_152 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array151, i32 0, i32 1, i32 0
  store i64 4, i64* %_152
  %_raw_array146 = call i64* @oat_alloc_array(i64 1)
  %_array147 = bitcast i64* %_raw_array146 to { i64, [0 x i64] }*
  %_148 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array147, i32 0, i32 1, i32 0
  store i64 3, i64* %_148
  %_raw_array142 = call i64* @oat_alloc_array(i64 1)
  %_array143 = bitcast i64* %_raw_array142 to { i64, [0 x i64] }*
  %_144 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array143, i32 0, i32 1, i32 0
  store i64 2, i64* %_144
  %_raw_array138 = call i64* @oat_alloc_array(i64 1)
  %_array139 = bitcast i64* %_raw_array138 to { i64, [0 x i64] }*
  %_140 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array139, i32 0, i32 1, i32 0
  store i64 1, i64* %_140
  %_raw_array136 = call i64* @oat_alloc_array(i64 4)
  %_array137 = bitcast i64* %_raw_array136 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_160 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array137, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array151, { i64, [0 x i64] }** %_160
  %_158 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array137, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array147, { i64, [0 x i64] }** %_158
  %_156 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array137, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array143, { i64, [0 x i64] }** %_156
  %_154 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array137, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array139, { i64, [0 x i64] }** %_154
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array137, { i64, [0 x { i64, [0 x i64] }*] }** %_135
  store i64 0, i64* %_162
  store i64 0, i64* %_163
  br label %_start176
_start176:
  %_id_i164 = load i64, i64* %_163
  %_165 = icmp slt i64 %_id_i164, 4
  br i1 %_165, label %_body177, label %_else178
_body177:
  %_id_ans172 = load i64, i64* %_162
  %_id_x166 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_135
  %_id_i167 = load i64, i64* %_163
  %_index_pointer168 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_x166, i32 0, i32 1, i64 %_id_i167
  %_index_value169 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer168
  %_index_pointer170 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value169, i32 0, i32 1, i32 0
  %_index_value171 = load i64, i64* %_index_pointer170
  %_173 = sub i64 %_index_value171, %_id_ans172
  store i64 %_173, i64* %_162
  %_id_i174 = load i64, i64* %_163
  %_175 = add i64 %_id_i174, 1
  store i64 %_175, i64* %_163
  br label %_start176
_else178:
  br label %_start187
_start187:
  %_179 = mul i64 5, -1
  %_180 = add i64 %_179, -1
  %_181 = and i64 5, %_180
  %_182 = or i64 %_181, 0
  %_183 = icmp ne i64 %_182, 0
  br i1 %_183, label %_then188, label %_else189
_then188:
  %_id_ans184 = load i64, i64* %_162
  ret i64 %_id_ans184
_else189:
  %_id_ans185 = load i64, i64* %_162
  %_186 = mul i64 %_id_ans185, -1
  ret i64 %_186
_post190:
  %_id_ans191 = load i64, i64* %_162
  ret i64 %_id_ans191
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
