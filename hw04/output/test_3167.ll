; generated from: hw4programs/run28.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc235 = alloca i64
  %_argv236 = alloca { i64, [0 x i8*] }*
  %_237 = alloca i64
  %_238 = alloca i64
  store i64 %argc, i64* %_argc235
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv236
  store i64 9, i64* %_237
  %_id_i239 = load i64, i64* %_237
  %_id_i240 = load i64, i64* %_237
  %_bop241 = add i64 %_id_i239, %_id_i240
  store i64 %_bop241, i64* %_238
  %_id_i242 = load i64, i64* %_237
  %_id_i243 = load i64, i64* %_237
  %_id_i244 = load i64, i64* %_237
  %_bop245 = mul i64 %_id_i243, %_id_i244
  %_bop246 = add i64 %_id_i242, %_bop245
  %_id_j247 = load i64, i64* %_238
  %_bop248 = sub i64 %_bop246, %_id_j247
  %_bop249 = lshr i64 %_bop248, 2
  %_bop250 = shl i64 %_bop249, 2
  %_bop251 = ashr i64 %_bop250, 2
  ret i64 %_bop251
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
