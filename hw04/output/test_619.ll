; generated from: hw4programs/gcd.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @gcd(i64 %a, i64 %b) {
  %_a4689 = alloca i64
  %_b4690 = alloca i64
  %_4693 = alloca i64
  store i64 %a, i64* %_a4689
  store i64 %b, i64* %_b4690
  br label %_start4699
_start4699:
  %_id_b4691 = load i64, i64* %_b4690
  %_4692 = icmp ne i64 %_id_b4691, 0
  br i1 %_4692, label %_body4700, label %_else4701
_body4700:
  %_id_b4694 = load i64, i64* %_b4690
  store i64 %_id_b4694, i64* %_4693
  %_id_a4695 = load i64, i64* %_a4689
  %_id_b4696 = load i64, i64* %_b4690
  %_4697 = call i64 @mod(i64 %_id_a4695, i64 %_id_b4696)
  store i64 %_4697, i64* %_b4690
  %_id_t4698 = load i64, i64* %_4693
  store i64 %_id_t4698, i64* %_a4689
  br label %_start4699
_else4701:
  %_id_a4702 = load i64, i64* %_a4689
  ret i64 %_id_a4702
}

define i64 @mod(i64 %a, i64 %b) {
  %_a4674 = alloca i64
  %_b4675 = alloca i64
  %_4676 = alloca i64
  store i64 %a, i64* %_a4674
  store i64 %b, i64* %_b4675
  %_id_a4677 = load i64, i64* %_a4674
  store i64 %_id_a4677, i64* %_4676
  br label %_start4685
_start4685:
  %_id_b4679 = load i64, i64* %_b4675
  %_id_t4678 = load i64, i64* %_4676
  %_4680 = sub i64 %_id_t4678, %_id_b4679
  %_4681 = icmp sge i64 %_4680, 0
  br i1 %_4681, label %_body4686, label %_else4687
_body4686:
  %_id_b4683 = load i64, i64* %_b4675
  %_id_t4682 = load i64, i64* %_4676
  %_4684 = sub i64 %_id_t4682, %_id_b4683
  store i64 %_4684, i64* %_4676
  br label %_start4685
_else4687:
  %_id_t4688 = load i64, i64* %_4676
  ret i64 %_id_t4688
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4667 = alloca i64
  %_argv4668 = alloca { i64, [0 x i8*] }*
  %_4669 = alloca i64
  %_4670 = alloca i64
  store i64 %argc, i64* %_argc4667
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4668
  store i64 64, i64* %_4669
  store i64 48, i64* %_4670
  %_id_a4671 = load i64, i64* %_4669
  %_id_b4672 = load i64, i64* %_4670
  %_4673 = call i64 @gcd(i64 %_id_a4671, i64 %_id_b4672)
  ret i64 %_4673
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
