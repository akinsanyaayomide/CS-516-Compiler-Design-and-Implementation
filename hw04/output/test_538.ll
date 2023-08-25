; generated from: hw4programs/arrayargs1.oat
target triple = "x86_64-apple-macosx10.13.0"
@x = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x288 = alloca { i64, [0 x i64] }*
  %_y289 = alloca { i64, [0 x i64] }*
  %_b290 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x288
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y289
  store i1 %b, i1* %_b290
  br label %_start294
_start294:
  %_id_b291 = load i1, i1* %_b290
  br i1 %_id_b291, label %_then295, label %_else296
_then295:
  %_id_x292 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x288
  ret { i64, [0 x i64] }* %_id_x292
_else296:
  %_id_y293 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y289
  ret { i64, [0 x i64] }* %_id_y293
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc279 = alloca i64
  %_argv280 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc279
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv280
  %_id_x281 = bitcast { i64, [3 x i64] }* @x to { i64, [0 x i64] }*
  %_id_y282 = bitcast { i64, [3 x i64] }* @y to { i64, [0 x i64] }*
  %_283 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_x281, { i64, [0 x i64] }* %_id_y282, i1 1)
  %_284 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_283, i32 0, i32 1, i32 0
  store i64 17, i64* %_284
  %_id_x285 = bitcast { i64, [3 x i64] }* @x to { i64, [0 x i64] }*
  %_index_pointer286 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x285, i32 0, i32 1, i32 0
  %_index_value287 = load i64, i64* %_index_pointer286
  ret i64 %_index_value287
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
