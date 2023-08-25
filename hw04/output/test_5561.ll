; generated from: hw4programs/arrayargs1.oat
target triple = "x86_64-apple-macosx10.13.0"
@x = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x284 = alloca { i64, [0 x i64] }*
  %_y285 = alloca { i64, [0 x i64] }*
  %_b286 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x284
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y285
  store i1 %b, i1* %_b286
  br label %_begin_if293
_begin_if293:
  %_id_b287 = load i1, i1* %_b286
  br i1 %_id_b287, label %_then_branch292, label %_else_branch291
_then_branch292:
  %_id_x288 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x284
  ret { i64, [0 x i64] }* %_id_x288
_else_branch291:
  %_id_y289 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y285
  ret { i64, [0 x i64] }* %_id_y289
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc275 = alloca i64
  %_argv276 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc275
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv276
  %_id_x277 = bitcast { i64, [3 x i64] }* @x to { i64, [0 x i64] }*
  %_id_y278 = bitcast { i64, [3 x i64] }* @y to { i64, [0 x i64] }*
  %_279 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_x277, { i64, [0 x i64] }* %_id_y278, i1 1)
  %_280 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_279, i32 0, i32 1, i32 0
  store i64 17, i64* %_280
  %_id_x281 = bitcast { i64, [3 x i64] }* @x to { i64, [0 x i64] }*
  %_index_pointer283 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x281, i32 0, i32 1, i32 0
  %_index_value282 = load i64, i64* %_index_pointer283
  ret i64 %_index_value282
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
