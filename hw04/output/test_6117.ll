; generated from: hw4programs/fact.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @fact(i64 %x) {
  %_x796 = alloca i64
  %_acc797 = alloca i64
  store i64 %x, i64* %_x796
  store i64 1, i64* %_acc797
  br label %_cond806
_cond806:
  %_id_x798 = load i64, i64* %_x796
  %_bop799 = icmp sgt i64 %_id_x798, 0
  br i1 %_bop799, label %_if807, label %_merge805
_if807:
  %_id_acc800 = load i64, i64* %_acc797
  %_id_x801 = load i64, i64* %_x796
  %_bop802 = mul i64 %_id_acc800, %_id_x801
  store i64 %_bop802, i64* %_acc797
  %_id_x803 = load i64, i64* %_x796
  %_bop804 = sub i64 %_id_x803, 1
  store i64 %_bop804, i64* %_x796
  br label %_cond806
_merge805:
  %_id_acc808 = load i64, i64* %_acc797
  ret i64 %_id_acc808
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc791 = alloca i64
  %_argv792 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc791
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv792
  %_793 = call i64 @fact(i64 5)
  %_794 = call i8* @string_of_int(i64 %_793)
  call void @print_string(i8* %_794)
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
