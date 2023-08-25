; generated from: hw4programs/run2.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_x848 = alloca i64
  %_y849 = alloca i64
  %_850 = alloca i64
  store i64 %x, i64* %_x848
  store i64 %y, i64* %_y849
  store i64 0, i64* %_850
  %_id_x851 = load i64, i64* %_x848
  %_852 = icmp sge i64 %_id_x851, 1
  br i1 %_852, label %_if861, label %_else862
_if861:
  %_id_x853 = load i64, i64* %_x848
  %_854 = sub i64 %_id_x853, 1
  %_id_y855 = load i64, i64* %_y849
  %_856 = call i64 @f(i64 %_854, i64 %_id_y855)
  %_857 = add i64 1, %_856
  store i64 %_857, i64* %_850
  br label %_merge863
_else862:
  %_id_y859 = load i64, i64* %_y849
  %_id_x858 = load i64, i64* %_x848
  %_860 = add i64 %_id_x858, %_id_y859
  store i64 %_860, i64* %_850
  br label %_merge863
_merge863:
  %_id_r864 = load i64, i64* %_850
  ret i64 %_id_r864
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc839 = alloca i64
  %_argv840 = alloca { i64, [0 x i8*] }*
  %_841 = alloca i64
  %_842 = alloca i64
  store i64 %argc, i64* %_argc839
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv840
  store i64 3, i64* %_841
  store i64 3, i64* %_842
  %_id_i846 = load i64, i64* @i
  %_id_x843 = load i64, i64* %_841
  %_id_y844 = load i64, i64* %_842
  %_845 = call i64 @f(i64 %_id_x843, i64 %_id_y844)
  %_847 = add i64 %_845, %_id_i846
  ret i64 %_847
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
