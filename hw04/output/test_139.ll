; generated from: hw4programs/run37.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc555 = alloca i64
  %_argv556 = alloca { i64, [0 x i8*] }*
  %_557 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc555
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv556
  %_raw_array566 = call i64* @oat_alloc_array(i64 2)
  %_array567 = bitcast i64* %_raw_array566 to { i64, [0 x i64] }*
  %_570 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array567, i32 0, i32 1, i32 1
  store i64 4, i64* %_570
  %_568 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array567, i32 0, i32 1, i32 0
  store i64 3, i64* %_568
  %_raw_array560 = call i64* @oat_alloc_array(i64 2)
  %_array561 = bitcast i64* %_raw_array560 to { i64, [0 x i64] }*
  %_564 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array561, i32 0, i32 1, i32 1
  store i64 2, i64* %_564
  %_562 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array561, i32 0, i32 1, i32 0
  store i64 1, i64* %_562
  %_raw_array558 = call i64* @oat_alloc_array(i64 2)
  %_array559 = bitcast i64* %_raw_array558 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_574 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array559, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array567, { i64, [0 x i64] }** %_574
  %_572 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array559, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array561, { i64, [0 x i64] }** %_572
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array559, { i64, [0 x { i64, [0 x i64] }*] }** %_557
  %_id_a576 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_557
  %_index_pointer577 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a576, i32 0, i32 1, i32 0
  %_index_value578 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer577
  %_index_pointer579 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value578, i32 0, i32 1, i32 1
  %_index_value580 = load i64, i64* %_index_pointer579
  ret i64 %_index_value580
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
