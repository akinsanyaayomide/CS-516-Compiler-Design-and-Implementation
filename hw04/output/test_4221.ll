; generated from: hw4programs/run39.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f1(i64 %i) {
  %_i700 = alloca i64
  store i64 %i, i64* %_i700
  %_id_i701 = load i64, i64* %_i700
  %_702 = call i64 @f2(i64 %_id_i701)
  ret i64 %_702
}

define i64 @f2(i64 %i) {
  %_i697 = alloca i64
  store i64 %i, i64* %_i697
  %_id_i698 = load i64, i64* %_i697
  %_699 = call i64 @f3(i64 %_id_i698)
  ret i64 %_699
}

define i64 @f3(i64 %i) {
  %_i694 = alloca i64
  store i64 %i, i64* %_i694
  %_id_i695 = load i64, i64* %_i694
  %_696 = call i64 @f4(i64 %_id_i695)
  ret i64 %_696
}

define i64 @f4(i64 %i) {
  %_i691 = alloca i64
  store i64 %i, i64* %_i691
  %_id_i692 = load i64, i64* %_i691
  %_693 = call i64 @f5(i64 %_id_i692)
  ret i64 %_693
}

define i64 @f5(i64 %i) {
  %_i688 = alloca i64
  store i64 %i, i64* %_i688
  %_id_i689 = load i64, i64* %_i688
  %_690 = call i64 @f6(i64 %_id_i689)
  ret i64 %_690
}

define i64 @f6(i64 %i) {
  %_i685 = alloca i64
  store i64 %i, i64* %_i685
  %_id_i686 = load i64, i64* %_i685
  %_687 = call i64 @f7(i64 %_id_i686)
  ret i64 %_687
}

define i64 @f7(i64 %i) {
  %_i682 = alloca i64
  store i64 %i, i64* %_i682
  %_id_i683 = load i64, i64* %_i682
  %_684 = call i64 @f8(i64 %_id_i683)
  ret i64 %_684
}

define i64 @f8(i64 %i) {
  %_i679 = alloca i64
  store i64 %i, i64* %_i679
  %_id_i680 = load i64, i64* %_i679
  %_681 = call i64 @f9(i64 %_id_i680)
  ret i64 %_681
}

define i64 @f9(i64 %i) {
  %_i677 = alloca i64
  store i64 %i, i64* %_i677
  %_id_i678 = load i64, i64* %_i677
  ret i64 %_id_i678
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc673 = alloca i64
  %_argv674 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc673
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv674
  %_id_argc675 = load i64, i64* %_argc673
  %_676 = call i64 @f1(i64 %_id_argc675)
  ret i64 %_676
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
