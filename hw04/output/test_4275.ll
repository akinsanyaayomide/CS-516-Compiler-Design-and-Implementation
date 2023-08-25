; generated from: hw4programs/xor_shift.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string4213 = global [2 x i8] c"
\00"

define i64 @xor(i64 %x, i64 %y) {
  %_x4251 = alloca i64
  %_y4252 = alloca i64
  store i64 %x, i64* %_x4251
  store i64 %y, i64* %_y4252
  %_id_x4253 = load i64, i64* %_x4251
  %_id_y4254 = load i64, i64* %_y4252
  %_bop4255 = and i64 %_id_x4253, %_id_y4254
  %_unop4256 = xor i64 %_bop4255, -1
  %_id_x4257 = load i64, i64* %_x4251
  %_id_y4258 = load i64, i64* %_y4252
  %_bop4259 = or i64 %_id_x4257, %_id_y4258
  %_bop4260 = and i64 %_unop4256, %_bop4259
  ret i64 %_bop4260
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %s) {
  %_s4219 = alloca { i64, [0 x i64] }*
  %_4220 = alloca i64
  %_4224 = alloca i64
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_s4219
  %_id_s4221 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4219
  %_index_pointer4223 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_s4221, i32 0, i32 1, i32 0
  %_index_value4222 = load i64, i64* %_index_pointer4223
  store i64 %_index_value4222, i64* %_4220
  %_id_s4225 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4219
  %_index_pointer4227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_s4225, i32 0, i32 1, i32 1
  %_index_value4226 = load i64, i64* %_index_pointer4227
  store i64 %_index_value4226, i64* %_4224
  %_id_y4228 = load i64, i64* %_4224
  %_id_s4229 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4219
  %_4230 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_s4229, i32 0, i32 1, i32 0
  store i64 %_id_y4228, i64* %_4230
  %_id_x4231 = load i64, i64* %_4220
  %_id_x4232 = load i64, i64* %_4220
  %_bop4233 = shl i64 %_id_x4232, 23
  %_4234 = call i64 @xor(i64 %_id_x4231, i64 %_bop4233)
  store i64 %_4234, i64* %_4220
  %_id_x4235 = load i64, i64* %_4220
  %_id_x4236 = load i64, i64* %_4220
  %_bop4237 = lshr i64 %_id_x4236, 17
  %_4238 = call i64 @xor(i64 %_id_x4235, i64 %_bop4237)
  store i64 %_4238, i64* %_4220
  %_id_x4239 = load i64, i64* %_4220
  %_id_y4240 = load i64, i64* %_4224
  %_id_y4241 = load i64, i64* %_4224
  %_bop4242 = lshr i64 %_id_y4241, 26
  %_4243 = call i64 @xor(i64 %_id_y4240, i64 %_bop4242)
  %_4244 = call i64 @xor(i64 %_id_x4239, i64 %_4243)
  store i64 %_4244, i64* %_4220
  %_id_x4245 = load i64, i64* %_4220
  %_id_s4246 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4219
  %_4247 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_s4246, i32 0, i32 1, i32 1
  store i64 %_id_x4245, i64* %_4247
  %_id_x4248 = load i64, i64* %_4220
  %_id_y4249 = load i64, i64* %_4224
  %_bop4250 = add i64 %_id_x4248, %_id_y4249
  ret i64 %_bop4250
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4191 = alloca i64
  %_argv4192 = alloca { i64, [0 x i8*] }*
  %_4193 = alloca { i64, [0 x i64] }*
  %_4196 = alloca i64
  store i64 %argc, i64* %_argc4191
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4192
  %_raw_array4194 = call i64* @oat_alloc_array(i64 2)
  %_array4195 = bitcast i64* %_raw_array4194 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4195, { i64, [0 x i64] }** %_4193
  store i64 0, i64* %_4196
  br label %_cond4208
_cond4208:
  %_id_i4197 = load i64, i64* %_4196
  %_bop4198 = icmp slt i64 %_id_i4197, 2
  br i1 %_bop4198, label %_if4207, label %_merge4209
_if4207:
  %_id_i4199 = load i64, i64* %_4196
  %_bop4200 = add i64 %_id_i4199, 1
  %_bop4201 = mul i64 100, %_bop4200
  %_id_seed4202 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4193
  %_id_i4203 = load i64, i64* %_4196
  %_4204 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_seed4202, i32 0, i32 1, i64 %_id_i4203
  store i64 %_bop4201, i64* %_4204
  %_id_i4205 = load i64, i64* %_4196
  %_bop4206 = add i64 %_id_i4205, 1
  store i64 %_bop4206, i64* %_4196
  br label %_cond4208
_merge4209:
  %_id_seed4210 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4193
  %_4211 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_id_seed4210)
  call void @print_int(i64 %_4211)
  %_string14214 = getelementptr [2 x i8], [2 x i8]* @_string4213, i32 0, i32 0
  call void @print_string(i8* %_string14214)
  %_id_seed4216 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4193
  %_4217 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_id_seed4216)
  call void @print_int(i64 %_4217)
  ret i64 0
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
