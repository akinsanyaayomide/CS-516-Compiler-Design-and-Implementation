; generated from: hw4programs/binary_gcd.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_x4803 = alloca i64
  %_y4804 = alloca i64
  store i64 %x, i64* %_x4803
  store i64 %y, i64* %_y4804
  br label %_begin_if4809
_begin_if4809:
  %_id_x4805 = load i64, i64* %_x4803
  %_id_y4806 = load i64, i64* %_y4804
  %_bop4807 = icmp eq i64 %_id_x4805, %_id_y4806
  br i1 %_bop4807, label %_then_branch4810, label %_else_branch4811
_then_branch4810:
  %_id_x4808 = load i64, i64* %_x4803
  ret i64 %_id_x4808
_else_branch4811:
  br label %_end_if4812
_end_if4812:
  br label %_begin_if4816
_begin_if4816:
  %_id_x4813 = load i64, i64* %_x4803
  %_bop4814 = icmp eq i64 %_id_x4813, 0
  br i1 %_bop4814, label %_then_branch4817, label %_else_branch4818
_then_branch4817:
  %_id_y4815 = load i64, i64* %_y4804
  ret i64 %_id_y4815
_else_branch4818:
  br label %_end_if4819
_end_if4819:
  br label %_begin_if4823
_begin_if4823:
  %_id_y4820 = load i64, i64* %_y4804
  %_bop4821 = icmp eq i64 %_id_y4820, 0
  br i1 %_bop4821, label %_then_branch4824, label %_else_branch4825
_then_branch4824:
  %_id_x4822 = load i64, i64* %_x4803
  ret i64 %_id_x4822
_else_branch4825:
  br label %_end_if4826
_end_if4826:
  br label %_begin_if4848
_begin_if4848:
  %_id_x4827 = load i64, i64* %_x4803
  %_unop4828 = xor i64 %_id_x4827, -1
  %_bop4829 = and i64 %_unop4828, 1
  %_bop4830 = icmp eq i64 %_bop4829, 1
  br i1 %_bop4830, label %_then_branch4849, label %_else_branch4850
_then_branch4849:
  br label %_begin_if4844
_begin_if4844:
  %_id_y4831 = load i64, i64* %_y4804
  %_bop4832 = and i64 %_id_y4831, 1
  %_bop4833 = icmp eq i64 %_bop4832, 1
  br i1 %_bop4833, label %_then_branch4845, label %_else_branch4846
_then_branch4845:
  %_id_x4834 = load i64, i64* %_x4803
  %_bop4835 = lshr i64 %_id_x4834, 1
  %_id_y4836 = load i64, i64* %_y4804
  %_4837 = call i64 @binary_gcd(i64 %_bop4835, i64 %_id_y4836)
  ret i64 %_4837
_else_branch4846:
  %_id_x4838 = load i64, i64* %_x4803
  %_bop4839 = lshr i64 %_id_x4838, 1
  %_id_y4840 = load i64, i64* %_y4804
  %_bop4841 = lshr i64 %_id_y4840, 1
  %_4842 = call i64 @binary_gcd(i64 %_bop4839, i64 %_bop4841)
  %_bop4843 = shl i64 %_4842, 1
  ret i64 %_bop4843
_end_if4847:
  br label %_end_if4851
_else_branch4850:
  br label %_end_if4851
_end_if4851:
  br label %_begin_if4860
_begin_if4860:
  %_id_y4852 = load i64, i64* %_y4804
  %_unop4853 = xor i64 %_id_y4852, -1
  %_bop4854 = and i64 %_unop4853, 1
  %_bop4855 = icmp eq i64 %_bop4854, 1
  br i1 %_bop4855, label %_then_branch4861, label %_else_branch4862
_then_branch4861:
  %_id_x4856 = load i64, i64* %_x4803
  %_id_y4857 = load i64, i64* %_y4804
  %_bop4858 = lshr i64 %_id_y4857, 1
  %_4859 = call i64 @binary_gcd(i64 %_id_x4856, i64 %_bop4858)
  ret i64 %_4859
_else_branch4862:
  br label %_end_if4863
_end_if4863:
  br label %_begin_if4873
_begin_if4873:
  %_id_x4864 = load i64, i64* %_x4803
  %_id_y4865 = load i64, i64* %_y4804
  %_bop4866 = icmp sgt i64 %_id_x4864, %_id_y4865
  br i1 %_bop4866, label %_then_branch4874, label %_else_branch4875
_then_branch4874:
  %_id_x4867 = load i64, i64* %_x4803
  %_id_y4868 = load i64, i64* %_y4804
  %_bop4869 = sub i64 %_id_x4867, %_id_y4868
  %_bop4870 = lshr i64 %_bop4869, 1
  %_id_y4871 = load i64, i64* %_y4804
  %_4872 = call i64 @binary_gcd(i64 %_bop4870, i64 %_id_y4871)
  ret i64 %_4872
_else_branch4875:
  br label %_end_if4876
_end_if4876:
  %_id_y4877 = load i64, i64* %_y4804
  %_id_x4878 = load i64, i64* %_x4803
  %_bop4879 = sub i64 %_id_y4877, %_id_x4878
  %_bop4880 = lshr i64 %_bop4879, 1
  %_id_x4881 = load i64, i64* %_x4803
  %_4882 = call i64 @binary_gcd(i64 %_bop4880, i64 %_id_x4881)
  ret i64 %_4882
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4796 = alloca i64
  %_argv4797 = alloca { i64, [0 x i8*] }*
  %_4798 = alloca i64
  %_4799 = alloca i64
  store i64 %argc, i64* %_argc4796
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4797
  store i64 21, i64* %_4798
  store i64 15, i64* %_4799
  %_id_x4800 = load i64, i64* %_4798
  %_id_y4801 = load i64, i64* %_4799
  %_4802 = call i64 @binary_gcd(i64 %_id_x4800, i64 %_id_y4801)
  ret i64 %_4802
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
