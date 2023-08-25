; generated from: hw4programs/fact.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @fact(i64 %x) {
  %_x619 = alloca i64
  %_620 = alloca i64
  store i64 %x, i64* %_x619
  store i64 1, i64* %_620
  br label %_start628
_start628:
  %_id_x621 = load i64, i64* %_x619
  %_622 = icmp sgt i64 %_id_x621, 0
  br i1 %_622, label %_body629, label %_else630
_body629:
  %_id_x624 = load i64, i64* %_x619
  %_id_acc623 = load i64, i64* %_620
  %_625 = mul i64 %_id_acc623, %_id_x624
  store i64 %_625, i64* %_620
  %_id_x626 = load i64, i64* %_x619
  %_627 = sub i64 %_id_x626, 1
  store i64 %_627, i64* %_x619
  br label %_start628
_else630:
  %_id_acc631 = load i64, i64* %_620
  ret i64 %_id_acc631
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc614 = alloca i64
  %_argv615 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc614
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv615
  %_616 = call i64 @fact(i64 5)
  %_617 = call i8* @string_of_int(i64 %_616)
  call void @print_string(i8* %_617)
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
