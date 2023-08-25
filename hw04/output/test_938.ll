; generated from: hw4programs/life.oat
target triple = "x86_64-apple-macosx10.13.0"
@len = global i64 4

define i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j, i64 %count) {
  %_board4952 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i4953 = alloca i64
  %_j4954 = alloca i64
  %_count4955 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_board4952
  store i64 %i, i64* %_i4953
  store i64 %j, i64* %_j4954
  store i64 %count, i64* %_count4955
  br label %_start4979
_start4979:
  %_id_len4966 = load i64, i64* @len
  %_id_j4965 = load i64, i64* %_j4954
  %_4967 = icmp slt i64 %_id_j4965, %_id_len4966
  %_id_len4962 = load i64, i64* @len
  %_id_i4961 = load i64, i64* %_i4953
  %_4963 = icmp slt i64 %_id_i4961, %_id_len4962
  %_id_j4958 = load i64, i64* %_j4954
  %_4959 = icmp sge i64 %_id_j4958, 0
  %_id_i4956 = load i64, i64* %_i4953
  %_4957 = icmp sge i64 %_id_i4956, 0
  %_4960 = and i1 %_4957, %_4959
  %_4964 = and i1 %_4960, %_4963
  %_4968 = and i1 %_4964, %_4967
  br i1 %_4968, label %_then4980, label %_else4981
_then4980:
  %_id_board4970 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4952
  %_id_i4971 = load i64, i64* %_i4953
  %_index_pointer4972 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_board4970, i32 0, i32 1, i64 %_id_i4971
  %_index_value4973 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer4972
  %_id_j4974 = load i64, i64* %_j4954
  %_index_pointer4975 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value4973, i32 0, i32 1, i64 %_id_j4974
  %_index_value4976 = load i64, i64* %_index_pointer4975
  %_id_count4969 = load i64, i64* %_count4955
  %_4977 = add i64 %_id_count4969, %_index_value4976
  ret i64 %_4977
_else4981:
  %_id_count4978 = load i64, i64* %_count4955
  ret i64 %_id_count4978
}

define i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j) {
  %_board4864 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i4865 = alloca i64
  %_j4866 = alloca i64
  %_4867 = alloca i64
  %_4875 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_board4864
  store i64 %i, i64* %_i4865
  store i64 %j, i64* %_j4866
  %_id_board4868 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4864
  %_id_i4869 = load i64, i64* %_i4865
  %_index_pointer4870 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_board4868, i32 0, i32 1, i64 %_id_i4869
  %_index_value4871 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer4870
  %_id_j4872 = load i64, i64* %_j4866
  %_index_pointer4873 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value4871, i32 0, i32 1, i64 %_id_j4872
  %_index_value4874 = load i64, i64* %_index_pointer4873
  store i64 %_index_value4874, i64* %_4867
  store i64 0, i64* %_4875
  %_id_board4876 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4864
  %_id_i4877 = load i64, i64* %_i4865
  %_4878 = sub i64 %_id_i4877, 1
  %_id_j4879 = load i64, i64* %_j4866
  %_4880 = sub i64 %_id_j4879, 1
  %_id_count4881 = load i64, i64* %_4875
  %_4882 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4876, i64 %_4878, i64 %_4880, i64 %_id_count4881)
  store i64 %_4882, i64* %_4875
  %_id_board4883 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4864
  %_id_i4884 = load i64, i64* %_i4865
  %_4885 = sub i64 %_id_i4884, 1
  %_id_j4886 = load i64, i64* %_j4866
  %_id_count4887 = load i64, i64* %_4875
  %_4888 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4883, i64 %_4885, i64 %_id_j4886, i64 %_id_count4887)
  store i64 %_4888, i64* %_4875
  %_id_board4889 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4864
  %_id_i4890 = load i64, i64* %_i4865
  %_4891 = sub i64 %_id_i4890, 1
  %_id_j4892 = load i64, i64* %_j4866
  %_4893 = add i64 %_id_j4892, 1
  %_id_count4894 = load i64, i64* %_4875
  %_4895 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4889, i64 %_4891, i64 %_4893, i64 %_id_count4894)
  store i64 %_4895, i64* %_4875
  %_id_board4896 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4864
  %_id_i4897 = load i64, i64* %_i4865
  %_id_j4898 = load i64, i64* %_j4866
  %_4899 = sub i64 %_id_j4898, 1
  %_id_count4900 = load i64, i64* %_4875
  %_4901 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4896, i64 %_id_i4897, i64 %_4899, i64 %_id_count4900)
  store i64 %_4901, i64* %_4875
  %_id_board4902 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4864
  %_id_i4903 = load i64, i64* %_i4865
  %_id_j4904 = load i64, i64* %_j4866
  %_4905 = add i64 %_id_j4904, 1
  %_id_count4906 = load i64, i64* %_4875
  %_4907 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4902, i64 %_id_i4903, i64 %_4905, i64 %_id_count4906)
  store i64 %_4907, i64* %_4875
  %_id_board4908 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4864
  %_id_i4909 = load i64, i64* %_i4865
  %_4910 = add i64 %_id_i4909, 1
  %_id_j4911 = load i64, i64* %_j4866
  %_4912 = sub i64 %_id_j4911, 1
  %_id_count4913 = load i64, i64* %_4875
  %_4914 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4908, i64 %_4910, i64 %_4912, i64 %_id_count4913)
  store i64 %_4914, i64* %_4875
  %_id_board4915 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4864
  %_id_i4916 = load i64, i64* %_i4865
  %_4917 = add i64 %_id_i4916, 1
  %_id_j4918 = load i64, i64* %_j4866
  %_id_count4919 = load i64, i64* %_4875
  %_4920 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4915, i64 %_4917, i64 %_id_j4918, i64 %_id_count4919)
  store i64 %_4920, i64* %_4875
  %_id_board4921 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4864
  %_id_i4922 = load i64, i64* %_i4865
  %_4923 = add i64 %_id_i4922, 1
  %_id_j4924 = load i64, i64* %_j4866
  %_4925 = add i64 %_id_j4924, 1
  %_id_count4926 = load i64, i64* %_4875
  %_4927 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4921, i64 %_4923, i64 %_4925, i64 %_id_count4926)
  store i64 %_4927, i64* %_4875
  br label %_start4942
_start4942:
  %_id_alive4928 = load i64, i64* %_4867
  %_4929 = icmp eq i64 %_id_alive4928, 1
  br i1 %_4929, label %_then4943, label %_else4944
_then4943:
  br label %_start4938
_start4938:
  %_id_count4930 = load i64, i64* %_4875
  %_4931 = icmp slt i64 %_id_count4930, 2
  br i1 %_4931, label %_then4939, label %_else4940
_then4939:
  ret i64 0
_else4940:
  br label %_start4934
_start4934:
  %_id_count4932 = load i64, i64* %_4875
  %_4933 = icmp slt i64 %_id_count4932, 4
  br i1 %_4933, label %_then4935, label %_else4936
_then4935:
  ret i64 1
_else4936:
  br label %_post4937
_post4937:
  br label %_post4941
_post4941:
  ret i64 0
_else4944:
  br label %_post4945
_post4945:
  br label %_start4948
_start4948:
  %_id_count4946 = load i64, i64* %_4875
  %_4947 = icmp eq i64 %_id_count4946, 3
  br i1 %_4947, label %_then4949, label %_else4950
_then4949:
  ret i64 1
_else4950:
  ret i64 0
_post4951:
  ret i64 0
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4703 = alloca i64
  %_argv4704 = alloca { i64, [0 x i8*] }*
  %_4705 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_4756 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_4807 = alloca i64
  %_4815 = alloca i64
  %_4838 = alloca i64
  %_4842 = alloca i64
  store i64 %argc, i64* %_argc4703
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4704
  %_raw_array4738 = call i64* @oat_alloc_array(i64 4)
  %_array4739 = bitcast i64* %_raw_array4738 to { i64, [0 x i64] }*
  %_4746 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4739, i32 0, i32 1, i32 3
  store i64 0, i64* %_4746
  %_4744 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4739, i32 0, i32 1, i32 2
  store i64 0, i64* %_4744
  %_4742 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4739, i32 0, i32 1, i32 1
  store i64 0, i64* %_4742
  %_4740 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4739, i32 0, i32 1, i32 0
  store i64 0, i64* %_4740
  %_raw_array4728 = call i64* @oat_alloc_array(i64 4)
  %_array4729 = bitcast i64* %_raw_array4728 to { i64, [0 x i64] }*
  %_4736 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4729, i32 0, i32 1, i32 3
  store i64 0, i64* %_4736
  %_4734 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4729, i32 0, i32 1, i32 2
  store i64 1, i64* %_4734
  %_4732 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4729, i32 0, i32 1, i32 1
  store i64 1, i64* %_4732
  %_4730 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4729, i32 0, i32 1, i32 0
  store i64 1, i64* %_4730
  %_raw_array4718 = call i64* @oat_alloc_array(i64 4)
  %_array4719 = bitcast i64* %_raw_array4718 to { i64, [0 x i64] }*
  %_4726 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4719, i32 0, i32 1, i32 3
  store i64 1, i64* %_4726
  %_4724 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4719, i32 0, i32 1, i32 2
  store i64 1, i64* %_4724
  %_4722 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4719, i32 0, i32 1, i32 1
  store i64 1, i64* %_4722
  %_4720 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4719, i32 0, i32 1, i32 0
  store i64 0, i64* %_4720
  %_raw_array4708 = call i64* @oat_alloc_array(i64 4)
  %_array4709 = bitcast i64* %_raw_array4708 to { i64, [0 x i64] }*
  %_4716 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4709, i32 0, i32 1, i32 3
  store i64 0, i64* %_4716
  %_4714 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4709, i32 0, i32 1, i32 2
  store i64 0, i64* %_4714
  %_4712 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4709, i32 0, i32 1, i32 1
  store i64 0, i64* %_4712
  %_4710 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4709, i32 0, i32 1, i32 0
  store i64 0, i64* %_4710
  %_raw_array4706 = call i64* @oat_alloc_array(i64 4)
  %_array4707 = bitcast i64* %_raw_array4706 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_4754 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4707, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4739, { i64, [0 x i64] }** %_4754
  %_4752 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4707, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4729, { i64, [0 x i64] }** %_4752
  %_4750 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4707, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4719, { i64, [0 x i64] }** %_4750
  %_4748 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4707, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4709, { i64, [0 x i64] }** %_4748
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4707, { i64, [0 x { i64, [0 x i64] }*] }** %_4705
  %_raw_array4789 = call i64* @oat_alloc_array(i64 4)
  %_array4790 = bitcast i64* %_raw_array4789 to { i64, [0 x i64] }*
  %_4797 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4790, i32 0, i32 1, i32 3
  store i64 0, i64* %_4797
  %_4795 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4790, i32 0, i32 1, i32 2
  store i64 0, i64* %_4795
  %_4793 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4790, i32 0, i32 1, i32 1
  store i64 0, i64* %_4793
  %_4791 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4790, i32 0, i32 1, i32 0
  store i64 0, i64* %_4791
  %_raw_array4779 = call i64* @oat_alloc_array(i64 4)
  %_array4780 = bitcast i64* %_raw_array4779 to { i64, [0 x i64] }*
  %_4787 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4780, i32 0, i32 1, i32 3
  store i64 0, i64* %_4787
  %_4785 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4780, i32 0, i32 1, i32 2
  store i64 0, i64* %_4785
  %_4783 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4780, i32 0, i32 1, i32 1
  store i64 0, i64* %_4783
  %_4781 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4780, i32 0, i32 1, i32 0
  store i64 0, i64* %_4781
  %_raw_array4769 = call i64* @oat_alloc_array(i64 4)
  %_array4770 = bitcast i64* %_raw_array4769 to { i64, [0 x i64] }*
  %_4777 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4770, i32 0, i32 1, i32 3
  store i64 0, i64* %_4777
  %_4775 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4770, i32 0, i32 1, i32 2
  store i64 0, i64* %_4775
  %_4773 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4770, i32 0, i32 1, i32 1
  store i64 0, i64* %_4773
  %_4771 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4770, i32 0, i32 1, i32 0
  store i64 0, i64* %_4771
  %_raw_array4759 = call i64* @oat_alloc_array(i64 4)
  %_array4760 = bitcast i64* %_raw_array4759 to { i64, [0 x i64] }*
  %_4767 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4760, i32 0, i32 1, i32 3
  store i64 0, i64* %_4767
  %_4765 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4760, i32 0, i32 1, i32 2
  store i64 0, i64* %_4765
  %_4763 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4760, i32 0, i32 1, i32 1
  store i64 0, i64* %_4763
  %_4761 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4760, i32 0, i32 1, i32 0
  store i64 0, i64* %_4761
  %_raw_array4757 = call i64* @oat_alloc_array(i64 4)
  %_array4758 = bitcast i64* %_raw_array4757 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_4805 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4758, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4790, { i64, [0 x i64] }** %_4805
  %_4803 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4758, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4780, { i64, [0 x i64] }** %_4803
  %_4801 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4758, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4770, { i64, [0 x i64] }** %_4801
  %_4799 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4758, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4760, { i64, [0 x i64] }** %_4799
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4758, { i64, [0 x { i64, [0 x i64] }*] }** %_4756
  store i64 0, i64* %_4807
  br label %_start4835
_start4835:
  %_id_i4808 = load i64, i64* %_4807
  %_4809 = icmp slt i64 %_id_i4808, 4
  br i1 %_4809, label %_body4836, label %_else4837
_body4836:
  %_raw_array4810 = call i64* @oat_alloc_array(i64 4)
  %_array4811 = bitcast i64* %_raw_array4810 to { i64, [0 x i64] }*
  %_id_new_board4812 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4756
  %_id_i4813 = load i64, i64* %_4807
  %_4814 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_new_board4812, i32 0, i32 1, i64 %_id_i4813
  store { i64, [0 x i64] }* %_array4811, { i64, [0 x i64] }** %_4814
  store i64 0, i64* %_4815
  br label %_start4830
_start4830:
  %_id_j4816 = load i64, i64* %_4815
  %_4817 = icmp slt i64 %_id_j4816, 4
  br i1 %_4817, label %_body4831, label %_else4832
_body4831:
  %_id_board4818 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4705
  %_id_i4819 = load i64, i64* %_4807
  %_id_j4820 = load i64, i64* %_4815
  %_4821 = call i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4818, i64 %_id_i4819, i64 %_id_j4820)
  %_id_new_board4822 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4756
  %_id_i4823 = load i64, i64* %_4807
  %_index_pointer4824 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_new_board4822, i32 0, i32 1, i64 %_id_i4823
  %_index_value4825 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer4824
  %_id_j4826 = load i64, i64* %_4815
  %_4827 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value4825, i32 0, i32 1, i64 %_id_j4826
  store i64 %_4821, i64* %_4827
  %_id_j4828 = load i64, i64* %_4815
  %_4829 = add i64 %_id_j4828, 1
  store i64 %_4829, i64* %_4815
  br label %_start4830
_else4832:
  %_id_i4833 = load i64, i64* %_4807
  %_4834 = add i64 %_id_i4833, 1
  store i64 %_4834, i64* %_4807
  br label %_start4835
_else4837:
  store i64 0, i64* %_4838
  br label %_start4861
_start4861:
  %_id_len4840 = load i64, i64* @len
  %_id_i4839 = load i64, i64* %_4838
  %_4841 = icmp slt i64 %_id_i4839, %_id_len4840
  br i1 %_4841, label %_body4862, label %_else4863
_body4862:
  store i64 0, i64* %_4842
  br label %_start4856
_start4856:
  %_id_len4844 = load i64, i64* @len
  %_id_j4843 = load i64, i64* %_4842
  %_4845 = icmp slt i64 %_id_j4843, %_id_len4844
  br i1 %_4845, label %_body4857, label %_else4858
_body4857:
  %_id_new_board4846 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4756
  %_id_i4847 = load i64, i64* %_4838
  %_index_pointer4848 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_new_board4846, i32 0, i32 1, i64 %_id_i4847
  %_index_value4849 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer4848
  %_id_j4850 = load i64, i64* %_4842
  %_index_pointer4851 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value4849, i32 0, i32 1, i64 %_id_j4850
  %_index_value4852 = load i64, i64* %_index_pointer4851
  call void @print_int(i64 %_index_value4852)
  %_id_j4854 = load i64, i64* %_4842
  %_4855 = add i64 %_id_j4854, 1
  store i64 %_4855, i64* %_4842
  br label %_start4856
_else4858:
  %_id_i4859 = load i64, i64* %_4838
  %_4860 = add i64 %_id_i4859, 1
  store i64 %_4860, i64* %_4838
  br label %_start4861
_else4863:
  ret i64 0
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
