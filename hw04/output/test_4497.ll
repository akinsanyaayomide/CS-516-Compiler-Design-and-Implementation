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
  br label %_begin_if4972
_begin_if4972:
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
  br i1 %_bop4961, label %_then_branch4973, label %_else_branch4974
_then_branch4973:
  %_id_count4962 = load i64, i64* %_count4948
  %_id_board4963 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4945
  %_id_i4964 = load i64, i64* %_i4946
  %_index_pointer4966 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_board4963, i32 0, i32 1, i64 %_id_i4964
  %_index_value4965 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer4966
  %_id_j4967 = load i64, i64* %_j4947
  %_index_pointer4969 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value4965, i32 0, i32 1, i64 %_id_j4967
  %_index_value4968 = load i64, i64* %_index_pointer4969
  %_bop4970 = add i64 %_id_count4962, %_index_value4968
  ret i64 %_bop4970
_else_branch4974:
  %_id_count4971 = load i64, i64* %_count4948
  ret i64 %_id_count4971
}

define i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j) {
  %_board4857 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i4858 = alloca i64
  %_j4859 = alloca i64
  %_4860 = alloca i64
  %_4868 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_board4857
  store i64 %i, i64* %_i4858
  store i64 %j, i64* %_j4859
  %_id_board4861 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4857
  %_id_i4862 = load i64, i64* %_i4858
  %_index_pointer4864 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_board4861, i32 0, i32 1, i64 %_id_i4862
  %_index_value4863 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer4864
  %_id_j4865 = load i64, i64* %_j4859
  %_index_pointer4867 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value4863, i32 0, i32 1, i64 %_id_j4865
  %_index_value4866 = load i64, i64* %_index_pointer4867
  store i64 %_index_value4866, i64* %_4860
  store i64 0, i64* %_4868
  %_id_board4869 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4857
  %_id_i4870 = load i64, i64* %_i4858
  %_bop4871 = sub i64 %_id_i4870, 1
  %_id_j4872 = load i64, i64* %_j4859
  %_bop4873 = sub i64 %_id_j4872, 1
  %_id_count4874 = load i64, i64* %_4868
  %_4875 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4869, i64 %_bop4871, i64 %_bop4873, i64 %_id_count4874)
  store i64 %_4875, i64* %_4868
  %_id_board4876 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4857
  %_id_i4877 = load i64, i64* %_i4858
  %_bop4878 = sub i64 %_id_i4877, 1
  %_id_j4879 = load i64, i64* %_j4859
  %_id_count4880 = load i64, i64* %_4868
  %_4881 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4876, i64 %_bop4878, i64 %_id_j4879, i64 %_id_count4880)
  store i64 %_4881, i64* %_4868
  %_id_board4882 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4857
  %_id_i4883 = load i64, i64* %_i4858
  %_bop4884 = sub i64 %_id_i4883, 1
  %_id_j4885 = load i64, i64* %_j4859
  %_bop4886 = add i64 %_id_j4885, 1
  %_id_count4887 = load i64, i64* %_4868
  %_4888 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4882, i64 %_bop4884, i64 %_bop4886, i64 %_id_count4887)
  store i64 %_4888, i64* %_4868
  %_id_board4889 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4857
  %_id_i4890 = load i64, i64* %_i4858
  %_id_j4891 = load i64, i64* %_j4859
  %_bop4892 = sub i64 %_id_j4891, 1
  %_id_count4893 = load i64, i64* %_4868
  %_4894 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4889, i64 %_id_i4890, i64 %_bop4892, i64 %_id_count4893)
  store i64 %_4894, i64* %_4868
  %_id_board4895 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4857
  %_id_i4896 = load i64, i64* %_i4858
  %_id_j4897 = load i64, i64* %_j4859
  %_bop4898 = add i64 %_id_j4897, 1
  %_id_count4899 = load i64, i64* %_4868
  %_4900 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4895, i64 %_id_i4896, i64 %_bop4898, i64 %_id_count4899)
  store i64 %_4900, i64* %_4868
  %_id_board4901 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4857
  %_id_i4902 = load i64, i64* %_i4858
  %_bop4903 = add i64 %_id_i4902, 1
  %_id_j4904 = load i64, i64* %_j4859
  %_bop4905 = sub i64 %_id_j4904, 1
  %_id_count4906 = load i64, i64* %_4868
  %_4907 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4901, i64 %_bop4903, i64 %_bop4905, i64 %_id_count4906)
  store i64 %_4907, i64* %_4868
  %_id_board4908 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4857
  %_id_i4909 = load i64, i64* %_i4858
  %_bop4910 = add i64 %_id_i4909, 1
  %_id_j4911 = load i64, i64* %_j4859
  %_id_count4912 = load i64, i64* %_4868
  %_4913 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4908, i64 %_bop4910, i64 %_id_j4911, i64 %_id_count4912)
  store i64 %_4913, i64* %_4868
  %_id_board4914 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4857
  %_id_i4915 = load i64, i64* %_i4858
  %_bop4916 = add i64 %_id_i4915, 1
  %_id_j4917 = load i64, i64* %_j4859
  %_bop4918 = add i64 %_id_j4917, 1
  %_id_count4919 = load i64, i64* %_4868
  %_4920 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4914, i64 %_bop4916, i64 %_bop4918, i64 %_id_count4919)
  store i64 %_4920, i64* %_4868
  br label %_begin_if4935
_begin_if4935:
  %_id_alive4921 = load i64, i64* %_4860
  %_bop4922 = icmp eq i64 %_id_alive4921, 1
  br i1 %_bop4922, label %_then_branch4936, label %_else_branch4937
_then_branch4936:
  br label %_begin_if4931
_begin_if4931:
  %_id_count4923 = load i64, i64* %_4868
  %_bop4924 = icmp slt i64 %_id_count4923, 2
  br i1 %_bop4924, label %_then_branch4932, label %_else_branch4933
_then_branch4932:
  ret i64 0
_else_branch4933:
  br label %_begin_if4927
_begin_if4927:
  %_id_count4925 = load i64, i64* %_4868
  %_bop4926 = icmp slt i64 %_id_count4925, 4
  br i1 %_bop4926, label %_then_branch4928, label %_else_branch4929
_then_branch4928:
  ret i64 1
_else_branch4929:
  br label %_end_if4930
_end_if4930:
  br label %_end_if4934
_end_if4934:
  ret i64 0
_else_branch4937:
  br label %_end_if4938
_end_if4938:
  br label %_begin_if4941
_begin_if4941:
  %_id_count4939 = load i64, i64* %_4868
  %_bop4940 = icmp eq i64 %_id_count4939, 3
  br i1 %_bop4940, label %_then_branch4942, label %_else_branch4943
_then_branch4942:
  ret i64 1
_else_branch4943:
  ret i64 0
_end_if4944:
  ret i64 0
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4696 = alloca i64
  %_argv4697 = alloca { i64, [0 x i8*] }*
  %_4698 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_4749 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_4800 = alloca i64
  %_4808 = alloca i64
  %_4831 = alloca i64
  %_4835 = alloca i64
  store i64 %argc, i64* %_argc4696
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4697
  %_raw_array4731 = call i64* @oat_alloc_array(i64 4)
  %_array4732 = bitcast i64* %_raw_array4731 to { i64, [0 x i64] }*
  %_4739 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4732, i32 0, i32 1, i32 3
  store i64 0, i64* %_4739
  %_4737 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4732, i32 0, i32 1, i32 2
  store i64 0, i64* %_4737
  %_4735 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4732, i32 0, i32 1, i32 1
  store i64 0, i64* %_4735
  %_4733 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4732, i32 0, i32 1, i32 0
  store i64 0, i64* %_4733
  %_raw_array4721 = call i64* @oat_alloc_array(i64 4)
  %_array4722 = bitcast i64* %_raw_array4721 to { i64, [0 x i64] }*
  %_4729 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4722, i32 0, i32 1, i32 3
  store i64 0, i64* %_4729
  %_4727 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4722, i32 0, i32 1, i32 2
  store i64 1, i64* %_4727
  %_4725 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4722, i32 0, i32 1, i32 1
  store i64 1, i64* %_4725
  %_4723 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4722, i32 0, i32 1, i32 0
  store i64 1, i64* %_4723
  %_raw_array4711 = call i64* @oat_alloc_array(i64 4)
  %_array4712 = bitcast i64* %_raw_array4711 to { i64, [0 x i64] }*
  %_4719 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4712, i32 0, i32 1, i32 3
  store i64 1, i64* %_4719
  %_4717 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4712, i32 0, i32 1, i32 2
  store i64 1, i64* %_4717
  %_4715 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4712, i32 0, i32 1, i32 1
  store i64 1, i64* %_4715
  %_4713 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4712, i32 0, i32 1, i32 0
  store i64 0, i64* %_4713
  %_raw_array4701 = call i64* @oat_alloc_array(i64 4)
  %_array4702 = bitcast i64* %_raw_array4701 to { i64, [0 x i64] }*
  %_4709 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4702, i32 0, i32 1, i32 3
  store i64 0, i64* %_4709
  %_4707 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4702, i32 0, i32 1, i32 2
  store i64 0, i64* %_4707
  %_4705 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4702, i32 0, i32 1, i32 1
  store i64 0, i64* %_4705
  %_4703 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4702, i32 0, i32 1, i32 0
  store i64 0, i64* %_4703
  %_raw_array4699 = call i64* @oat_alloc_array(i64 4)
  %_array4700 = bitcast i64* %_raw_array4699 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_4747 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4700, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4732, { i64, [0 x i64] }** %_4747
  %_4745 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4700, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4722, { i64, [0 x i64] }** %_4745
  %_4743 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4700, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4712, { i64, [0 x i64] }** %_4743
  %_4741 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4700, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4702, { i64, [0 x i64] }** %_4741
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4700, { i64, [0 x { i64, [0 x i64] }*] }** %_4698
  %_raw_array4782 = call i64* @oat_alloc_array(i64 4)
  %_array4783 = bitcast i64* %_raw_array4782 to { i64, [0 x i64] }*
  %_4790 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4783, i32 0, i32 1, i32 3
  store i64 0, i64* %_4790
  %_4788 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4783, i32 0, i32 1, i32 2
  store i64 0, i64* %_4788
  %_4786 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4783, i32 0, i32 1, i32 1
  store i64 0, i64* %_4786
  %_4784 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4783, i32 0, i32 1, i32 0
  store i64 0, i64* %_4784
  %_raw_array4772 = call i64* @oat_alloc_array(i64 4)
  %_array4773 = bitcast i64* %_raw_array4772 to { i64, [0 x i64] }*
  %_4780 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4773, i32 0, i32 1, i32 3
  store i64 0, i64* %_4780
  %_4778 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4773, i32 0, i32 1, i32 2
  store i64 0, i64* %_4778
  %_4776 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4773, i32 0, i32 1, i32 1
  store i64 0, i64* %_4776
  %_4774 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4773, i32 0, i32 1, i32 0
  store i64 0, i64* %_4774
  %_raw_array4762 = call i64* @oat_alloc_array(i64 4)
  %_array4763 = bitcast i64* %_raw_array4762 to { i64, [0 x i64] }*
  %_4770 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4763, i32 0, i32 1, i32 3
  store i64 0, i64* %_4770
  %_4768 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4763, i32 0, i32 1, i32 2
  store i64 0, i64* %_4768
  %_4766 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4763, i32 0, i32 1, i32 1
  store i64 0, i64* %_4766
  %_4764 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4763, i32 0, i32 1, i32 0
  store i64 0, i64* %_4764
  %_raw_array4752 = call i64* @oat_alloc_array(i64 4)
  %_array4753 = bitcast i64* %_raw_array4752 to { i64, [0 x i64] }*
  %_4760 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4753, i32 0, i32 1, i32 3
  store i64 0, i64* %_4760
  %_4758 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4753, i32 0, i32 1, i32 2
  store i64 0, i64* %_4758
  %_4756 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4753, i32 0, i32 1, i32 1
  store i64 0, i64* %_4756
  %_4754 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4753, i32 0, i32 1, i32 0
  store i64 0, i64* %_4754
  %_raw_array4750 = call i64* @oat_alloc_array(i64 4)
  %_array4751 = bitcast i64* %_raw_array4750 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_4798 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4751, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4783, { i64, [0 x i64] }** %_4798
  %_4796 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4751, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4773, { i64, [0 x i64] }** %_4796
  %_4794 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4751, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4763, { i64, [0 x i64] }** %_4794
  %_4792 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4751, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4753, { i64, [0 x i64] }** %_4792
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4751, { i64, [0 x { i64, [0 x i64] }*] }** %_4749
  store i64 0, i64* %_4800
  br label %_cond4829
_cond4829:
  %_id_i4801 = load i64, i64* %_4800
  %_bop4802 = icmp slt i64 %_id_i4801, 4
  br i1 %_bop4802, label %_if4828, label %_merge4830
_if4828:
  %_raw_array4803 = call i64* @oat_alloc_array(i64 4)
  %_array4804 = bitcast i64* %_raw_array4803 to { i64, [0 x i64] }*
  %_id_new_board4805 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4749
  %_id_i4806 = load i64, i64* %_4800
  %_4807 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_new_board4805, i32 0, i32 1, i64 %_id_i4806
  store { i64, [0 x i64] }* %_array4804, { i64, [0 x i64] }** %_4807
  store i64 0, i64* %_4808
  br label %_cond4824
_cond4824:
  %_id_j4809 = load i64, i64* %_4808
  %_bop4810 = icmp slt i64 %_id_j4809, 4
  br i1 %_bop4810, label %_if4823, label %_merge4825
_if4823:
  %_id_board4811 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4698
  %_id_i4812 = load i64, i64* %_4800
  %_id_j4813 = load i64, i64* %_4808
  %_4814 = call i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4811, i64 %_id_i4812, i64 %_id_j4813)
  %_id_new_board4815 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4749
  %_id_i4816 = load i64, i64* %_4800
  %_index_pointer4818 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_new_board4815, i32 0, i32 1, i64 %_id_i4816
  %_index_value4817 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer4818
  %_id_j4819 = load i64, i64* %_4808
  %_4820 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value4817, i32 0, i32 1, i64 %_id_j4819
  store i64 %_4814, i64* %_4820
  %_id_j4821 = load i64, i64* %_4808
  %_bop4822 = add i64 %_id_j4821, 1
  store i64 %_bop4822, i64* %_4808
  br label %_cond4824
_merge4825:
  %_id_i4826 = load i64, i64* %_4800
  %_bop4827 = add i64 %_id_i4826, 1
  store i64 %_bop4827, i64* %_4800
  br label %_cond4829
_merge4830:
  store i64 0, i64* %_4831
  br label %_cond4855
_cond4855:
  %_id_i4832 = load i64, i64* %_4831
  %_id_len4833 = load i64, i64* @len
  %_bop4834 = icmp slt i64 %_id_i4832, %_id_len4833
  br i1 %_bop4834, label %_if4854, label %_merge4856
_if4854:
  store i64 0, i64* %_4835
  br label %_cond4850
_cond4850:
  %_id_j4836 = load i64, i64* %_4835
  %_id_len4837 = load i64, i64* @len
  %_bop4838 = icmp slt i64 %_id_j4836, %_id_len4837
  br i1 %_bop4838, label %_if4849, label %_merge4851
_if4849:
  %_id_new_board4839 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4749
  %_id_i4840 = load i64, i64* %_4831
  %_index_pointer4842 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_new_board4839, i32 0, i32 1, i64 %_id_i4840
  %_index_value4841 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer4842
  %_id_j4843 = load i64, i64* %_4835
  %_index_pointer4845 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value4841, i32 0, i32 1, i64 %_id_j4843
  %_index_value4844 = load i64, i64* %_index_pointer4845
  call void @print_int(i64 %_index_value4844)
  %_id_j4847 = load i64, i64* %_4835
  %_bop4848 = add i64 %_id_j4847, 1
  store i64 %_bop4848, i64* %_4835
  br label %_cond4850
_merge4851:
  %_id_i4852 = load i64, i64* %_4831
  %_bop4853 = add i64 %_id_i4852, 1
  store i64 %_bop4853, i64* %_4831
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
