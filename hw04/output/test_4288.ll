; generated from: hw4programs/maxsubsequence.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @maxsum({ i64, [0 x i64] }* %arr, i64 %size) {
  %_arr5766 = alloca { i64, [0 x i64] }*
  %_size5767 = alloca i64
  %_5768 = alloca { i64, [0 x i64] }*
  %_5772 = alloca i64
  %_5778 = alloca i64
  %_5782 = alloca i64
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr5766
  store i64 %size, i64* %_size5767
  %_id_size5769 = load i64, i64* %_size5767
  %_raw_array5770 = call i64* @oat_alloc_array(i64 %_id_size5769)
  %_array5771 = bitcast i64* %_raw_array5770 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5771, { i64, [0 x i64] }** %_5768
  store i64 0, i64* %_5772
  %_id_arr5773 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5766
  %_index_pointer5775 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr5773, i32 0, i32 1, i32 0
  %_index_value5774 = load i64, i64* %_index_pointer5775
  %_id_maxarr5776 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5768
  %_5777 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr5776, i32 0, i32 1, i32 0
  store i64 %_index_value5774, i64* %_5777
  store i64 0, i64* %_5778
  br label %_cond5848
_cond5848:
  %_id_i5779 = load i64, i64* %_5778
  %_id_size5780 = load i64, i64* %_size5767
  %_bop5781 = icmp slt i64 %_id_i5779, %_id_size5780
  br i1 %_bop5781, label %_if5847, label %_merge5849
_if5847:
  store i64 0, i64* %_5782
  br label %_cond5829
_cond5829:
  %_id_j5783 = load i64, i64* %_5782
  %_id_i5784 = load i64, i64* %_5778
  %_bop5785 = icmp slt i64 %_id_j5783, %_id_i5784
  br i1 %_bop5785, label %_if5828, label %_merge5830
_if5828:
  br label %_begin_if5822
_begin_if5822:
  %_id_arr5786 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5766
  %_id_i5787 = load i64, i64* %_5778
  %_index_pointer5789 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr5786, i32 0, i32 1, i64 %_id_i5787
  %_index_value5788 = load i64, i64* %_index_pointer5789
  %_id_arr5790 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5766
  %_id_j5791 = load i64, i64* %_5782
  %_index_pointer5793 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr5790, i32 0, i32 1, i64 %_id_j5791
  %_index_value5792 = load i64, i64* %_index_pointer5793
  %_bop5794 = icmp sgt i64 %_index_value5788, %_index_value5792
  %_id_maxarr5795 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5768
  %_id_i5796 = load i64, i64* %_5778
  %_index_pointer5798 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr5795, i32 0, i32 1, i64 %_id_i5796
  %_index_value5797 = load i64, i64* %_index_pointer5798
  %_id_maxarr5799 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5768
  %_id_j5800 = load i64, i64* %_5782
  %_index_pointer5802 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr5799, i32 0, i32 1, i64 %_id_j5800
  %_index_value5801 = load i64, i64* %_index_pointer5802
  %_id_arr5803 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5766
  %_id_i5804 = load i64, i64* %_5778
  %_index_pointer5806 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr5803, i32 0, i32 1, i64 %_id_i5804
  %_index_value5805 = load i64, i64* %_index_pointer5806
  %_bop5807 = add i64 %_index_value5801, %_index_value5805
  %_bop5808 = icmp slt i64 %_index_value5797, %_bop5807
  %_bop5809 = and i1 %_bop5794, %_bop5808
  br i1 %_bop5809, label %_then_branch5823, label %_else_branch5824
_then_branch5823:
  %_id_maxarr5810 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5768
  %_id_j5811 = load i64, i64* %_5782
  %_index_pointer5813 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr5810, i32 0, i32 1, i64 %_id_j5811
  %_index_value5812 = load i64, i64* %_index_pointer5813
  %_id_arr5814 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5766
  %_id_i5815 = load i64, i64* %_5778
  %_index_pointer5817 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr5814, i32 0, i32 1, i64 %_id_i5815
  %_index_value5816 = load i64, i64* %_index_pointer5817
  %_bop5818 = add i64 %_index_value5812, %_index_value5816
  %_id_maxarr5819 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5768
  %_id_i5820 = load i64, i64* %_5778
  %_5821 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr5819, i32 0, i32 1, i64 %_id_i5820
  store i64 %_bop5818, i64* %_5821
  br label %_end_if5825
_else_branch5824:
  br label %_end_if5825
_end_if5825:
  %_id_j5826 = load i64, i64* %_5782
  %_bop5827 = add i64 %_id_j5826, 1
  store i64 %_bop5827, i64* %_5782
  br label %_cond5829
_merge5830:
  br label %_begin_if5841
_begin_if5841:
  %_id_maxs5831 = load i64, i64* %_5772
  %_id_maxarr5832 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5768
  %_id_i5833 = load i64, i64* %_5778
  %_index_pointer5835 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr5832, i32 0, i32 1, i64 %_id_i5833
  %_index_value5834 = load i64, i64* %_index_pointer5835
  %_bop5836 = icmp slt i64 %_id_maxs5831, %_index_value5834
  br i1 %_bop5836, label %_then_branch5842, label %_else_branch5843
_then_branch5842:
  %_id_maxarr5837 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5768
  %_id_i5838 = load i64, i64* %_5778
  %_index_pointer5840 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_maxarr5837, i32 0, i32 1, i64 %_id_i5838
  %_index_value5839 = load i64, i64* %_index_pointer5840
  store i64 %_index_value5839, i64* %_5772
  br label %_end_if5844
_else_branch5843:
  br label %_end_if5844
_end_if5844:
  %_id_i5845 = load i64, i64* %_5778
  %_bop5846 = add i64 %_id_i5845, 1
  store i64 %_bop5846, i64* %_5778
  br label %_cond5848
_merge5849:
  %_id_maxs5850 = load i64, i64* %_5772
  ret i64 %_id_maxs5850
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5736 = alloca i64
  %_argv5737 = alloca { i64, [0 x i8*] }*
  %_5738 = alloca { i64, [0 x i64] }*
  %_5762 = alloca i64
  store i64 %argc, i64* %_argc5736
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5737
  %_raw_array5739 = call i64* @oat_alloc_array(i64 7)
  %_array5740 = bitcast i64* %_raw_array5739 to { i64, [0 x i64] }*
  %_5761 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5740, i32 0, i32 1, i32 6
  store i64 5, i64* %_5759
  %_5758 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5740, i32 0, i32 1, i32 5
  store i64 4, i64* %_5756
  %_5755 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5740, i32 0, i32 1, i32 4
  store i64 101, i64* %_5753
  %_5752 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5740, i32 0, i32 1, i32 3
  store i64 3, i64* %_5750
  %_5749 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5740, i32 0, i32 1, i32 2
  store i64 2, i64* %_5747
  %_5746 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5740, i32 0, i32 1, i32 1
  store i64 101, i64* %_5744
  %_5743 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5740, i32 0, i32 1, i32 0
  store i64 1, i64* %_5741
  store { i64, [0 x i64] }* %_array5740, { i64, [0 x i64] }** %_5738
  %_id_array5763 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5738
  %_5764 = call i64 @maxsum({ i64, [0 x i64] }* %_id_array5763, i64 7)
  store i64 %_5764, i64* %_5762
  %_id_max_ans5765 = load i64, i64* %_5762
  ret i64 %_id_max_ans5765
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
