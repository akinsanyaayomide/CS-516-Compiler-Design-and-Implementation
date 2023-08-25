; generated from: hw4programs/run2.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_x887 = alloca i64
  %_y888 = alloca i64
  %_r889 = alloca i64
  store i64 %x, i64* %_x887
  store i64 %y, i64* %_y888
  store i64 0, i64* %_r889
  br label %_begin_if903
_begin_if903:
  %_id_x890 = load i64, i64* %_x887
  %_bop891 = icmp sge i64 %_id_x890, 1
  br i1 %_bop891, label %_then_branch902, label %_else_branch901
_then_branch902:
  %_id_x895 = load i64, i64* %_x887
  %_bop896 = sub i64 %_id_x895, 1
  %_id_y897 = load i64, i64* %_y888
  %_898 = call i64 @f(i64 %_bop896, i64 %_id_y897)
  %_bop899 = add i64 1, %_898
  store i64 %_bop899, i64* %_r889
  br label %_end_if900
_else_branch901:
  %_id_x892 = load i64, i64* %_x887
  %_id_y893 = load i64, i64* %_y888
  %_bop894 = add i64 %_id_x892, %_id_y893
  store i64 %_bop894, i64* %_r889
  br label %_end_if900
_end_if900:
  %_id_r904 = load i64, i64* %_r889
  ret i64 %_id_r904
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc878 = alloca i64
  %_argv879 = alloca { i64, [0 x i8*] }*
  %_x880 = alloca i64
  %_y881 = alloca i64
  store i64 %argc, i64* %_argc878
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv879
  store i64 3, i64* %_x880
  store i64 3, i64* %_y881
  %_id_x882 = load i64, i64* %_x880
  %_id_y883 = load i64, i64* %_y881
  %_884 = call i64 @f(i64 %_id_x882, i64 %_id_y883)
  %_id_i885 = load i64, i64* @i
  %_bop886 = add i64 %_884, %_id_i885
  ret i64 %_bop886
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
