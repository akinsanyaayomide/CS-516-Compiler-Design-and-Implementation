; generated from: hw4programs/run39.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f1(i64 %i) {
  %_i619 = alloca i64
  store i64 %i, i64* %_i619
  %_id_i620 = load i64, i64* %_i619
  %_621 = call i64 @f2(i64 %_id_i620)
  ret i64 %_621
}

define i64 @f2(i64 %i) {
  %_i616 = alloca i64
  store i64 %i, i64* %_i616
  %_id_i617 = load i64, i64* %_i616
  %_618 = call i64 @f3(i64 %_id_i617)
  ret i64 %_618
}

define i64 @f3(i64 %i) {
  %_i613 = alloca i64
  store i64 %i, i64* %_i613
  %_id_i614 = load i64, i64* %_i613
  %_615 = call i64 @f4(i64 %_id_i614)
  ret i64 %_615
}

define i64 @f4(i64 %i) {
  %_i610 = alloca i64
  store i64 %i, i64* %_i610
  %_id_i611 = load i64, i64* %_i610
  %_612 = call i64 @f5(i64 %_id_i611)
  ret i64 %_612
}

define i64 @f5(i64 %i) {
  %_i607 = alloca i64
  store i64 %i, i64* %_i607
  %_id_i608 = load i64, i64* %_i607
  %_609 = call i64 @f6(i64 %_id_i608)
  ret i64 %_609
}

define i64 @f6(i64 %i) {
  %_i604 = alloca i64
  store i64 %i, i64* %_i604
  %_id_i605 = load i64, i64* %_i604
  %_606 = call i64 @f7(i64 %_id_i605)
  ret i64 %_606
}

define i64 @f7(i64 %i) {
  %_i601 = alloca i64
  store i64 %i, i64* %_i601
  %_id_i602 = load i64, i64* %_i601
  %_603 = call i64 @f8(i64 %_id_i602)
  ret i64 %_603
}

define i64 @f8(i64 %i) {
  %_i598 = alloca i64
  store i64 %i, i64* %_i598
  %_id_i599 = load i64, i64* %_i598
  %_600 = call i64 @f9(i64 %_id_i599)
  ret i64 %_600
}

define i64 @f9(i64 %i) {
  %_i596 = alloca i64
  store i64 %i, i64* %_i596
  %_id_i597 = load i64, i64* %_i596
  ret i64 %_id_i597
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc592 = alloca i64
  %_argv593 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc592
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv593
  %_id_argc594 = load i64, i64* %_argc592
  %_595 = call i64 @f1(i64 %_id_argc594)
  ret i64 %_595
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
