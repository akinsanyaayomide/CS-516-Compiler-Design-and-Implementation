; generated from: hw4programs/run33.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc417 = alloca i64
  %_argv418 = alloca { i64, [0 x i8*] }*
  %_b425 = alloca { i64, [0 x i1] }*
  %_i426 = alloca i64
  store i64 %argc, i64* %_argc417
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv418
  %_raw_array419 = call i64* @oat_alloc_array(i64 2)
  %_array420 = bitcast i64* %_raw_array419 to { i64, [0 x i1] }*
  %_423 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array420, i32 0, i32 1, i32 1
  store i1 0, i1* %_423
  %_421 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array420, i32 0, i32 1, i32 0
  store i1 1, i1* %_421
  store { i64, [0 x i1] }* %_array420, { i64, [0 x i1] }** %_b425
  store i64 0, i64* %_i426
  br label %_begin_if430
_begin_if430:
  %_id_b427 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_b425
  %_index_pointer429 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_b427, i32 0, i32 1, i32 0
  %_index_value428 = load i1, i1* %_index_pointer429
  br i1 %_index_value428, label %_then_branch431, label %_else_branch432
_then_branch431:
  store i64 1, i64* %_i426
  br label %_end_if433
_else_branch432:
  br label %_end_if433
_end_if433:
  %_id_i434 = load i64, i64* %_i426
  ret i64 %_id_i434
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
