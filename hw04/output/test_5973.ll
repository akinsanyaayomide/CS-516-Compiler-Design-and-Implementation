; generated from: hw4programs/easyrun9.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc97 = alloca i64
  %_argv98 = alloca { i64, [0 x i8*] }*
  %_x109 = alloca { i64, [0 x i64] }*
  %_ans110 = alloca i64
  %_i111 = alloca i64
  store i64 %argc, i64* %_argc97
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv98
  %_raw_array99 = call i64* @oat_alloc_array(i64 4)
  %_array100 = bitcast i64* %_raw_array99 to { i64, [0 x i64] }*
  %_107 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array100, i32 0, i32 1, i32 3
  store i64 4, i64* %_107
  %_105 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array100, i32 0, i32 1, i32 2
  store i64 3, i64* %_105
  %_103 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array100, i32 0, i32 1, i32 1
  store i64 2, i64* %_103
  %_101 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array100, i32 0, i32 1, i32 0
  store i64 1, i64* %_101
  store { i64, [0 x i64] }* %_array100, { i64, [0 x i64] }** %_x109
  store i64 0, i64* %_ans110
  store i64 0, i64* %_i111
  br label %_cond127
_cond127:
  %_id_i112 = load i64, i64* %_i111
  %_bop113 = icmp slt i64 %_id_i112, 4
  br i1 %_bop113, label %_if128, label %_merge126
_if128:
  %_id_x114 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x109
  %_id_i115 = load i64, i64* %_i111
  %_index_pointer117 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x114, i32 0, i32 1, i64 %_id_i115
  %_index_value116 = load i64, i64* %_index_pointer117
  %_id_x118 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x109
  %_id_i119 = load i64, i64* %_i111
  %_index_pointer121 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x118, i32 0, i32 1, i64 %_id_i119
  %_index_value120 = load i64, i64* %_index_pointer121
  %_unop122 = xor i64 %_index_value120, -1
  %_bop123 = mul i64 %_index_value116, %_unop122
  store i64 %_bop123, i64* %_ans110
  %_id_i124 = load i64, i64* %_i111
  %_bop125 = add i64 %_id_i124, 1
  store i64 %_bop125, i64* %_i111
  br label %_cond127
_merge126:
  %_id_ans129 = load i64, i64* %_ans110
  ret i64 %_id_ans129
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
