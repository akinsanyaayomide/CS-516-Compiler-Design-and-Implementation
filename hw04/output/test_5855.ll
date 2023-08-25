; generated from: hw4programs/life.oat
target triple = "x86_64-apple-macosx10.13.0"
@len = global i64 4

define i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j, i64 %count) {
  %_board4945 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i4946 = alloca i64
  %_j4947 = alloca i64
  %_count4948 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_board4945
  store i64 %i, i64* %_i4946
  store i64 %j, i64* %_j4947
  store i64 %count, i64* %_count4948
  br label %_begin_if4975
_begin_if4975:
  %_id_i4949 = load i64, i64* %_i4946
  %_bop4950 = icmp sge i64 %_id_i4949, 0
  %_id_j4951 = load i64, i64* %_j4947
  %_bop4952 = icmp sge i64 %_id_j4951, 0
  %_bop4953 = and i1 %_bop4950, %_bop4952
  %_id_i4954 = load i64, i64* %_i4946
  %_id_len4955 = load i64, i64* @len
  %_bop4956 = icmp slt i64 %_id_i4954, %_id_len4955
  %_bop4957 = and i1 %_bop4953, %_bop4956
  %_id_j4958 = load i64, i64* %_j4947
  %_id_len4959 = load i64, i64* @len
  %_bop4960 = icmp slt i64 %_id_j4958, %_id_len4959
  %_bop4961 = and i1 %_bop4957, %_bop4960
  br i1 %_bop4961, label %_then_branch4974, label %_else_branch4973
_then_branch4974:
  %_id_count4963 = load i64, i64* %_count4948
  %_id_board4964 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4945
  %_id_i4965 = load i64, i64* %_i4946
  %_index_pointer4967 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_board4964, i32 0, i32 1, i64 %_id_i4965
  %_index_value4966 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer4967
  %_id_j4968 = load i64, i64* %_j4947
  %_index_pointer4970 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value4966, i32 0, i32 1, i64 %_id_j4968
  %_index_value4969 = load i64, i64* %_index_pointer4970
  %_bop4971 = add i64 %_id_count4963, %_index_value4969
  ret i64 %_bop4971
_else_branch4973:
  %_id_count4962 = load i64, i64* %_count4948
  ret i64 %_id_count4962
}

define i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j) {
  %_board4857 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i4858 = alloca i64
  %_j4859 = alloca i64
  %_alive4867 = alloca i64
  %_count4868 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_board4857
  store i64 %i, i64* %_i4858
  store i64 %j, i64* %_j4859
  %_id_board4860 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4857
  %_id_i4861 = load i64, i64* %_i4858
  %_index_pointer4863 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_board4860, i32 0, i32 1, i64 %_id_i4861
  %_index_value4862 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer4863
  %_id_j4864 = load i64, i64* %_j4859
  %_index_pointer4866 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value4862, i32 0, i32 1, i64 %_id_j4864
  %_index_value4865 = load i64, i64* %_index_pointer4866
  store i64 %_index_value4865, i64* %_alive4867
  store i64 0, i64* %_count4868
  %_id_board4869 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4857
  %_id_i4870 = load i64, i64* %_i4858
  %_bop4871 = sub i64 %_id_i4870, 1
  %_id_j4872 = load i64, i64* %_j4859
  %_bop4873 = sub i64 %_id_j4872, 1
  %_id_count4874 = load i64, i64* %_count4868
  %_4875 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4869, i64 %_bop4871, i64 %_bop4873, i64 %_id_count4874)
  store i64 %_4875, i64* %_count4868
  %_id_board4876 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4857
  %_id_i4877 = load i64, i64* %_i4858
  %_bop4878 = sub i64 %_id_i4877, 1
  %_id_j4879 = load i64, i64* %_j4859
  %_id_count4880 = load i64, i64* %_count4868
  %_4881 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4876, i64 %_bop4878, i64 %_id_j4879, i64 %_id_count4880)
  store i64 %_4881, i64* %_count4868
  %_id_board4882 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4857
  %_id_i4883 = load i64, i64* %_i4858
  %_bop4884 = sub i64 %_id_i4883, 1
  %_id_j4885 = load i64, i64* %_j4859
  %_bop4886 = add i64 %_id_j4885, 1
  %_id_count4887 = load i64, i64* %_count4868
  %_4888 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4882, i64 %_bop4884, i64 %_bop4886, i64 %_id_count4887)
  store i64 %_4888, i64* %_count4868
  %_id_board4889 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4857
  %_id_i4890 = load i64, i64* %_i4858
  %_id_j4891 = load i64, i64* %_j4859
  %_bop4892 = sub i64 %_id_j4891, 1
  %_id_count4893 = load i64, i64* %_count4868
  %_4894 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4889, i64 %_id_i4890, i64 %_bop4892, i64 %_id_count4893)
  store i64 %_4894, i64* %_count4868
  %_id_board4895 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4857
  %_id_i4896 = load i64, i64* %_i4858
  %_id_j4897 = load i64, i64* %_j4859
  %_bop4898 = add i64 %_id_j4897, 1
  %_id_count4899 = load i64, i64* %_count4868
  %_4900 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4895, i64 %_id_i4896, i64 %_bop4898, i64 %_id_count4899)
  store i64 %_4900, i64* %_count4868
  %_id_board4901 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4857
  %_id_i4902 = load i64, i64* %_i4858
  %_bop4903 = add i64 %_id_i4902, 1
  %_id_j4904 = load i64, i64* %_j4859
  %_bop4905 = sub i64 %_id_j4904, 1
  %_id_count4906 = load i64, i64* %_count4868
  %_4907 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4901, i64 %_bop4903, i64 %_bop4905, i64 %_id_count4906)
  store i64 %_4907, i64* %_count4868
  %_id_board4908 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4857
  %_id_i4909 = load i64, i64* %_i4858
  %_bop4910 = add i64 %_id_i4909, 1
  %_id_j4911 = load i64, i64* %_j4859
  %_id_count4912 = load i64, i64* %_count4868
  %_4913 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4908, i64 %_bop4910, i64 %_id_j4911, i64 %_id_count4912)
  store i64 %_4913, i64* %_count4868
  %_id_board4914 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4857
  %_id_i4915 = load i64, i64* %_i4858
  %_bop4916 = add i64 %_id_i4915, 1
  %_id_j4917 = load i64, i64* %_j4859
  %_bop4918 = add i64 %_id_j4917, 1
  %_id_count4919 = load i64, i64* %_count4868
  %_4920 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4914, i64 %_bop4916, i64 %_bop4918, i64 %_id_count4919)
  store i64 %_4920, i64* %_count4868
  br label %_begin_if4938
_begin_if4938:
  %_id_alive4921 = load i64, i64* %_alive4867
  %_bop4922 = icmp eq i64 %_id_alive4921, 1
  br i1 %_bop4922, label %_then_branch4937, label %_else_branch4936
_then_branch4937:
  br label %_begin_if4934
_begin_if4934:
  %_id_count4923 = load i64, i64* %_count4868
  %_bop4924 = icmp slt i64 %_id_count4923, 2
  br i1 %_bop4924, label %_then_branch4933, label %_else_branch4932
_then_branch4933:
  ret i64 0
_else_branch4932:
  br label %_begin_if4930
_begin_if4930:
  %_id_count4925 = load i64, i64* %_count4868
  %_bop4926 = icmp slt i64 %_id_count4925, 4
  br i1 %_bop4926, label %_then_branch4929, label %_else_branch4928
_then_branch4929:
  ret i64 1
_else_branch4928:
  br label %_end_if4927
_end_if4927:
  br label %_end_if4931
_end_if4931:
  ret i64 0
_else_branch4936:
  br label %_end_if4935
_end_if4935:
  br label %_begin_if4944
_begin_if4944:
  %_id_count4939 = load i64, i64* %_count4868
  %_bop4940 = icmp eq i64 %_id_count4939, 3
  br i1 %_bop4940, label %_then_branch4943, label %_else_branch4942
_then_branch4943:
  ret i64 1
_else_branch4942:
  ret i64 0
_end_if4941:
  ret i64 0
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4696 = alloca i64
  %_argv4697 = alloca { i64, [0 x i8*] }*
  %_board4748 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_new_board4799 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i4800 = alloca i64
  %_j4808 = alloca i64
  %_i4831 = alloca i64
  %_j4835 = alloca i64
  store i64 %argc, i64* %_argc4696
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4697
  %_raw_array4730 = call i64* @oat_alloc_array(i64 4)
  %_array4731 = bitcast i64* %_raw_array4730 to { i64, [0 x i64] }*
  %_4738 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4731, i32 0, i32 1, i32 3
  store i64 0, i64* %_4738
  %_4736 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4731, i32 0, i32 1, i32 2
  store i64 0, i64* %_4736
  %_4734 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4731, i32 0, i32 1, i32 1
  store i64 0, i64* %_4734
  %_4732 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4731, i32 0, i32 1, i32 0
  store i64 0, i64* %_4732
  %_raw_array4720 = call i64* @oat_alloc_array(i64 4)
  %_array4721 = bitcast i64* %_raw_array4720 to { i64, [0 x i64] }*
  %_4728 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4721, i32 0, i32 1, i32 3
  store i64 0, i64* %_4728
  %_4726 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4721, i32 0, i32 1, i32 2
  store i64 1, i64* %_4726
  %_4724 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4721, i32 0, i32 1, i32 1
  store i64 1, i64* %_4724
  %_4722 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4721, i32 0, i32 1, i32 0
  store i64 1, i64* %_4722
  %_raw_array4710 = call i64* @oat_alloc_array(i64 4)
  %_array4711 = bitcast i64* %_raw_array4710 to { i64, [0 x i64] }*
  %_4718 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4711, i32 0, i32 1, i32 3
  store i64 1, i64* %_4718
  %_4716 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4711, i32 0, i32 1, i32 2
  store i64 1, i64* %_4716
  %_4714 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4711, i32 0, i32 1, i32 1
  store i64 1, i64* %_4714
  %_4712 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4711, i32 0, i32 1, i32 0
  store i64 0, i64* %_4712
  %_raw_array4700 = call i64* @oat_alloc_array(i64 4)
  %_array4701 = bitcast i64* %_raw_array4700 to { i64, [0 x i64] }*
  %_4708 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4701, i32 0, i32 1, i32 3
  store i64 0, i64* %_4708
  %_4706 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4701, i32 0, i32 1, i32 2
  store i64 0, i64* %_4706
  %_4704 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4701, i32 0, i32 1, i32 1
  store i64 0, i64* %_4704
  %_4702 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4701, i32 0, i32 1, i32 0
  store i64 0, i64* %_4702
  %_raw_array4698 = call i64* @oat_alloc_array(i64 4)
  %_array4699 = bitcast i64* %_raw_array4698 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_4746 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4699, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4731, { i64, [0 x i64] }** %_4746
  %_4744 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4699, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4721, { i64, [0 x i64] }** %_4744
  %_4742 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4699, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4711, { i64, [0 x i64] }** %_4742
  %_4740 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4699, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4701, { i64, [0 x i64] }** %_4740
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4699, { i64, [0 x { i64, [0 x i64] }*] }** %_board4748
  %_raw_array4781 = call i64* @oat_alloc_array(i64 4)
  %_array4782 = bitcast i64* %_raw_array4781 to { i64, [0 x i64] }*
  %_4789 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4782, i32 0, i32 1, i32 3
  store i64 0, i64* %_4789
  %_4787 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4782, i32 0, i32 1, i32 2
  store i64 0, i64* %_4787
  %_4785 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4782, i32 0, i32 1, i32 1
  store i64 0, i64* %_4785
  %_4783 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4782, i32 0, i32 1, i32 0
  store i64 0, i64* %_4783
  %_raw_array4771 = call i64* @oat_alloc_array(i64 4)
  %_array4772 = bitcast i64* %_raw_array4771 to { i64, [0 x i64] }*
  %_4779 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4772, i32 0, i32 1, i32 3
  store i64 0, i64* %_4779
  %_4777 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4772, i32 0, i32 1, i32 2
  store i64 0, i64* %_4777
  %_4775 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4772, i32 0, i32 1, i32 1
  store i64 0, i64* %_4775
  %_4773 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4772, i32 0, i32 1, i32 0
  store i64 0, i64* %_4773
  %_raw_array4761 = call i64* @oat_alloc_array(i64 4)
  %_array4762 = bitcast i64* %_raw_array4761 to { i64, [0 x i64] }*
  %_4769 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4762, i32 0, i32 1, i32 3
  store i64 0, i64* %_4769
  %_4767 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4762, i32 0, i32 1, i32 2
  store i64 0, i64* %_4767
  %_4765 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4762, i32 0, i32 1, i32 1
  store i64 0, i64* %_4765
  %_4763 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4762, i32 0, i32 1, i32 0
  store i64 0, i64* %_4763
  %_raw_array4751 = call i64* @oat_alloc_array(i64 4)
  %_array4752 = bitcast i64* %_raw_array4751 to { i64, [0 x i64] }*
  %_4759 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4752, i32 0, i32 1, i32 3
  store i64 0, i64* %_4759
  %_4757 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4752, i32 0, i32 1, i32 2
  store i64 0, i64* %_4757
  %_4755 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4752, i32 0, i32 1, i32 1
  store i64 0, i64* %_4755
  %_4753 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4752, i32 0, i32 1, i32 0
  store i64 0, i64* %_4753
  %_raw_array4749 = call i64* @oat_alloc_array(i64 4)
  %_array4750 = bitcast i64* %_raw_array4749 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_4797 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4750, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4782, { i64, [0 x i64] }** %_4797
  %_4795 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4750, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4772, { i64, [0 x i64] }** %_4795
  %_4793 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4750, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4762, { i64, [0 x i64] }** %_4793
  %_4791 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4750, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4752, { i64, [0 x i64] }** %_4791
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4750, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board4799
  store i64 0, i64* %_i4800
  br label %_cond4829
_cond4829:
  %_id_i4801 = load i64, i64* %_i4800
  %_bop4802 = icmp slt i64 %_id_i4801, 4
  br i1 %_bop4802, label %_if4828, label %_merge4830
_if4828:
  %_raw_array4803 = call i64* @oat_alloc_array(i64 4)
  %_array4804 = bitcast i64* %_raw_array4803 to { i64, [0 x i64] }*
  %_id_new_board4805 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board4799
  %_id_i4806 = load i64, i64* %_i4800
  %_4807 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_new_board4805, i32 0, i32 1, i64 %_id_i4806
  store { i64, [0 x i64] }* %_array4804, { i64, [0 x i64] }** %_4807
  store i64 0, i64* %_j4808
  br label %_cond4824
_cond4824:
  %_id_j4809 = load i64, i64* %_j4808
  %_bop4810 = icmp slt i64 %_id_j4809, 4
  br i1 %_bop4810, label %_if4823, label %_merge4825
_if4823:
  %_id_board4811 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4748
  %_id_i4812 = load i64, i64* %_i4800
  %_id_j4813 = load i64, i64* %_j4808
  %_4814 = call i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4811, i64 %_id_i4812, i64 %_id_j4813)
  %_id_new_board4815 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board4799
  %_id_i4816 = load i64, i64* %_i4800
  %_index_pointer4818 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_new_board4815, i32 0, i32 1, i64 %_id_i4816
  %_index_value4817 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer4818
  %_id_j4819 = load i64, i64* %_j4808
  %_4820 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value4817, i32 0, i32 1, i64 %_id_j4819
  store i64 %_4814, i64* %_4820
  %_id_j4821 = load i64, i64* %_j4808
  %_bop4822 = add i64 %_id_j4821, 1
  store i64 %_bop4822, i64* %_j4808
  br label %_cond4824
_merge4825:
  %_id_i4826 = load i64, i64* %_i4800
  %_bop4827 = add i64 %_id_i4826, 1
  store i64 %_bop4827, i64* %_i4800
  br label %_cond4829
_merge4830:
  store i64 0, i64* %_i4831
  br label %_cond4855
_cond4855:
  %_id_i4832 = load i64, i64* %_i4831
  %_id_len4833 = load i64, i64* @len
  %_bop4834 = icmp slt i64 %_id_i4832, %_id_len4833
  br i1 %_bop4834, label %_if4854, label %_merge4856
_if4854:
  store i64 0, i64* %_j4835
  br label %_cond4850
_cond4850:
  %_id_j4836 = load i64, i64* %_j4835
  %_id_len4837 = load i64, i64* @len
  %_bop4838 = icmp slt i64 %_id_j4836, %_id_len4837
  br i1 %_bop4838, label %_if4849, label %_merge4851
_if4849:
  %_id_new_board4839 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board4799
  %_id_i4840 = load i64, i64* %_i4831
  %_index_pointer4842 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_new_board4839, i32 0, i32 1, i64 %_id_i4840
  %_index_value4841 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer4842
  %_id_j4843 = load i64, i64* %_j4835
  %_index_pointer4845 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value4841, i32 0, i32 1, i64 %_id_j4843
  %_index_value4844 = load i64, i64* %_index_pointer4845
  call void @print_int(i64 %_index_value4844)
  %_id_j4847 = load i64, i64* %_j4835
  %_bop4848 = add i64 %_id_j4847, 1
  store i64 %_bop4848, i64* %_j4835
  br label %_cond4850
_merge4851:
  %_id_i4852 = load i64, i64* %_i4831
  %_bop4853 = add i64 %_id_i4852, 1
  store i64 %_bop4853, i64* %_i4831
  br label %_cond4855
_merge4856:
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
