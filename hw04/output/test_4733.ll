; generated from: hw4programs/arrayargs1.oat
target triple = "x86_64-apple-macosx10.13.0"
@x = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x300 = alloca { i64, [0 x i64] }*
  %_y301 = alloca { i64, [0 x i64] }*
  %_b302 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x300
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y301
  store i1 %b, i1* %_b302
  br label %_begin_if306
_begin_if306:
  %_id_b303 = load i1, i1* %_b302
  br i1 %_id_b303, label %_then_branch307, label %_else_branch308
_then_branch307:
  %_id_x304 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x300
  ret { i64, [0 x i64] }* %_id_x304
_else_branch308:
  %_id_y305 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y301
  ret { i64, [0 x i64] }* %_id_y305
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc291 = alloca i64
  %_argv292 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc291
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv292
  %_id_x293 = bitcast { i64, [3 x i64] }* @x to { i64, [0 x i64] }*
  %_id_y294 = bitcast { i64, [3 x i64] }* @y to { i64, [0 x i64] }*
  %_295 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_x293, { i64, [0 x i64] }* %_id_y294, i1 1)
  %_296 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_295, i32 0, i32 1, i32 0
  store i64 17, i64* %_296
  %_id_x297 = bitcast { i64, [3 x i64] }* @x to { i64, [0 x i64] }*
  %_index_pointer299 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x297, i32 0, i32 1, i32 0
  %_index_value298 = load i64, i64* %_index_pointer299
  ret i64 %_index_value298
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
