; generated from: hw4programs/josh_joyce_test.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr1 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr2 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }

define i64 @arrcheck({ i64, [0 x i64] }* %ar1, { i64, [0 x i64] }* %ar2, i64 %len) {
  %_ar15108 = alloca { i64, [0 x i64] }*
  %_ar25109 = alloca { i64, [0 x i64] }*
  %_len5110 = alloca i64
  %_5111 = alloca i64
  %_5112 = alloca i64
  store { i64, [0 x i64] }* %ar1, { i64, [0 x i64] }** %_ar15108
  store { i64, [0 x i64] }* %ar2, { i64, [0 x i64] }** %_ar25109
  store i64 %len, i64* %_len5110
  store i64 0, i64* %_5111
  store i64 0, i64* %_5112
  br label %_cond5132
_cond5132:
  %_id_i5113 = load i64, i64* %_5112
  %_id_len5114 = load i64, i64* %_len5110
  %_bop5115 = icmp slt i64 %_id_i5113, %_id_len5114
  br i1 %_bop5115, label %_if5131, label %_merge5133
_if5131:
  br label %_begin_if5125
_begin_if5125:
  %_id_ar15116 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar15108
  %_id_i5117 = load i64, i64* %_5112
  %_index_pointer5119 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_ar15116, i32 0, i32 1, i64 %_id_i5117
  %_index_value5118 = load i64, i64* %_index_pointer5119
  %_id_ar25120 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar25109
  %_id_i5121 = load i64, i64* %_5112
  %_index_pointer5123 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_ar25120, i32 0, i32 1, i64 %_id_i5121
  %_index_value5122 = load i64, i64* %_index_pointer5123
  %_bop5124 = icmp ne i64 %_index_value5118, %_index_value5122
  br i1 %_bop5124, label %_then_branch5126, label %_else_branch5127
_then_branch5126:
  store i64 1, i64* %_5111
  br label %_end_if5128
_else_branch5127:
  br label %_end_if5128
_end_if5128:
  %_id_i5129 = load i64, i64* %_5112
  %_bop5130 = add i64 %_id_i5129, 1
  store i64 %_bop5130, i64* %_5112
  br label %_cond5132
_merge5133:
  %_id_val5134 = load i64, i64* %_5111
  ret i64 %_id_val5134
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5096 = alloca i64
  %_argv5097 = alloca { i64, [0 x i8*] }*
  %_5098 = alloca i64
  store i64 %argc, i64* %_argc5096
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5097
  store i64 1, i64* %_5098
  br label %_begin_if5103
_begin_if5103:
  %_id_arr15099 = bitcast { i64, [4 x i64] }* @arr1 to { i64, [0 x i64] }*
  %_id_arr25100 = bitcast { i64, [4 x i64] }* @arr2 to { i64, [0 x i64] }*
  %_5101 = call i64 @arrcheck({ i64, [0 x i64] }* %_id_arr15099, { i64, [0 x i64] }* %_id_arr25100, i64 4)
  %_bop5102 = icmp eq i64 %_5101, 1
  br i1 %_bop5102, label %_then_branch5104, label %_else_branch5105
_then_branch5104:
  store i64 0, i64* %_5098
  br label %_end_if5106
_else_branch5105:
  br label %_end_if5106
_end_if5106:
  %_id_val5107 = load i64, i64* %_5098
  ret i64 %_id_val5107
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
