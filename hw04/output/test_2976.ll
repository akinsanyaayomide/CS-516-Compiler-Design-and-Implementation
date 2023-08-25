; generated from: hw4programs/easyrun9.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc93 = alloca i64
  %_argv94 = alloca { i64, [0 x i8*] }*
  %_95 = alloca { i64, [0 x i64] }*
  %_106 = alloca i64
  %_107 = alloca i64
  store i64 %argc, i64* %_argc93
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv94
  %_raw_array96 = call i64* @oat_alloc_array(i64 4)
  %_array97 = bitcast i64* %_raw_array96 to { i64, [0 x i64] }*
  %_104 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array97, i32 0, i32 1, i32 3
  store i64 4, i64* %_104
  %_102 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array97, i32 0, i32 1, i32 2
  store i64 3, i64* %_102
  %_100 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array97, i32 0, i32 1, i32 1
  store i64 2, i64* %_100
  %_98 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array97, i32 0, i32 1, i32 0
  store i64 1, i64* %_98
  store { i64, [0 x i64] }* %_array97, { i64, [0 x i64] }** %_95
  store i64 0, i64* %_106
  store i64 0, i64* %_107
  br label %_cond123
_cond123:
  %_id_i108 = load i64, i64* %_107
  %_109 = icmp slt i64 %_id_i108, 4
  br i1 %_109, label %_if122, label %_merge124
_if122:
  %_id_x114 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_95
  %_id_i115 = load i64, i64* %_107
  %_index_pointer116 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x114, i32 0, i32 1, i64 %_id_i115
  %_index_value117 = load i64, i64* %_index_pointer116
  %_unop118 = xor i64 %_index_value117, -1
  %_id_x110 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_95
  %_id_i111 = load i64, i64* %_107
  %_index_pointer112 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x110, i32 0, i32 1, i64 %_id_i111
  %_index_value113 = load i64, i64* %_index_pointer112
  %_119 = mul i64 %_index_value113, %_unop118
  store i64 %_119, i64* %_106
  %_id_i120 = load i64, i64* %_107
  %_121 = add i64 %_id_i120, 1
  store i64 %_121, i64* %_107
  br label %_cond123
_merge124:
  %_id_ans125 = load i64, i64* %_106
  ret i64 %_id_ans125
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
