; generated from: hw4programs/run39.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f1(i64 %i) {
  %_i646 = alloca i64
  store i64 %i, i64* %_i646
  %_id_i647 = load i64, i64* %_i646
  %_648 = call i64 @f2(i64 %_id_i647)
  ret i64 %_648
}

define i64 @f2(i64 %i) {
  %_i643 = alloca i64
  store i64 %i, i64* %_i643
  %_id_i644 = load i64, i64* %_i643
  %_645 = call i64 @f3(i64 %_id_i644)
  ret i64 %_645
}

define i64 @f3(i64 %i) {
  %_i640 = alloca i64
  store i64 %i, i64* %_i640
  %_id_i641 = load i64, i64* %_i640
  %_642 = call i64 @f4(i64 %_id_i641)
  ret i64 %_642
}

define i64 @f4(i64 %i) {
  %_i637 = alloca i64
  store i64 %i, i64* %_i637
  %_id_i638 = load i64, i64* %_i637
  %_639 = call i64 @f5(i64 %_id_i638)
  ret i64 %_639
}

define i64 @f5(i64 %i) {
  %_i634 = alloca i64
  store i64 %i, i64* %_i634
  %_id_i635 = load i64, i64* %_i634
  %_636 = call i64 @f6(i64 %_id_i635)
  ret i64 %_636
}

define i64 @f6(i64 %i) {
  %_i631 = alloca i64
  store i64 %i, i64* %_i631
  %_id_i632 = load i64, i64* %_i631
  %_633 = call i64 @f7(i64 %_id_i632)
  ret i64 %_633
}

define i64 @f7(i64 %i) {
  %_i628 = alloca i64
  store i64 %i, i64* %_i628
  %_id_i629 = load i64, i64* %_i628
  %_630 = call i64 @f8(i64 %_id_i629)
  ret i64 %_630
}

define i64 @f8(i64 %i) {
  %_i625 = alloca i64
  store i64 %i, i64* %_i625
  %_id_i626 = load i64, i64* %_i625
  %_627 = call i64 @f9(i64 %_id_i626)
  ret i64 %_627
}

define i64 @f9(i64 %i) {
  %_i623 = alloca i64
  store i64 %i, i64* %_i623
  %_id_i624 = load i64, i64* %_i623
  ret i64 %_id_i624
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc619 = alloca i64
  %_argv620 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc619
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv620
  %_id_argc621 = load i64, i64* %_argc619
  %_622 = call i64 @f1(i64 %_id_argc621)
  ret i64 %_622
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
