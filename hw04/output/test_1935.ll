; generated from: hw4programs/fac.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f(i64 %i) {
  %_i1901 = alloca i64
  %_1902 = alloca i64
  store i64 %i, i64* %_i1901
  store i64 0, i64* %_1902
  br label %_start1910
_start1910:
  %_id_i1903 = load i64, i64* %_i1901
  %_1904 = icmp eq i64 %_id_i1903, 0
  br i1 %_1904, label %_then1911, label %_else1912
_then1911:
  store i64 1, i64* %_1902
  br label %_post1913
_else1912:
  %_id_i1906 = load i64, i64* %_i1901
  %_1907 = sub i64 %_id_i1906, 1
  %_1908 = call i64 @f(i64 %_1907)
  %_id_i1905 = load i64, i64* %_i1901
  %_1909 = mul i64 %_id_i1905, %_1908
  store i64 %_1909, i64* %_1902
  br label %_post1913
_post1913:
  %_id_r1914 = load i64, i64* %_1902
  ret i64 %_id_r1914
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1898 = alloca i64
  %_argv1899 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc1898
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1899
  %_1900 = call i64 @f(i64 5)
  ret i64 %_1900
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
