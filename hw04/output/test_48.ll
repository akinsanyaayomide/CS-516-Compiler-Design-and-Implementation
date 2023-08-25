; generated from: hw4programs/run2.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_x891 = alloca i64
  %_y892 = alloca i64
  %_893 = alloca i64
  store i64 %x, i64* %_x891
  store i64 %y, i64* %_y892
  store i64 0, i64* %_893
  br label %_start904
_start904:
  %_id_x894 = load i64, i64* %_x891
  %_895 = icmp sge i64 %_id_x894, 1
  br i1 %_895, label %_then905, label %_else906
_then905:
  %_id_x896 = load i64, i64* %_x891
  %_897 = sub i64 %_id_x896, 1
  %_id_y898 = load i64, i64* %_y892
  %_899 = call i64 @f(i64 %_897, i64 %_id_y898)
  %_900 = add i64 1, %_899
  store i64 %_900, i64* %_893
  br label %_post907
_else906:
  %_id_y902 = load i64, i64* %_y892
  %_id_x901 = load i64, i64* %_x891
  %_903 = add i64 %_id_x901, %_id_y902
  store i64 %_903, i64* %_893
  br label %_post907
_post907:
  %_id_r908 = load i64, i64* %_893
  ret i64 %_id_r908
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc882 = alloca i64
  %_argv883 = alloca { i64, [0 x i8*] }*
  %_884 = alloca i64
  %_885 = alloca i64
  store i64 %argc, i64* %_argc882
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv883
  store i64 3, i64* %_884
  store i64 3, i64* %_885
  %_id_i889 = load i64, i64* @i
  %_id_x886 = load i64, i64* %_884
  %_id_y887 = load i64, i64* %_885
  %_888 = call i64 @f(i64 %_id_x886, i64 %_id_y887)
  %_890 = add i64 %_888, %_id_i889
  ret i64 %_890
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
