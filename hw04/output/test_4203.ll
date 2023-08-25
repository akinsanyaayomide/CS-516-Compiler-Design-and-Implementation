; generated from: hw4programs/arrayargs1.oat
target triple = "x86_64-apple-macosx10.13.0"
@x = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x296 = alloca { i64, [0 x i64] }*
  %_y297 = alloca { i64, [0 x i64] }*
  %_b298 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x296
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y297
  store i1 %b, i1* %_b298
  br label %_begin_if302
_begin_if302:
  %_id_b299 = load i1, i1* %_b298
  br i1 %_id_b299, label %_then_branch303, label %_else_branch304
_then_branch303:
  %_id_x300 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x296
  ret { i64, [0 x i64] }* %_id_x300
_else_branch304:
  %_id_y301 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y297
  ret { i64, [0 x i64] }* %_id_y301
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc287 = alloca i64
  %_argv288 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc287
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv288
  %_id_x289 = bitcast { i64, [3 x i64] }* @x to { i64, [0 x i64] }*
  %_id_y290 = bitcast { i64, [3 x i64] }* @y to { i64, [0 x i64] }*
  %_291 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_x289, { i64, [0 x i64] }* %_id_y290, i1 1)
  %_292 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_291, i32 0, i32 1, i32 0
  store i64 17, i64* %_292
  %_id_x293 = bitcast { i64, [3 x i64] }* @x to { i64, [0 x i64] }*
  %_index_pointer295 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x293, i32 0, i32 1, i32 0
  %_index_value294 = load i64, i64* %_index_pointer295
  ret i64 %_index_value294
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
