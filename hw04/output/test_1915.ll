; generated from: hw4programs/run28.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc264 = alloca i64
  %_argv265 = alloca { i64, [0 x i8*] }*
  %_266 = alloca i64
  %_267 = alloca i64
  store i64 %argc, i64* %_argc264
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv265
  store i64 9, i64* %_266
  %_id_i269 = load i64, i64* %_266
  %_id_i268 = load i64, i64* %_266
  %_270 = add i64 %_id_i268, %_id_i269
  store i64 %_270, i64* %_267
  %_id_j276 = load i64, i64* %_267
  %_id_i273 = load i64, i64* %_266
  %_id_i272 = load i64, i64* %_266
  %_274 = mul i64 %_id_i272, %_id_i273
  %_id_i271 = load i64, i64* %_266
  %_275 = add i64 %_id_i271, %_274
  %_277 = sub i64 %_275, %_id_j276
  %_278 = lshr i64 %_277, 2
  %_279 = shl i64 %_278, 2
  %_280 = ashr i64 %_279, 2
  ret i64 %_280
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
