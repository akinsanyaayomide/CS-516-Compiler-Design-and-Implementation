; generated from: hw4programs/run33.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc433 = alloca i64
  %_argv434 = alloca { i64, [0 x i8*] }*
  %_435 = alloca { i64, [0 x i1] }*
  %_442 = alloca i64
  store i64 %argc, i64* %_argc433
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv434
  %_raw_array436 = call i64* @oat_alloc_array(i64 2)
  %_array437 = bitcast i64* %_raw_array436 to { i64, [0 x i1] }*
  %_440 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array437, i32 0, i32 1, i32 1
  store i1 0, i1* %_440
  %_438 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array437, i32 0, i32 1, i32 0
  store i1 1, i1* %_438
  store { i64, [0 x i1] }* %_array437, { i64, [0 x i1] }** %_435
  store i64 0, i64* %_442
  br label %_begin_if446
_begin_if446:
  %_id_b443 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_435
  %_index_pointer445 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_b443, i32 0, i32 1, i32 0
  %_index_value444 = load i1, i1* %_index_pointer445
  br i1 %_index_value444, label %_then_branch447, label %_else_branch448
_then_branch447:
  store i64 1, i64* %_442
  br label %_end_if449
_else_branch448:
  br label %_end_if449
_end_if449:
  %_id_i450 = load i64, i64* %_442
  ret i64 %_id_i450
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
