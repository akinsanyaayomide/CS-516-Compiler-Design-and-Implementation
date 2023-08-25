; generated from: hw4programs/path3.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc213 = alloca i64
  %_args214 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc213
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args214
  %_id_arr215 = bitcast { i64, [4 x i64] }* @arr to { i64, [0 x i64] }*
  %_index_pointer216 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr215, i32 0, i32 1, i32 2
  %_index_value217 = load i64, i64* %_index_pointer216
  ret i64 %_index_value217
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
