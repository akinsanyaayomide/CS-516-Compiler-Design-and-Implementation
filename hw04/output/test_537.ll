; generated from: hw4programs/arrayargs.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x269 = alloca { i64, [0 x i64] }*
  %_y270 = alloca { i64, [0 x i64] }*
  %_b271 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x269
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y270
  store i1 %b, i1* %_b271
  br label %_start275
_start275:
  %_id_b272 = load i1, i1* %_b271
  br i1 %_id_b272, label %_then276, label %_else277
_then276:
  %_id_x273 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x269
  ret { i64, [0 x i64] }* %_id_x273
_else277:
  %_id_y274 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y270
  ret { i64, [0 x i64] }* %_id_y274
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc229 = alloca i64
  %_argv230 = alloca { i64, [0 x i8*] }*
  %_231 = alloca { i64, [0 x i64] }*
  %_234 = alloca i64
  %_246 = alloca { i64, [0 x i64] }*
  %_249 = alloca i64
  store i64 %argc, i64* %_argc229
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv230
  %_raw_array232 = call i64* @oat_alloc_array(i64 3)
  %_array233 = bitcast i64* %_raw_array232 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array233, { i64, [0 x i64] }** %_231
  store i64 0, i64* %_234
  br label %_start243
_start243:
  %_id_i235 = load i64, i64* %_234
  %_236 = icmp slt i64 %_id_i235, 3
  br i1 %_236, label %_body244, label %_else245
_body244:
  %_id_i237 = load i64, i64* %_234
  %_id_x238 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_231
  %_id_i239 = load i64, i64* %_234
  %_240 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x238, i32 0, i32 1, i64 %_id_i239
  store i64 %_id_i237, i64* %_240
  %_id_i241 = load i64, i64* %_234
  %_242 = add i64 %_id_i241, 1
  store i64 %_242, i64* %_234
  br label %_start243
_else245:
  %_raw_array247 = call i64* @oat_alloc_array(i64 3)
  %_array248 = bitcast i64* %_raw_array247 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array248, { i64, [0 x i64] }** %_246
  store i64 0, i64* %_249
  br label %_start259
_start259:
  %_id_i250 = load i64, i64* %_249
  %_251 = icmp slt i64 %_id_i250, 3
  br i1 %_251, label %_body260, label %_else261
_body260:
  %_id_i252 = load i64, i64* %_249
  %_253 = add i64 %_id_i252, 3
  %_id_y254 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_246
  %_id_i255 = load i64, i64* %_249
  %_256 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_y254, i32 0, i32 1, i64 %_id_i255
  store i64 %_253, i64* %_256
  %_id_i257 = load i64, i64* %_249
  %_258 = add i64 %_id_i257, 1
  store i64 %_258, i64* %_249
  br label %_start259
_else261:
  %_id_x262 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_231
  %_id_y263 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_246
  %_264 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_x262, { i64, [0 x i64] }* %_id_y263, i1 1)
  %_265 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_264, i32 0, i32 1, i32 0
  store i64 17, i64* %_265
  %_id_x266 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_231
  %_index_pointer267 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x266, i32 0, i32 1, i32 0
  %_index_value268 = load i64, i64* %_index_pointer267
  ret i64 %_index_value268
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
