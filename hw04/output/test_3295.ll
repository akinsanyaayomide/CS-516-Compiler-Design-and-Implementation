; generated from: hw4programs/run32.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 11

define i64 @f() {
  %_278 = alloca i64
  store i64 12, i64* %_278
  %_id_i279 = load i64, i64* %_278
  ret i64 %_id_i279
}

define i64 @g() {
  %_276 = alloca i64
  store i64 10, i64* %_276
  %_id_i277 = load i64, i64* %_276
  ret i64 %_id_i277
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc269 = alloca i64
  %_argv270 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc269
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv270
  %_271 = call i64 @f()
  %_272 = call i64 @g()
  %_bop273 = add i64 %_271, %_272
  %_id_i274 = load i64, i64* @i
  %_bop275 = add i64 %_bop273, %_id_i274
  ret i64 %_bop275
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
