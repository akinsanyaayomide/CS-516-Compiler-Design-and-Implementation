; generated from: hw4programs/arrayargs2.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x172 = alloca { i64, [0 x i64] }*
  %_y173 = alloca { i64, [0 x i64] }*
  %_b174 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x172
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y173
  store i1 %b, i1* %_b174
  br label %_begin_if178
_begin_if178:
  %_id_b175 = load i1, i1* %_b174
  br i1 %_id_b175, label %_then_branch179, label %_else_branch180
_then_branch179:
  %_id_x176 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x172
  ret { i64, [0 x i64] }* %_id_x176
_else_branch180:
  %_id_y177 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y173
  ret { i64, [0 x i64] }* %_id_y177
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc157 = alloca i64
  %_argv158 = alloca { i64, [0 x i8*] }*
  %_159 = alloca { i64, [0 x i64] }*
  %_162 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc157
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv158
  %_raw_array160 = call i64* @oat_alloc_array(i64 3)
  %_array161 = bitcast i64* %_raw_array160 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array161, { i64, [0 x i64] }** %_159
  %_raw_array163 = call i64* @oat_alloc_array(i64 3)
  %_array164 = bitcast i64* %_raw_array163 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array164, { i64, [0 x i64] }** %_162
  %_id_x165 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_159
  %_id_y166 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_162
  %_167 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_x165, { i64, [0 x i64] }* %_id_y166, i1 1)
  %_168 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_167, i32 0, i32 1, i32 0
  store i64 17, i64* %_168
  %_id_x169 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_159
  %_index_pointer170 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x169, i32 0, i32 1, i32 0
  %_index_value171 = load i64, i64* %_index_pointer170
  ret i64 %_index_value171
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
