; generated from: hw4programs/arrayargs3.oat
target triple = "x86_64-apple-macosx10.13.0"
@x = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x201 = alloca { i64, [0 x i64] }*
  %_y202 = alloca { i64, [0 x i64] }*
  %_b203 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x201
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y202
  store i1 %b, i1* %_b203
  br label %_begin_if207
_begin_if207:
  %_id_b204 = load i1, i1* %_b203
  br i1 %_id_b204, label %_then_branch208, label %_else_branch209
_then_branch208:
  %_id_x205 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x201
  ret { i64, [0 x i64] }* %_id_x205
_else_branch209:
  %_id_y206 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y202
  ret { i64, [0 x i64] }* %_id_y206
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc182 = alloca i64
  %_argv183 = alloca { i64, [0 x i8*] }*
  %_188 = alloca i64
  store i64 %argc, i64* %_argc182
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv183
  %_id_x184 = bitcast { i64, [3 x i64] }* @x to { i64, [0 x i64] }*
  %_id_y185 = bitcast { i64, [3 x i64] }* @y to { i64, [0 x i64] }*
  %_186 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_x184, { i64, [0 x i64] }* %_id_y185, i1 1)
  %_187 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_186, i32 0, i32 1, i32 0
  store i64 17, i64* %_187
  %_id_x189 = bitcast { i64, [3 x i64] }* @x to { i64, [0 x i64] }*
  %_id_y190 = bitcast { i64, [3 x i64] }* @y to { i64, [0 x i64] }*
  %_191 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_x189, { i64, [0 x i64] }* %_id_y190, i1 1)
  %_index_pointer192 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_191, i32 0, i32 1, i32 0
  %_index_value193 = load i64, i64* %_index_pointer192
  %_id_y194 = bitcast { i64, [3 x i64] }* @y to { i64, [0 x i64] }*
  %_id_x195 = bitcast { i64, [3 x i64] }* @x to { i64, [0 x i64] }*
  %_196 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_y194, { i64, [0 x i64] }* %_id_x195, i1 0)
  %_index_pointer197 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_196, i32 0, i32 1, i32 0
  %_index_value198 = load i64, i64* %_index_pointer197
  %_bop199 = add i64 %_index_value193, %_index_value198
  store i64 %_bop199, i64* %_188
  %_id_z200 = load i64, i64* %_188
  ret i64 %_id_z200
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
