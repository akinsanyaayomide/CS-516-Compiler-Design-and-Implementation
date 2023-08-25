; generated from: hw4programs/arrayargs.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x258 = alloca { i64, [0 x i64] }*
  %_y259 = alloca { i64, [0 x i64] }*
  %_b260 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x258
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y259
  store i1 %b, i1* %_b260
  %_id_b261 = load i1, i1* %_b260
  br i1 %_id_b261, label %_if264, label %_else265
_if264:
  %_id_x262 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x258
  ret { i64, [0 x i64] }* %_id_x262
_else265:
  %_id_y263 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y259
  ret { i64, [0 x i64] }* %_id_y263
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc218 = alloca i64
  %_argv219 = alloca { i64, [0 x i8*] }*
  %_220 = alloca { i64, [0 x i64] }*
  %_223 = alloca i64
  %_235 = alloca { i64, [0 x i64] }*
  %_238 = alloca i64
  store i64 %argc, i64* %_argc218
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv219
  %_raw_array221 = call i64* @oat_alloc_array(i64 3)
  %_array222 = bitcast i64* %_raw_array221 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array222, { i64, [0 x i64] }** %_220
  store i64 0, i64* %_223
  br label %_cond233
_cond233:
  %_id_i224 = load i64, i64* %_223
  %_225 = icmp slt i64 %_id_i224, 3
  br i1 %_225, label %_if232, label %_merge234
_if232:
  %_id_i226 = load i64, i64* %_223
  %_id_x227 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_220
  %_id_i228 = load i64, i64* %_223
  %_229 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x227, i32 0, i32 1, i64 %_id_i228
  store i64 %_id_i226, i64* %_229
  %_id_i230 = load i64, i64* %_223
  %_231 = add i64 %_id_i230, 1
  store i64 %_231, i64* %_223
  br label %_cond233
_merge234:
  %_raw_array236 = call i64* @oat_alloc_array(i64 3)
  %_array237 = bitcast i64* %_raw_array236 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array237, { i64, [0 x i64] }** %_235
  store i64 0, i64* %_238
  br label %_cond249
_cond249:
  %_id_i239 = load i64, i64* %_238
  %_240 = icmp slt i64 %_id_i239, 3
  br i1 %_240, label %_if248, label %_merge250
_if248:
  %_id_i241 = load i64, i64* %_238
  %_242 = add i64 %_id_i241, 3
  %_id_y243 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_235
  %_id_i244 = load i64, i64* %_238
  %_245 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_y243, i32 0, i32 1, i64 %_id_i244
  store i64 %_242, i64* %_245
  %_id_i246 = load i64, i64* %_238
  %_247 = add i64 %_id_i246, 1
  store i64 %_247, i64* %_238
  br label %_cond249
_merge250:
  %_id_x251 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_220
  %_id_y252 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_235
  %_253 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_x251, { i64, [0 x i64] }* %_id_y252, i1 1)
  %_254 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_253, i32 0, i32 1, i32 0
  store i64 17, i64* %_254
  %_id_x255 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_220
  %_index_pointer256 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x255, i32 0, i32 1, i32 0
  %_index_value257 = load i64, i64* %_index_pointer256
  ret i64 %_index_value257
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
