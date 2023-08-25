; generated from: hw4programs/easyrun10.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc126 = alloca i64
  %_argv127 = alloca { i64, [0 x i8*] }*
  %_128 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_155 = alloca i64
  %_156 = alloca i64
  store i64 %argc, i64* %_argc126
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv127
  %_raw_array143 = call i64* @oat_alloc_array(i64 1)
  %_array144 = bitcast i64* %_raw_array143 to { i64, [0 x i64] }*
  %_145 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array144, i32 0, i32 1, i32 0
  store i64 4, i64* %_145
  %_raw_array139 = call i64* @oat_alloc_array(i64 1)
  %_array140 = bitcast i64* %_raw_array139 to { i64, [0 x i64] }*
  %_141 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array140, i32 0, i32 1, i32 0
  store i64 3, i64* %_141
  %_raw_array135 = call i64* @oat_alloc_array(i64 1)
  %_array136 = bitcast i64* %_raw_array135 to { i64, [0 x i64] }*
  %_137 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array136, i32 0, i32 1, i32 0
  store i64 2, i64* %_137
  %_raw_array131 = call i64* @oat_alloc_array(i64 1)
  %_array132 = bitcast i64* %_raw_array131 to { i64, [0 x i64] }*
  %_133 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array132, i32 0, i32 1, i32 0
  store i64 1, i64* %_133
  %_raw_array129 = call i64* @oat_alloc_array(i64 4)
  %_array130 = bitcast i64* %_raw_array129 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_153 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array130, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array144, { i64, [0 x i64] }** %_153
  %_151 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array130, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array140, { i64, [0 x i64] }** %_151
  %_149 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array130, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array136, { i64, [0 x i64] }** %_149
  %_147 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array130, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array132, { i64, [0 x i64] }** %_147
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array130, { i64, [0 x { i64, [0 x i64] }*] }** %_128
  store i64 0, i64* %_155
  store i64 0, i64* %_156
  br label %_cond170
_cond170:
  %_id_i157 = load i64, i64* %_156
  %_158 = icmp slt i64 %_id_i157, 4
  br i1 %_158, label %_if169, label %_merge171
_if169:
  %_id_ans165 = load i64, i64* %_155
  %_id_x159 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_128
  %_id_i160 = load i64, i64* %_156
  %_index_pointer161 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_x159, i32 0, i32 1, i64 %_id_i160
  %_index_value162 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer161
  %_index_pointer163 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value162, i32 0, i32 1, i32 0
  %_index_value164 = load i64, i64* %_index_pointer163
  %_166 = sub i64 %_index_value164, %_id_ans165
  store i64 %_166, i64* %_155
  %_id_i167 = load i64, i64* %_156
  %_168 = add i64 %_id_i167, 1
  store i64 %_168, i64* %_156
  br label %_cond170
_merge171:
  %_unop172 = xor i64 5, -1
  %_173 = and i64 5, %_unop172
  %_174 = or i64 %_173, 0
  %_175 = icmp ne i64 %_174, 0
  br i1 %_175, label %_if179, label %_else180
_if179:
  %_id_ans176 = load i64, i64* %_155
  ret i64 %_id_ans176
_else180:
  %_id_ans177 = load i64, i64* %_155
  %_unop178 = sub i64 0, %_id_ans177
  ret i64 %_unop178
_merge181:
  %_id_ans182 = load i64, i64* %_155
  ret i64 %_id_ans182
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
