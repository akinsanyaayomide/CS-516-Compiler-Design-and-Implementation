; generated from: hw4programs/run47.oat
target triple = "x86_64-apple-macosx10.13.0"
@a = global i64 1

define i64 @f() {
  %_id_a2039 = load i64, i64* @a
  %_bop2040 = add i64 %_id_a2039, 1
  store i64 %_bop2040, i64* @a
  %_id_a2041 = load i64, i64* @a
  ret i64 %_id_a2041
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2020 = alloca i64
  %_argv2021 = alloca { i64, [0 x i8*] }*
  %_2022 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2020
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2021
  %_2023 = call i64 @f()
  %_raw_array2024 = call i64* @oat_alloc_array(i64 %_2023)
  %_array2025 = bitcast i64* %_raw_array2024 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2025, { i64, [0 x i64] }** %_2022
  %_id_b2026 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2022
  %_2027 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2026, i32 0, i32 1, i32 0
  store i64 0, i64* %_2027
  %_id_b2028 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2022
  %_2029 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2028, i32 0, i32 1, i32 1
  store i64 1, i64* %_2029
  %_id_a2030 = load i64, i64* @a
  %_id_b2031 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2022
  %_index_pointer2032 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2031, i32 0, i32 1, i32 0
  %_index_value2033 = load i64, i64* %_index_pointer2032
  %_bop2034 = add i64 %_id_a2030, %_index_value2033
  %_id_b2035 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2022
  %_index_pointer2036 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2035, i32 0, i32 1, i32 1
  %_index_value2037 = load i64, i64* %_index_pointer2036
  %_bop2038 = add i64 %_bop2034, %_index_value2037
  ret i64 %_bop2038
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
