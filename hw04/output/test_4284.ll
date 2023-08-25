; generated from: hw4programs/gcd.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @gcd(i64 %a, i64 %b) {
  %_a5157 = alloca i64
  %_b5158 = alloca i64
  %_5161 = alloca i64
  store i64 %a, i64* %_a5157
  store i64 %b, i64* %_b5158
  br label %_cond5168
_cond5168:
  %_id_b5159 = load i64, i64* %_b5158
  %_bop5160 = icmp ne i64 %_id_b5159, 0
  br i1 %_bop5160, label %_if5167, label %_merge5169
_if5167:
  %_id_b5162 = load i64, i64* %_b5158
  store i64 %_id_b5162, i64* %_5161
  %_id_a5163 = load i64, i64* %_a5157
  %_id_b5164 = load i64, i64* %_b5158
  %_5165 = call i64 @mod(i64 %_id_a5163, i64 %_id_b5164)
  store i64 %_5165, i64* %_b5158
  %_id_t5166 = load i64, i64* %_5161
  store i64 %_id_t5166, i64* %_a5157
  br label %_cond5168
_merge5169:
  %_id_a5170 = load i64, i64* %_a5157
  ret i64 %_id_a5170
}

define i64 @mod(i64 %a, i64 %b) {
  %_a5142 = alloca i64
  %_b5143 = alloca i64
  %_5144 = alloca i64
  store i64 %a, i64* %_a5142
  store i64 %b, i64* %_b5143
  %_id_a5145 = load i64, i64* %_a5142
  store i64 %_id_a5145, i64* %_5144
  br label %_cond5154
_cond5154:
  %_id_t5146 = load i64, i64* %_5144
  %_id_b5147 = load i64, i64* %_b5143
  %_bop5148 = sub i64 %_id_t5146, %_id_b5147
  %_bop5149 = icmp sge i64 %_bop5148, 0
  br i1 %_bop5149, label %_if5153, label %_merge5155
_if5153:
  %_id_t5150 = load i64, i64* %_5144
  %_id_b5151 = load i64, i64* %_b5143
  %_bop5152 = sub i64 %_id_t5150, %_id_b5151
  store i64 %_bop5152, i64* %_5144
  br label %_cond5154
_merge5155:
  %_id_t5156 = load i64, i64* %_5144
  ret i64 %_id_t5156
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5135 = alloca i64
  %_argv5136 = alloca { i64, [0 x i8*] }*
  %_5137 = alloca i64
  %_5138 = alloca i64
  store i64 %argc, i64* %_argc5135
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5136
  store i64 64, i64* %_5137
  store i64 48, i64* %_5138
  %_id_a5139 = load i64, i64* %_5137
  %_id_b5140 = load i64, i64* %_5138
  %_5141 = call i64 @gcd(i64 %_id_a5139, i64 %_id_b5140)
  ret i64 %_5141
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
