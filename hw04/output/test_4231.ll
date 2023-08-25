; generated from: hw4programs/run2.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_x966 = alloca i64
  %_y967 = alloca i64
  %_968 = alloca i64
  store i64 %x, i64* %_x966
  store i64 %y, i64* %_y967
  store i64 0, i64* %_968
  br label %_begin_if979
_begin_if979:
  %_id_x969 = load i64, i64* %_x966
  %_bop970 = icmp sge i64 %_id_x969, 1
  br i1 %_bop970, label %_then_branch980, label %_else_branch981
_then_branch980:
  %_id_x971 = load i64, i64* %_x966
  %_bop972 = sub i64 %_id_x971, 1
  %_id_y973 = load i64, i64* %_y967
  %_974 = call i64 @f(i64 %_bop972, i64 %_id_y973)
  %_bop975 = add i64 1, %_974
  store i64 %_bop975, i64* %_968
  br label %_end_if982
_else_branch981:
  %_id_x976 = load i64, i64* %_x966
  %_id_y977 = load i64, i64* %_y967
  %_bop978 = add i64 %_id_x976, %_id_y977
  store i64 %_bop978, i64* %_968
  br label %_end_if982
_end_if982:
  %_id_r983 = load i64, i64* %_968
  ret i64 %_id_r983
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc957 = alloca i64
  %_argv958 = alloca { i64, [0 x i8*] }*
  %_959 = alloca i64
  %_960 = alloca i64
  store i64 %argc, i64* %_argc957
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv958
  store i64 3, i64* %_959
  store i64 3, i64* %_960
  %_id_x961 = load i64, i64* %_959
  %_id_y962 = load i64, i64* %_960
  %_963 = call i64 @f(i64 %_id_x961, i64 %_id_y962)
  %_id_i964 = load i64, i64* @i
  %_bop965 = add i64 %_963, %_id_i964
  ret i64 %_bop965
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
