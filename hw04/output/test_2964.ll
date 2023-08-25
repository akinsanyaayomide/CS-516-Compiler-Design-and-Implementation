; generated from: hw4programs/josh_joyce_test.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr1 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr2 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }

define i64 @arrcheck({ i64, [0 x i64] }* %ar1, { i64, [0 x i64] }* %ar2, i64 %len) {
  %_ar13142 = alloca { i64, [0 x i64] }*
  %_ar23143 = alloca { i64, [0 x i64] }*
  %_len3144 = alloca i64
  %_3145 = alloca i64
  %_3146 = alloca i64
  store { i64, [0 x i64] }* %ar1, { i64, [0 x i64] }** %_ar13142
  store { i64, [0 x i64] }* %ar2, { i64, [0 x i64] }** %_ar23143
  store i64 %len, i64* %_len3144
  store i64 0, i64* %_3145
  store i64 0, i64* %_3146
  br label %_cond3164
_cond3164:
  %_id_len3148 = load i64, i64* %_len3144
  %_id_i3147 = load i64, i64* %_3146
  %_3149 = icmp slt i64 %_id_i3147, %_id_len3148
  br i1 %_3149, label %_if3163, label %_merge3165
_if3163:
  %_id_ar23154 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar23143
  %_id_i3155 = load i64, i64* %_3146
  %_index_pointer3156 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_ar23154, i32 0, i32 1, i64 %_id_i3155
  %_index_value3157 = load i64, i64* %_index_pointer3156
  %_id_ar13150 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar13142
  %_id_i3151 = load i64, i64* %_3146
  %_index_pointer3152 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_ar13150, i32 0, i32 1, i64 %_id_i3151
  %_index_value3153 = load i64, i64* %_index_pointer3152
  %_3158 = icmp ne i64 %_index_value3153, %_index_value3157
  br i1 %_3158, label %_if3159, label %_merge3160
_if3159:
  store i64 1, i64* %_3145
  br label %_merge3160
_merge3160:
  %_id_i3161 = load i64, i64* %_3146
  %_3162 = add i64 %_id_i3161, 1
  store i64 %_3162, i64* %_3146
  br label %_cond3164
_merge3165:
  %_id_val3166 = load i64, i64* %_3145
  ret i64 %_id_val3166
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3132 = alloca i64
  %_argv3133 = alloca { i64, [0 x i8*] }*
  %_3134 = alloca i64
  store i64 %argc, i64* %_argc3132
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3133
  store i64 1, i64* %_3134
  %_id_arr13135 = bitcast { i64, [4 x i64] }* @arr1 to { i64, [0 x i64] }*
  %_id_arr23136 = bitcast { i64, [4 x i64] }* @arr2 to { i64, [0 x i64] }*
  %_3137 = call i64 @arrcheck({ i64, [0 x i64] }* %_id_arr13135, { i64, [0 x i64] }* %_id_arr23136, i64 4)
  %_3138 = icmp eq i64 %_3137, 1
  br i1 %_3138, label %_if3139, label %_merge3140
_if3139:
  store i64 0, i64* %_3134
  br label %_merge3140
_merge3140:
  %_id_val3141 = load i64, i64* %_3134
  ret i64 %_id_val3141
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
