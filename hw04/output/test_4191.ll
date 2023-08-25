; generated from: hw4programs/easyrun9.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc97 = alloca i64
  %_argv98 = alloca { i64, [0 x i8*] }*
  %_99 = alloca { i64, [0 x i64] }*
  %_114 = alloca i64
  %_115 = alloca i64
  store i64 %argc, i64* %_argc97
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv98
  %_raw_array100 = call i64* @oat_alloc_array(i64 4)
  %_array101 = bitcast i64* %_raw_array100 to { i64, [0 x i64] }*
  %_113 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array101, i32 0, i32 1, i32 3
  store i64 4, i64* %_111
  %_110 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array101, i32 0, i32 1, i32 2
  store i64 3, i64* %_108
  %_107 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array101, i32 0, i32 1, i32 1
  store i64 2, i64* %_105
  %_104 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array101, i32 0, i32 1, i32 0
  store i64 1, i64* %_102
  store { i64, [0 x i64] }* %_array101, { i64, [0 x i64] }** %_99
  store i64 0, i64* %_114
  store i64 0, i64* %_115
  br label %_cond131
_cond131:
  %_id_i116 = load i64, i64* %_115
  %_bop117 = icmp slt i64 %_id_i116, 4
  br i1 %_bop117, label %_if130, label %_merge132
_if130:
  %_id_x118 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_99
  %_id_i119 = load i64, i64* %_115
  %_index_pointer121 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x118, i32 0, i32 1, i64 %_id_i119
  %_index_value120 = load i64, i64* %_index_pointer121
  %_id_x122 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_99
  %_id_i123 = load i64, i64* %_115
  %_index_pointer125 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x122, i32 0, i32 1, i64 %_id_i123
  %_index_value124 = load i64, i64* %_index_pointer125
  %_unop126 = xor i64 %_index_value124, -1
  %_bop127 = mul i64 %_index_value120, %_unop126
  store i64 %_bop127, i64* %_114
  %_id_i128 = load i64, i64* %_115
  %_bop129 = add i64 %_id_i128, 1
  store i64 %_bop129, i64* %_115
  br label %_cond131
_merge132:
  %_id_ans133 = load i64, i64* %_114
  ret i64 %_id_ans133
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
