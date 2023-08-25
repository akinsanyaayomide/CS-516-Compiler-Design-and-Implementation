; generated from: hw5programs/compile_assign_struct.oat
target triple = "x86_64-apple-macosx10.13.0"
%Point = type { i64, i64 }

define i64 @program(i64 %_argc4, { i64, [0 x i8*] }* %_argv1) {
  %_argc5 = alloca i64
  %_argv2 = alloca { i64, [0 x i8*] }*
  %_p13 = alloca %Point*
  store i64 %_argc4, i64* %_argc5
  store { i64, [0 x i8*] }* %_argv1, { i64, [0 x i8*] }** %_argv2
  %_raw_struct7 = call i64* @oat_malloc(i64 16)
  %_struct8 = bitcast i64* %_raw_struct7 to %Point*
  %_get_field_ptr_id10 = getelementptr %Point, %Point* %_struct8, i32 0, i32 0
  %_get_field_value_id9 = bitcast i64 3 to i64
  store i64 %_get_field_value_id9, i64* %_get_field_ptr_id10
  %_get_field_ptr_id12 = getelementptr %Point, %Point* %_struct8, i32 0, i32 1
  %_get_field_value_id11 = bitcast i64 4 to i64
  store i64 %_get_field_value_id11, i64* %_get_field_ptr_id12
  store %Point* %_struct8, %Point** %_p13
  %_p15 = load %Point*, %Point** %_p13
  %_field_index_id16 = getelementptr %Point, %Point* %_p15, i32 0, i32 0
  store i64 5, i64* %_field_index_id16
  %_p18 = load %Point*, %Point** %_p13
  %_field_index_id19 = getelementptr %Point, %Point* %_p18, i32 0, i32 1
  %_p20 = load %Point*, %Point** %_p13
  %_field_index_id21 = getelementptr %Point, %Point* %_p20, i32 0, i32 0
  %_proj22 = load i64, i64* %_field_index_id21
  %_p23 = load %Point*, %Point** %_p13
  %_field_index_id24 = getelementptr %Point, %Point* %_p23, i32 0, i32 1
  %_proj25 = load i64, i64* %_field_index_id24
  %_bop26 = add i64 %_proj22, %_proj25
  %_bop27 = add i64 %_bop26, 3
  store i64 %_bop27, i64* %_field_index_id19
  %_p29 = load %Point*, %Point** %_p13
  %_field_index_id30 = getelementptr %Point, %Point* %_p29, i32 0, i32 0
  %_p31 = load %Point*, %Point** %_p13
  %_field_index_id32 = getelementptr %Point, %Point* %_p31, i32 0, i32 1
  %_proj33 = load i64, i64* %_field_index_id32
  %_bop34 = add i64 %_proj33, 4
  store i64 %_bop34, i64* %_field_index_id30
  %_p36 = load %Point*, %Point** %_p13
  %_field_index_id37 = getelementptr %Point, %Point* %_p36, i32 0, i32 0
  %_proj38 = load i64, i64* %_field_index_id37
  ret i64 %_proj38
}


declare i64* @oat_malloc(i64)
declare i64* @oat_alloc_array(i64)
declare void @oat_assert_not_null(i8*)
declare void @oat_assert_array_length(i64*, i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
