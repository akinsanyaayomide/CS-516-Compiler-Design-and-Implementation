; generated from: hw4programs/arrayargs1.oat
target triple = "x86_64-apple-macosx10.13.0"
@x = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x147 = alloca { i64, [0 x i64] }*
  %_y148 = alloca { i64, [0 x i64] }*
  %_b149 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x147
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y148
  store i1 %b, i1* %_b149
  br label %_begin_if153
_begin_if153:
  %_id_b150 = load i1, i1* %_b149
  br i1 %_id_b150, label %_then_branch154, label %_else_branch155
_then_branch154:
  %_id_x151 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x147
  ret { i64, [0 x i64] }* %_id_x151
_else_branch155:
  %_id_y152 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y148
  ret { i64, [0 x i64] }* %_id_y152
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc138 = alloca i64
  %_argv139 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc138
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv139
  %_id_x140 = bitcast { i64, [3 x i64] }* @x to { i64, [0 x i64] }*
  %_id_y141 = bitcast { i64, [3 x i64] }* @y to { i64, [0 x i64] }*
  %_142 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_x140, { i64, [0 x i64] }* %_id_y141, i1 1)
  %_143 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_142, i32 0, i32 1, i32 0
  store i64 17, i64* %_143
  %_id_x144 = bitcast { i64, [3 x i64] }* @x to { i64, [0 x i64] }*
  %_index_pointer145 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x144, i32 0, i32 1, i32 0
  %_index_value146 = load i64, i64* %_index_pointer145
  ret i64 %_index_value146
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
