; generated from: hw4programs/run2.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_x1011 = alloca i64
  %_y1012 = alloca i64
  %_1013 = alloca i64
  store i64 %x, i64* %_x1011
  store i64 %y, i64* %_y1012
  store i64 0, i64* %_1013
  br label %_begin_if1024
_begin_if1024:
  %_id_x1014 = load i64, i64* %_x1011
  %_bop1015 = icmp sge i64 %_id_x1014, 1
  br i1 %_bop1015, label %_then_branch1025, label %_else_branch1026
_then_branch1025:
  %_id_x1016 = load i64, i64* %_x1011
  %_bop1017 = sub i64 %_id_x1016, 1
  %_id_y1018 = load i64, i64* %_y1012
  %_1019 = call i64 @f(i64 %_bop1017, i64 %_id_y1018)
  %_bop1020 = add i64 1, %_1019
  store i64 %_bop1020, i64* %_1013
  br label %_end_if1027
_else_branch1026:
  %_id_x1021 = load i64, i64* %_x1011
  %_id_y1022 = load i64, i64* %_y1012
  %_bop1023 = add i64 %_id_x1021, %_id_y1022
  store i64 %_bop1023, i64* %_1013
  br label %_end_if1027
_end_if1027:
  %_id_r1028 = load i64, i64* %_1013
  ret i64 %_id_r1028
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1002 = alloca i64
  %_argv1003 = alloca { i64, [0 x i8*] }*
  %_1004 = alloca i64
  %_1005 = alloca i64
  store i64 %argc, i64* %_argc1002
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1003
  store i64 3, i64* %_1004
  store i64 3, i64* %_1005
  %_id_x1006 = load i64, i64* %_1004
  %_id_y1007 = load i64, i64* %_1005
  %_1008 = call i64 @f(i64 %_id_x1006, i64 %_id_y1007)
  %_id_i1009 = load i64, i64* @i
  %_bop1010 = add i64 %_1008, %_id_i1009
  ret i64 %_bop1010
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
