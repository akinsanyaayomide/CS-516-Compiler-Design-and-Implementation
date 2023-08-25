; generated from: hw4programs/fact.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @fact(i64 %x) {
  %_x865 = alloca i64
  %_866 = alloca i64
  store i64 %x, i64* %_x865
  store i64 1, i64* %_866
  br label %_cond875
_cond875:
  %_id_x867 = load i64, i64* %_x865
  %_bop868 = icmp sgt i64 %_id_x867, 0
  br i1 %_bop868, label %_if874, label %_merge876
_if874:
  %_id_acc869 = load i64, i64* %_866
  %_id_x870 = load i64, i64* %_x865
  %_bop871 = mul i64 %_id_acc869, %_id_x870
  store i64 %_bop871, i64* %_866
  %_id_x872 = load i64, i64* %_x865
  %_bop873 = sub i64 %_id_x872, 1
  store i64 %_bop873, i64* %_x865
  br label %_cond875
_merge876:
  %_id_acc877 = load i64, i64* %_866
  ret i64 %_id_acc877
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc860 = alloca i64
  %_argv861 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc860
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv861
  %_862 = call i64 @fact(i64 5)
  %_863 = call i8* @string_of_int(i64 %_862)
  call void @print_string(i8* %_863)
  ret i64 0
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
