; generated from: hw4programs/arrayargs.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x267 = alloca { i64, [0 x i64] }*
  %_y268 = alloca { i64, [0 x i64] }*
  %_b269 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x267
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y268
  store i1 %b, i1* %_b269
  br label %_start273
_start273:
  %_id_b270 = load i1, i1* %_b269
  br i1 %_id_b270, label %_then274, label %_else275
_then274:
  %_id_x271 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x267
  ret { i64, [0 x i64] }* %_id_x271
_else275:
  %_id_y272 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y268
  ret { i64, [0 x i64] }* %_id_y272
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc227 = alloca i64
  %_argv228 = alloca { i64, [0 x i8*] }*
  %_229 = alloca { i64, [0 x i64] }*
  %_232 = alloca i64
  %_244 = alloca { i64, [0 x i64] }*
  %_247 = alloca i64
  store i64 %argc, i64* %_argc227
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv228
  %_raw_array230 = call i64* @oat_alloc_array(i64 3)
  %_array231 = bitcast i64* %_raw_array230 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array231, { i64, [0 x i64] }** %_229
  store i64 0, i64* %_232
  br label %_start241
_start241:
  %_id_i233 = load i64, i64* %_232
  %_234 = icmp slt i64 %_id_i233, 3
  br i1 %_234, label %_body242, label %_else243
_body242:
  %_id_i235 = load i64, i64* %_232
  %_id_x236 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_229
  %_id_i237 = load i64, i64* %_232
  %_238 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x236, i32 0, i32 1, i64 %_id_i237
  store i64 %_id_i235, i64* %_238
  %_id_i239 = load i64, i64* %_232
  %_240 = add i64 %_id_i239, 1
  store i64 %_240, i64* %_232
  br label %_start241
_else243:
  %_raw_array245 = call i64* @oat_alloc_array(i64 3)
  %_array246 = bitcast i64* %_raw_array245 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array246, { i64, [0 x i64] }** %_244
  store i64 0, i64* %_247
  br label %_start257
_start257:
  %_id_i248 = load i64, i64* %_247
  %_249 = icmp slt i64 %_id_i248, 3
  br i1 %_249, label %_body258, label %_else259
_body258:
  %_id_i250 = load i64, i64* %_247
  %_251 = add i64 %_id_i250, 3
  %_id_y252 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_244
  %_id_i253 = load i64, i64* %_247
  %_254 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_y252, i32 0, i32 1, i64 %_id_i253
  store i64 %_251, i64* %_254
  %_id_i255 = load i64, i64* %_247
  %_256 = add i64 %_id_i255, 1
  store i64 %_256, i64* %_247
  br label %_start257
_else259:
  %_id_x260 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_229
  %_id_y261 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_244
  %_262 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_x260, { i64, [0 x i64] }* %_id_y261, i1 1)
  %_263 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_262, i32 0, i32 1, i32 0
  store i64 17, i64* %_263
  %_id_x264 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_229
  %_index_pointer265 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x264, i32 0, i32 1, i32 0
  %_index_value266 = load i64, i64* %_index_pointer265
  ret i64 %_index_value266
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
