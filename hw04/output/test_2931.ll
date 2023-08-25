; generated from: hw4programs/run39.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f1(i64 %i) {
  %_i631 = alloca i64
  store i64 %i, i64* %_i631
  %_id_i632 = load i64, i64* %_i631
  %_633 = call i64 @f2(i64 %_id_i632)
  ret i64 %_633
}

define i64 @f2(i64 %i) {
  %_i628 = alloca i64
  store i64 %i, i64* %_i628
  %_id_i629 = load i64, i64* %_i628
  %_630 = call i64 @f3(i64 %_id_i629)
  ret i64 %_630
}

define i64 @f3(i64 %i) {
  %_i625 = alloca i64
  store i64 %i, i64* %_i625
  %_id_i626 = load i64, i64* %_i625
  %_627 = call i64 @f4(i64 %_id_i626)
  ret i64 %_627
}

define i64 @f4(i64 %i) {
  %_i622 = alloca i64
  store i64 %i, i64* %_i622
  %_id_i623 = load i64, i64* %_i622
  %_624 = call i64 @f5(i64 %_id_i623)
  ret i64 %_624
}

define i64 @f5(i64 %i) {
  %_i619 = alloca i64
  store i64 %i, i64* %_i619
  %_id_i620 = load i64, i64* %_i619
  %_621 = call i64 @f6(i64 %_id_i620)
  ret i64 %_621
}

define i64 @f6(i64 %i) {
  %_i616 = alloca i64
  store i64 %i, i64* %_i616
  %_id_i617 = load i64, i64* %_i616
  %_618 = call i64 @f7(i64 %_id_i617)
  ret i64 %_618
}

define i64 @f7(i64 %i) {
  %_i613 = alloca i64
  store i64 %i, i64* %_i613
  %_id_i614 = load i64, i64* %_i613
  %_615 = call i64 @f8(i64 %_id_i614)
  ret i64 %_615
}

define i64 @f8(i64 %i) {
  %_i610 = alloca i64
  store i64 %i, i64* %_i610
  %_id_i611 = load i64, i64* %_i610
  %_612 = call i64 @f9(i64 %_id_i611)
  ret i64 %_612
}

define i64 @f9(i64 %i) {
  %_i608 = alloca i64
  store i64 %i, i64* %_i608
  %_id_i609 = load i64, i64* %_i608
  ret i64 %_id_i609
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc604 = alloca i64
  %_argv605 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc604
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv605
  %_id_argc606 = load i64, i64* %_argc604
  %_607 = call i64 @f1(i64 %_id_argc606)
  ret i64 %_607
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
