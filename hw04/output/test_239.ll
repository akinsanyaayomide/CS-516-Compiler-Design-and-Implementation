; generated from: hw4programs/run40.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 8

define i64 @f() {
  %_657 = alloca i64
  store i64 0, i64* %_657
  %_658 = call i64 @g()
  store i64 %_658, i64* %_657
  %_id_j659 = load i64, i64* %_657
  ret i64 %_id_j659
}

define i64 @g() {
  %_id_i656 = load i64, i64* @i
  ret i64 %_id_i656
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc653 = alloca i64
  %_argv654 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc653
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv654
  %_655 = call i64 @f()
  ret i64 %_655
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
