; generated from: hw4programs/easyrun9.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc99 = alloca i64
  %_argv100 = alloca { i64, [0 x i8*] }*
  %_101 = alloca { i64, [0 x i64] }*
  %_112 = alloca i64
  %_113 = alloca i64
  store i64 %argc, i64* %_argc99
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv100
  %_raw_array102 = call i64* @oat_alloc_array(i64 4)
  %_array103 = bitcast i64* %_raw_array102 to { i64, [0 x i64] }*
  %_110 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array103, i32 0, i32 1, i32 3
  store i64 4, i64* %_110
  %_108 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array103, i32 0, i32 1, i32 2
  store i64 3, i64* %_108
  %_106 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array103, i32 0, i32 1, i32 1
  store i64 2, i64* %_106
  %_104 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array103, i32 0, i32 1, i32 0
  store i64 1, i64* %_104
  store { i64, [0 x i64] }* %_array103, { i64, [0 x i64] }** %_101
  store i64 0, i64* %_112
  store i64 0, i64* %_113
  br label %_start129
_start129:
  %_id_i114 = load i64, i64* %_113
  %_115 = icmp slt i64 %_id_i114, 4
  br i1 %_115, label %_body130, label %_else131
_body130:
  %_id_x120 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_101
  %_id_i121 = load i64, i64* %_113
  %_index_pointer122 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x120, i32 0, i32 1, i64 %_id_i121
  %_index_value123 = load i64, i64* %_index_pointer122
  %_124 = mul i64 %_index_value123, -1
  %_125 = add i64 %_124, -1
  %_id_x116 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_101
  %_id_i117 = load i64, i64* %_113
  %_index_pointer118 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_x116, i32 0, i32 1, i64 %_id_i117
  %_index_value119 = load i64, i64* %_index_pointer118
  %_126 = mul i64 %_index_value119, %_125
  store i64 %_126, i64* %_112
  %_id_i127 = load i64, i64* %_113
  %_128 = add i64 %_id_i127, 1
  store i64 %_128, i64* %_113
  br label %_start129
_else131:
  %_id_ans132 = load i64, i64* %_112
  ret i64 %_id_ans132
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
