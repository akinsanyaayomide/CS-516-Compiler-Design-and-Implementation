; generated from: hw4programs/run33.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc404 = alloca i64
  %_argv405 = alloca { i64, [0 x i8*] }*
  %_406 = alloca { i64, [0 x i1] }*
  %_413 = alloca i64
  store i64 %argc, i64* %_argc404
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv405
  %_raw_array407 = call i64* @oat_alloc_array(i64 2)
  %_array408 = bitcast i64* %_raw_array407 to { i64, [0 x i1] }*
  %_411 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array408, i32 0, i32 1, i32 1
  store i1 0, i1* %_411
  %_409 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array408, i32 0, i32 1, i32 0
  store i1 1, i1* %_409
  store { i64, [0 x i1] }* %_array408, { i64, [0 x i1] }** %_406
  store i64 0, i64* %_413
  %_id_b414 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_406
  %_index_pointer415 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_b414, i32 0, i32 1, i32 0
  %_index_value416 = load i1, i1* %_index_pointer415
  br i1 %_index_value416, label %_if417, label %_merge418
_if417:
  store i64 1, i64* %_413
  br label %_merge418
_merge418:
  %_id_i419 = load i64, i64* %_413
  ret i64 %_id_i419
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
