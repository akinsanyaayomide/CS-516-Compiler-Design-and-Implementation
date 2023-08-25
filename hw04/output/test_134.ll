; generated from: hw4programs/run31.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 9

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc391 = alloca i64
  %_argv392 = alloca { i64, [0 x i8*] }*
  %_393 = alloca i64
  store i64 %argc, i64* %_argc391
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv392
  %_id_i394 = load i64, i64* @i
  store i64 %_id_i394, i64* %_393
  %_id_j395 = load i64, i64* %_393
  ret i64 %_id_j395
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
