; generated from: hw4programs/run33.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc421 = alloca i64
  %_argv422 = alloca { i64, [0 x i8*] }*
  %_423 = alloca { i64, [0 x i1] }*
  %_430 = alloca i64
  store i64 %argc, i64* %_argc421
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv422
  %_raw_array424 = call i64* @oat_alloc_array(i64 2)
  %_array425 = bitcast i64* %_raw_array424 to { i64, [0 x i1] }*
  %_428 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array425, i32 0, i32 1, i32 1
  store i1 0, i1* %_428
  %_426 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array425, i32 0, i32 1, i32 0
  store i1 1, i1* %_426
  store { i64, [0 x i1] }* %_array425, { i64, [0 x i1] }** %_423
  store i64 0, i64* %_430
  br label %_start434
_start434:
  %_id_b431 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_423
  %_index_pointer432 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_b431, i32 0, i32 1, i32 0
  %_index_value433 = load i1, i1* %_index_pointer432
  br i1 %_index_value433, label %_then435, label %_else436
_then435:
  store i64 1, i64* %_430
  br label %_post437
_else436:
  br label %_post437
_post437:
  %_id_i438 = load i64, i64* %_430
  ret i64 %_id_i438
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
