; generated from: hw4programs/easyrun10.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc130 = alloca i64
  %_argv131 = alloca { i64, [0 x i8*] }*
  %_x158 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_ans159 = alloca i64
  %_i160 = alloca i64
  store i64 %argc, i64* %_argc130
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv131
  %_raw_array146 = call i64* @oat_alloc_array(i64 1)
  %_array147 = bitcast i64* %_raw_array146 to { i64, [0 x i64] }*
  %_148 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array147, i32 0, i32 1, i32 0
  store i64 4, i64* %_148
  %_raw_array142 = call i64* @oat_alloc_array(i64 1)
  %_array143 = bitcast i64* %_raw_array142 to { i64, [0 x i64] }*
  %_144 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array143, i32 0, i32 1, i32 0
  store i64 3, i64* %_144
  %_raw_array138 = call i64* @oat_alloc_array(i64 1)
  %_array139 = bitcast i64* %_raw_array138 to { i64, [0 x i64] }*
  %_140 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array139, i32 0, i32 1, i32 0
  store i64 2, i64* %_140
  %_raw_array134 = call i64* @oat_alloc_array(i64 1)
  %_array135 = bitcast i64* %_raw_array134 to { i64, [0 x i64] }*
  %_136 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array135, i32 0, i32 1, i32 0
  store i64 1, i64* %_136
  %_raw_array132 = call i64* @oat_alloc_array(i64 4)
  %_array133 = bitcast i64* %_raw_array132 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_156 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array133, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array147, { i64, [0 x i64] }** %_156
  %_154 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array133, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array143, { i64, [0 x i64] }** %_154
  %_152 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array133, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array139, { i64, [0 x i64] }** %_152
  %_150 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array133, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array135, { i64, [0 x i64] }** %_150
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array133, { i64, [0 x { i64, [0 x i64] }*] }** %_x158
  store i64 0, i64* %_ans159
  store i64 0, i64* %_i160
  br label %_cond174
_cond174:
  %_id_i161 = load i64, i64* %_i160
  %_bop162 = icmp slt i64 %_id_i161, 4
  br i1 %_bop162, label %_if175, label %_merge173
_if175:
  %_id_x163 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_x158
  %_id_i164 = load i64, i64* %_i160
  %_index_pointer166 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_x163, i32 0, i32 1, i64 %_id_i164
  %_index_value165 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer166
  %_index_pointer168 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value165, i32 0, i32 1, i32 0
  %_index_value167 = load i64, i64* %_index_pointer168
  %_id_ans169 = load i64, i64* %_ans159
  %_bop170 = sub i64 %_index_value167, %_id_ans169
  store i64 %_bop170, i64* %_ans159
  %_id_i171 = load i64, i64* %_i160
  %_bop172 = add i64 %_id_i171, 1
  store i64 %_bop172, i64* %_i160
  br label %_cond174
_merge173:
  br label %_begin_if186
_begin_if186:
  %_unop176 = xor i64 5, -1
  %_bop177 = and i64 5, %_unop176
  %_bop178 = or i64 %_bop177, 0
  %_bop179 = icmp ne i64 %_bop178, 0
  br i1 %_bop179, label %_then_branch185, label %_else_branch184
_then_branch185:
  %_id_ans182 = load i64, i64* %_ans159
  ret i64 %_id_ans182
_else_branch184:
  %_id_ans180 = load i64, i64* %_ans159
  %_unop181 = sub i64 0, %_id_ans180
  ret i64 %_unop181
_end_if183:
  %_id_ans187 = load i64, i64* %_ans159
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
