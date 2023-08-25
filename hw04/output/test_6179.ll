; generated from: hw4programs/easyrun3.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6 = alloca i64
  %_argv7 = alloca { i64, [0 x i8*] }*
  %_x8 = alloca i64
  %_i9 = alloca i64
  store i64 %argc, i64* %_argc6
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7
  store i64 0, i64* %_x8
  store i64 0, i64* %_i9
  br label %_cond20
_cond20:
  %_id_i10 = load i64, i64* %_i9
  %_bop11 = icmp slt i64 %_id_i10, 10
  br i1 %_bop11, label %_if21, label %_merge19
_if21:
  %_id_x12 = load i64, i64* %_x8
  %_id_i13 = load i64, i64* %_i9
  %_bop14 = add i64 %_id_x12, %_id_i13
  %_id_i15 = load i64, i64* %_i9
  %_bop16 = mul i64 %_bop14, %_id_i15
  store i64 %_bop16, i64* %_x8
  %_id_i17 = load i64, i64* %_i9
  %_bop18 = add i64 %_id_i17, 1
  store i64 %_bop18, i64* %_i9
  br label %_cond20
_merge19:
  %_id_x22 = load i64, i64* %_x8
  ret i64 %_id_x22
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
