; generated from: hw4programs/run2.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_x689 = alloca i64
  %_y690 = alloca i64
  %_691 = alloca i64
  store i64 %x, i64* %_x689
  store i64 %y, i64* %_y690
  store i64 0, i64* %_691
  br label %_start702
_start702:
  %_id_x692 = load i64, i64* %_x689
  %_693 = icmp sge i64 %_id_x692, 1
  br i1 %_693, label %_then703, label %_else704
_then703:
  %_id_x694 = load i64, i64* %_x689
  %_695 = sub i64 %_id_x694, 1
  %_id_y696 = load i64, i64* %_y690
  %_697 = call i64 @f(i64 %_695, i64 %_id_y696)
  %_698 = add i64 1, %_697
  store i64 %_698, i64* %_691
  br label %_post705
_else704:
  %_id_y700 = load i64, i64* %_y690
  %_id_x699 = load i64, i64* %_x689
  %_701 = add i64 %_id_x699, %_id_y700
  store i64 %_701, i64* %_691
  br label %_post705
_post705:
  %_id_r706 = load i64, i64* %_691
  ret i64 %_id_r706
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc680 = alloca i64
  %_argv681 = alloca { i64, [0 x i8*] }*
  %_682 = alloca i64
  %_683 = alloca i64
  store i64 %argc, i64* %_argc680
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv681
  store i64 3, i64* %_682
  store i64 3, i64* %_683
  %_id_i687 = load i64, i64* @i
  %_id_x684 = load i64, i64* %_682
  %_id_y685 = load i64, i64* %_683
  %_686 = call i64 @f(i64 %_id_x684, i64 %_id_y685)
  %_688 = add i64 %_686, %_id_i687
  ret i64 %_688
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
