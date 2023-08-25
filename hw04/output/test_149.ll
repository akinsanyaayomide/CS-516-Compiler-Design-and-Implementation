; generated from: hw4programs/fact.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @fact(i64 %x) {
  %_x769 = alloca i64
  %_770 = alloca i64
  store i64 %x, i64* %_x769
  store i64 1, i64* %_770
  br label %_start778
_start778:
  %_id_x771 = load i64, i64* %_x769
  %_772 = icmp sgt i64 %_id_x771, 0
  br i1 %_772, label %_body779, label %_else780
_body779:
  %_id_x774 = load i64, i64* %_x769
  %_id_acc773 = load i64, i64* %_770
  %_775 = mul i64 %_id_acc773, %_id_x774
  store i64 %_775, i64* %_770
  %_id_x776 = load i64, i64* %_x769
  %_777 = sub i64 %_id_x776, 1
  store i64 %_777, i64* %_x769
  br label %_start778
_else780:
  %_id_acc781 = load i64, i64* %_770
  ret i64 %_id_acc781
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc764 = alloca i64
  %_argv765 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc764
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv765
  %_766 = call i64 @fact(i64 5)
  %_767 = call i8* @string_of_int(i64 %_766)
  call void @print_string(i8* %_767)
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
