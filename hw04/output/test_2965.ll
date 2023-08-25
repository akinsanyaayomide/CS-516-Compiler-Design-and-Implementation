; generated from: hw4programs/gcd.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @gcd(i64 %a, i64 %b) {
  %_a3189 = alloca i64
  %_b3190 = alloca i64
  %_3193 = alloca i64
  store i64 %a, i64* %_a3189
  store i64 %b, i64* %_b3190
  br label %_cond3200
_cond3200:
  %_id_b3191 = load i64, i64* %_b3190
  %_3192 = icmp ne i64 %_id_b3191, 0
  br i1 %_3192, label %_if3199, label %_merge3201
_if3199:
  %_id_b3194 = load i64, i64* %_b3190
  store i64 %_id_b3194, i64* %_3193
  %_id_a3195 = load i64, i64* %_a3189
  %_id_b3196 = load i64, i64* %_b3190
  %_3197 = call i64 @mod(i64 %_id_a3195, i64 %_id_b3196)
  store i64 %_3197, i64* %_b3190
  %_id_t3198 = load i64, i64* %_3193
  store i64 %_id_t3198, i64* %_a3189
  br label %_cond3200
_merge3201:
  %_id_a3202 = load i64, i64* %_a3189
  ret i64 %_id_a3202
}

define i64 @mod(i64 %a, i64 %b) {
  %_a3174 = alloca i64
  %_b3175 = alloca i64
  %_3176 = alloca i64
  store i64 %a, i64* %_a3174
  store i64 %b, i64* %_b3175
  %_id_a3177 = load i64, i64* %_a3174
  store i64 %_id_a3177, i64* %_3176
  br label %_cond3186
_cond3186:
  %_id_b3179 = load i64, i64* %_b3175
  %_id_t3178 = load i64, i64* %_3176
  %_3180 = sub i64 %_id_t3178, %_id_b3179
  %_3181 = icmp sge i64 %_3180, 0
  br i1 %_3181, label %_if3185, label %_merge3187
_if3185:
  %_id_b3183 = load i64, i64* %_b3175
  %_id_t3182 = load i64, i64* %_3176
  %_3184 = sub i64 %_id_t3182, %_id_b3183
  store i64 %_3184, i64* %_3176
  br label %_cond3186
_merge3187:
  %_id_t3188 = load i64, i64* %_3176
  ret i64 %_id_t3188
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3167 = alloca i64
  %_argv3168 = alloca { i64, [0 x i8*] }*
  %_3169 = alloca i64
  %_3170 = alloca i64
  store i64 %argc, i64* %_argc3167
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3168
  store i64 64, i64* %_3169
  store i64 48, i64* %_3170
  %_id_a3171 = load i64, i64* %_3169
  %_id_b3172 = load i64, i64* %_3170
  %_3173 = call i64 @gcd(i64 %_id_a3171, i64 %_id_b3172)
  ret i64 %_3173
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
