; generated from: hw4programs/gcd.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @gcd(i64 %a, i64 %b) {
  %_a4682 = alloca i64
  %_b4683 = alloca i64
  %_4686 = alloca i64
  store i64 %a, i64* %_a4682
  store i64 %b, i64* %_b4683
  br label %_cond4693
_cond4693:
  %_id_b4684 = load i64, i64* %_b4683
  %_4685 = icmp ne i64 %_id_b4684, 0
  br i1 %_4685, label %_if4692, label %_merge4694
_if4692:
  %_id_b4687 = load i64, i64* %_b4683
  store i64 %_id_b4687, i64* %_4686
  %_id_a4688 = load i64, i64* %_a4682
  %_id_b4689 = load i64, i64* %_b4683
  %_4690 = call i64 @mod(i64 %_id_a4688, i64 %_id_b4689)
  store i64 %_4690, i64* %_b4683
  %_id_t4691 = load i64, i64* %_4686
  store i64 %_id_t4691, i64* %_a4682
  br label %_cond4693
_merge4694:
  %_id_a4695 = load i64, i64* %_a4682
  ret i64 %_id_a4695
}

define i64 @mod(i64 %a, i64 %b) {
  %_a4667 = alloca i64
  %_b4668 = alloca i64
  %_4669 = alloca i64
  store i64 %a, i64* %_a4667
  store i64 %b, i64* %_b4668
  %_id_a4670 = load i64, i64* %_a4667
  store i64 %_id_a4670, i64* %_4669
  br label %_cond4679
_cond4679:
  %_id_b4672 = load i64, i64* %_b4668
  %_id_t4671 = load i64, i64* %_4669
  %_4673 = sub i64 %_id_t4671, %_id_b4672
  %_4674 = icmp sge i64 %_4673, 0
  br i1 %_4674, label %_if4678, label %_merge4680
_if4678:
  %_id_b4676 = load i64, i64* %_b4668
  %_id_t4675 = load i64, i64* %_4669
  %_4677 = sub i64 %_id_t4675, %_id_b4676
  store i64 %_4677, i64* %_4669
  br label %_cond4679
_merge4680:
  %_id_t4681 = load i64, i64* %_4669
  ret i64 %_id_t4681
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4660 = alloca i64
  %_argv4661 = alloca { i64, [0 x i8*] }*
  %_4662 = alloca i64
  %_4663 = alloca i64
  store i64 %argc, i64* %_argc4660
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4661
  store i64 64, i64* %_4662
  store i64 48, i64* %_4663
  %_id_a4664 = load i64, i64* %_4662
  %_id_b4665 = load i64, i64* %_4663
  %_4666 = call i64 @gcd(i64 %_id_a4664, i64 %_id_b4665)
  ret i64 %_4666
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
