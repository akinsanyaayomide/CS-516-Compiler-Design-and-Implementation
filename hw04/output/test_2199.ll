; generated from: hw4programs/run2.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_x887 = alloca i64
  %_y888 = alloca i64
  %_889 = alloca i64
  store i64 %x, i64* %_x887
  store i64 %y, i64* %_y888
  store i64 0, i64* %_889
  br label %_start900
_start900:
  %_id_x890 = load i64, i64* %_x887
  %_891 = icmp sge i64 %_id_x890, 1
  br i1 %_891, label %_then901, label %_else902
_then901:
  %_id_x892 = load i64, i64* %_x887
  %_893 = sub i64 %_id_x892, 1
  %_id_y894 = load i64, i64* %_y888
  %_895 = call i64 @f(i64 %_893, i64 %_id_y894)
  %_896 = add i64 1, %_895
  store i64 %_896, i64* %_889
  br label %_post903
_else902:
  %_id_y898 = load i64, i64* %_y888
  %_id_x897 = load i64, i64* %_x887
  %_899 = add i64 %_id_x897, %_id_y898
  store i64 %_899, i64* %_889
  br label %_post903
_post903:
  %_id_r904 = load i64, i64* %_889
  ret i64 %_id_r904
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc878 = alloca i64
  %_argv879 = alloca { i64, [0 x i8*] }*
  %_880 = alloca i64
  %_881 = alloca i64
  store i64 %argc, i64* %_argc878
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv879
  store i64 3, i64* %_880
  store i64 3, i64* %_881
  %_id_i885 = load i64, i64* @i
  %_id_x882 = load i64, i64* %_880
  %_id_y883 = load i64, i64* %_881
  %_884 = call i64 @f(i64 %_id_x882, i64 %_id_y883)
  %_886 = add i64 %_884, %_id_i885
  ret i64 %_886
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