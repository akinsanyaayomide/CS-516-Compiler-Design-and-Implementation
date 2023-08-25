; generated from: hw4programs/run2.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_x860 = alloca i64
  %_y861 = alloca i64
  %_862 = alloca i64
  store i64 %x, i64* %_x860
  store i64 %y, i64* %_y861
  store i64 0, i64* %_862
  br label %_start873
_start873:
  %_id_x863 = load i64, i64* %_x860
  %_864 = icmp sge i64 %_id_x863, 1
  br i1 %_864, label %_then874, label %_else875
_then874:
  %_id_x865 = load i64, i64* %_x860
  %_866 = sub i64 %_id_x865, 1
  %_id_y867 = load i64, i64* %_y861
  %_868 = call i64 @f(i64 %_866, i64 %_id_y867)
  %_869 = add i64 1, %_868
  store i64 %_869, i64* %_862
  br label %_post876
_else875:
  %_id_y871 = load i64, i64* %_y861
  %_id_x870 = load i64, i64* %_x860
  %_872 = add i64 %_id_x870, %_id_y871
  store i64 %_872, i64* %_862
  br label %_post876
_post876:
  %_id_r877 = load i64, i64* %_862
  ret i64 %_id_r877
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc851 = alloca i64
  %_argv852 = alloca { i64, [0 x i8*] }*
  %_853 = alloca i64
  %_854 = alloca i64
  store i64 %argc, i64* %_argc851
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv852
  store i64 3, i64* %_853
  store i64 3, i64* %_854
  %_id_i858 = load i64, i64* @i
  %_id_x855 = load i64, i64* %_853
  %_id_y856 = load i64, i64* %_854
  %_857 = call i64 @f(i64 %_id_x855, i64 %_id_y856)
  %_859 = add i64 %_857, %_id_i858
  ret i64 %_859
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
