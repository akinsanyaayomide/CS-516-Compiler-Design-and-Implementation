; generated from: hw4programs/insertion_sort.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %partial, i64 %len, i64 %insertee) {
  %_partial4808 = alloca { i64, [0 x i64] }*
  %_len4809 = alloca i64
  %_insertee4810 = alloca i64
  %_4811 = alloca { i64, [0 x i64] }*
  %_4816 = alloca i64
  %_4830 = alloca i1
  %_4843 = alloca i64
  store { i64, [0 x i64] }* %partial, { i64, [0 x i64] }** %_partial4808
  store i64 %len, i64* %_len4809
  store i64 %insertee, i64* %_insertee4810
  %_id_len4812 = load i64, i64* %_len4809
  %_4813 = add i64 %_id_len4812, 1
  %_raw_array4814 = call i64* @oat_alloc_array(i64 %_4813)
  %_array4815 = bitcast i64* %_raw_array4814 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4815, { i64, [0 x i64] }** %_4811
  store i64 0, i64* %_4816
  br label %_start4827
_start4827:
  %_id_len4818 = load i64, i64* %_len4809
  %_4819 = add i64 %_id_len4818, 1
  %_id_i4817 = load i64, i64* %_4816
  %_4820 = icmp slt i64 %_id_i4817, %_4819
  br i1 %_4820, label %_body4828, label %_else4829
_body4828:
  %_4821 = mul i64 1, -1
  %_id_inserted4822 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4811
  %_id_i4823 = load i64, i64* %_4816
  %_4824 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted4822, i32 0, i32 1, i64 %_id_i4823
  store i64 %_4821, i64* %_4824
  %_id_i4825 = load i64, i64* %_4816
  %_4826 = add i64 %_id_i4825, 1
  store i64 %_4826, i64* %_4816
  br label %_start4827
_else4829:
  store i1 1, i1* %_4830
  br label %_start4839
_start4839:
  %_id_partial4832 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4808
  %_index_pointer4833 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_partial4832, i32 0, i32 1, i32 0
  %_index_value4834 = load i64, i64* %_index_pointer4833
  %_id_insertee4831 = load i64, i64* %_insertee4810
  %_4835 = icmp slt i64 %_id_insertee4831, %_index_value4834
  br i1 %_4835, label %_then4840, label %_else4841
_then4840:
  store i1 0, i1* %_4830
  %_id_insertee4836 = load i64, i64* %_insertee4810
  %_id_inserted4837 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4811
  %_4838 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted4837, i32 0, i32 1, i32 0
  store i64 %_id_insertee4836, i64* %_4838
  br label %_post4842
_else4841:
  br label %_post4842
_post4842:
  store i64 0, i64* %_4843
  br label %_start4891
_start4891:
  %_id_len4845 = load i64, i64* %_len4809
  %_id_i4844 = load i64, i64* %_4843
  %_4846 = icmp slt i64 %_id_i4844, %_id_len4845
  br i1 %_4846, label %_body4892, label %_else4893
_body4892:
  br label %_start4885
_start4885:
  %_id_not_yet_inserted4847 = load i1, i1* %_4830
  br i1 %_id_not_yet_inserted4847, label %_then4886, label %_else4887
_then4886:
  br label %_start4873
_start4873:
  %_id_partial4849 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4808
  %_id_i4850 = load i64, i64* %_4843
  %_index_pointer4851 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_partial4849, i32 0, i32 1, i64 %_id_i4850
  %_index_value4852 = load i64, i64* %_index_pointer4851
  %_id_insertee4848 = load i64, i64* %_insertee4810
  %_4853 = icmp sgt i64 %_id_insertee4848, %_index_value4852
  br i1 %_4853, label %_then4874, label %_else4875
_then4874:
  store i1 0, i1* %_4830
  %_id_insertee4854 = load i64, i64* %_insertee4810
  %_id_inserted4855 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4811
  %_id_i4856 = load i64, i64* %_4843
  %_4857 = add i64 %_id_i4856, 1
  %_4858 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted4855, i32 0, i32 1, i64 %_4857
  store i64 %_id_insertee4854, i64* %_4858
  %_id_partial4859 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4808
  %_id_i4860 = load i64, i64* %_4843
  %_index_pointer4861 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_partial4859, i32 0, i32 1, i64 %_id_i4860
  %_index_value4862 = load i64, i64* %_index_pointer4861
  %_id_inserted4863 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4811
  %_id_i4864 = load i64, i64* %_4843
  %_4865 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted4863, i32 0, i32 1, i64 %_id_i4864
  store i64 %_index_value4862, i64* %_4865
  br label %_post4876
_else4875:
  %_id_partial4866 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4808
  %_id_i4867 = load i64, i64* %_4843
  %_index_pointer4868 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_partial4866, i32 0, i32 1, i64 %_id_i4867
  %_index_value4869 = load i64, i64* %_index_pointer4868
  %_id_inserted4870 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4811
  %_id_i4871 = load i64, i64* %_4843
  %_4872 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted4870, i32 0, i32 1, i64 %_id_i4871
  store i64 %_index_value4869, i64* %_4872
  br label %_post4876
_post4876:
  br label %_post4888
_else4887:
  %_id_partial4877 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4808
  %_id_i4878 = load i64, i64* %_4843
  %_index_pointer4879 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_partial4877, i32 0, i32 1, i64 %_id_i4878
  %_index_value4880 = load i64, i64* %_index_pointer4879
  %_id_inserted4881 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4811
  %_id_i4882 = load i64, i64* %_4843
  %_4883 = add i64 %_id_i4882, 1
  %_4884 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted4881, i32 0, i32 1, i64 %_4883
  store i64 %_index_value4880, i64* %_4884
  br label %_post4888
_post4888:
  %_id_i4889 = load i64, i64* %_4843
  %_4890 = add i64 %_id_i4889, 1
  store i64 %_4890, i64* %_4843
  br label %_start4891
_else4893:
  %_id_inserted4894 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4811
  ret { i64, [0 x i64] }* %_id_inserted4894
}

define { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %unsorted, i64 %len) {
  %_unsorted4779 = alloca { i64, [0 x i64] }*
  %_len4780 = alloca i64
  %_4781 = alloca { i64, [0 x i64] }*
  %_4791 = alloca i64
  store { i64, [0 x i64] }* %unsorted, { i64, [0 x i64] }** %_unsorted4779
  store i64 %len, i64* %_len4780
  %_raw_array4782 = call i64* @oat_alloc_array(i64 1)
  %_array4783 = bitcast i64* %_raw_array4782 to { i64, [0 x i64] }*
  %_4784 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4783, i32 0, i32 1, i32 0
  store i64 0, i64* %_4784
  store { i64, [0 x i64] }* %_array4783, { i64, [0 x i64] }** %_4781
  %_id_unsorted4786 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted4779
  %_index_pointer4787 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_unsorted4786, i32 0, i32 1, i32 0
  %_index_value4788 = load i64, i64* %_index_pointer4787
  %_id_out4789 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4781
  %_4790 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_out4789, i32 0, i32 1, i32 0
  store i64 %_index_value4788, i64* %_4790
  store i64 1, i64* %_4791
  br label %_start4804
_start4804:
  %_id_len4793 = load i64, i64* %_len4780
  %_id_i4792 = load i64, i64* %_4791
  %_4794 = icmp slt i64 %_id_i4792, %_id_len4793
  br i1 %_4794, label %_body4805, label %_else4806
_body4805:
  %_id_out4795 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4781
  %_id_i4796 = load i64, i64* %_4791
  %_id_unsorted4797 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted4779
  %_id_i4798 = load i64, i64* %_4791
  %_index_pointer4799 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_unsorted4797, i32 0, i32 1, i64 %_id_i4798
  %_index_value4800 = load i64, i64* %_index_pointer4799
  %_4801 = call { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_id_out4795, i64 %_id_i4796, i64 %_index_value4800)
  store { i64, [0 x i64] }* %_4801, { i64, [0 x i64] }** %_4781
  %_id_i4802 = load i64, i64* %_4791
  %_4803 = add i64 %_id_i4802, 1
  store i64 %_4803, i64* %_4791
  br label %_start4804
_else4806:
  %_id_out4807 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4781
  ret { i64, [0 x i64] }* %_id_out4807
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4756 = alloca i64
  %_argv4757 = alloca { i64, [0 x i8*] }*
  %_4758 = alloca { i64, [0 x i64] }*
  %_4773 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc4756
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4757
  %_raw_array4759 = call i64* @oat_alloc_array(i64 6)
  %_array4760 = bitcast i64* %_raw_array4759 to { i64, [0 x i64] }*
  %_4771 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4760, i32 0, i32 1, i32 5
  store i64 6, i64* %_4771
  %_4769 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4760, i32 0, i32 1, i32 4
  store i64 2, i64* %_4769
  %_4767 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4760, i32 0, i32 1, i32 3
  store i64 3, i64* %_4767
  %_4765 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4760, i32 0, i32 1, i32 2
  store i64 32, i64* %_4765
  %_4763 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4760, i32 0, i32 1, i32 1
  store i64 42, i64* %_4763
  %_4761 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4760, i32 0, i32 1, i32 0
  store i64 13, i64* %_4761
  store { i64, [0 x i64] }* %_array4760, { i64, [0 x i64] }** %_4758
  %_id_array4774 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4758
  %_4775 = call { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_id_array4774, i64 6)
  store { i64, [0 x i64] }* %_4775, { i64, [0 x i64] }** %_4773
  %_id_result4776 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4773
  %_index_pointer4777 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_result4776, i32 0, i32 1, i32 5
  %_index_value4778 = load i64, i64* %_index_pointer4777
  ret i64 %_index_value4778
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
