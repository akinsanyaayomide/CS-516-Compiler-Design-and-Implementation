; generated from: hw4programs/run39.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f1(i64 %i) {
  %_i650 = alloca i64
  store i64 %i, i64* %_i650
  %_id_i651 = load i64, i64* %_i650
  %_652 = call i64 @f2(i64 %_id_i651)
  ret i64 %_652
}

define i64 @f2(i64 %i) {
  %_i647 = alloca i64
  store i64 %i, i64* %_i647
  %_id_i648 = load i64, i64* %_i647
  %_649 = call i64 @f3(i64 %_id_i648)
  ret i64 %_649
}

define i64 @f3(i64 %i) {
  %_i644 = alloca i64
  store i64 %i, i64* %_i644
  %_id_i645 = load i64, i64* %_i644
  %_646 = call i64 @f4(i64 %_id_i645)
  ret i64 %_646
}

define i64 @f4(i64 %i) {
  %_i641 = alloca i64
  store i64 %i, i64* %_i641
  %_id_i642 = load i64, i64* %_i641
  %_643 = call i64 @f5(i64 %_id_i642)
  ret i64 %_643
}

define i64 @f5(i64 %i) {
  %_i638 = alloca i64
  store i64 %i, i64* %_i638
  %_id_i639 = load i64, i64* %_i638
  %_640 = call i64 @f6(i64 %_id_i639)
  ret i64 %_640
}

define i64 @f6(i64 %i) {
  %_i635 = alloca i64
  store i64 %i, i64* %_i635
  %_id_i636 = load i64, i64* %_i635
  %_637 = call i64 @f7(i64 %_id_i636)
  ret i64 %_637
}

define i64 @f7(i64 %i) {
  %_i632 = alloca i64
  store i64 %i, i64* %_i632
  %_id_i633 = load i64, i64* %_i632
  %_634 = call i64 @f8(i64 %_id_i633)
  ret i64 %_634
}

define i64 @f8(i64 %i) {
  %_i629 = alloca i64
  store i64 %i, i64* %_i629
  %_id_i630 = load i64, i64* %_i629
  %_631 = call i64 @f9(i64 %_id_i630)
  ret i64 %_631
}

define i64 @f9(i64 %i) {
  %_i627 = alloca i64
  store i64 %i, i64* %_i627
  %_id_i628 = load i64, i64* %_i627
  ret i64 %_id_i628
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc623 = alloca i64
  %_argv624 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc623
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv624
  %_id_argc625 = load i64, i64* %_argc623
  %_626 = call i64 @f1(i64 %_id_argc625)
  ret i64 %_626
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
