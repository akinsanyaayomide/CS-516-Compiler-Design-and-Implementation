; generated from: hw4programs/easyrun10.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc130 = alloca i64
  %_argv131 = alloca { i64, [0 x i8*] }*
  %_132 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_159 = alloca i64
  %_160 = alloca i64
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
  %_157 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array134, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array148, { i64, [0 x i64] }** %_157
  %_155 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array134, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array144, { i64, [0 x i64] }** %_155
  %_153 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array134, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array140, { i64, [0 x i64] }** %_153
  %_151 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array134, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array136, { i64, [0 x i64] }** %_151
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array134, { i64, [0 x { i64, [0 x i64] }*] }** %_132
  store i64 0, i64* %_159
  store i64 0, i64* %_160
  br label %_cond174
_cond174:
  %_id_i161 = load i64, i64* %_160
  %_bop162 = icmp slt i64 %_id_i161, 4
  br i1 %_bop162, label %_if173, label %_merge175
_if173:
  %_id_x163 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_132
  %_id_i164 = load i64, i64* %_160
  %_index_pointer165 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_x163, i32 0, i32 1, i64 %_id_i164
  %_index_value166 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer165
  %_index_pointer167 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value166, i32 0, i32 1, i32 0
  %_index_value168 = load i64, i64* %_index_pointer167
  %_id_ans169 = load i64, i64* %_159
  %_bop170 = sub i64 %_index_value168, %_id_ans169
  store i64 %_bop170, i64* %_159
  %_id_i171 = load i64, i64* %_160
  %_bop172 = add i64 %_id_i171, 1
  store i64 %_bop172, i64* %_160
  br label %_cond174
_merge175:
  br label %_begin_if183
_begin_if183:
  %_unop176 = xor i64 5, -1
  %_bop177 = and i64 5, %_unop176
  %_bop178 = or i64 %_bop177, 0
  %_bop179 = icmp ne i64 %_bop178, 0
  br i1 %_bop179, label %_then_branch184, label %_else_branch185
_then_branch184:
  %_id_ans180 = load i64, i64* %_159
  ret i64 %_id_ans180
_else_branch185:
  %_id_ans181 = load i64, i64* %_159
  %_unop182 = sub i64 0, %_id_ans181
  ret i64 %_unop182
_end_if186:
  %_id_ans187 = load i64, i64* %_159
  ret i64 %_id_ans187
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
