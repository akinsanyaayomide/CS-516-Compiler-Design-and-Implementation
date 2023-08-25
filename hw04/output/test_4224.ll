; generated from: hw4programs/run42.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc739 = alloca i64
  %_argv740 = alloca { i64, [0 x i8*] }*
  %_741 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_759 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_777 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_795 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_813 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc739
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv740
  %_raw_array748 = call i64* @oat_alloc_array(i64 1)
  %_array749 = bitcast i64* %_raw_array748 to { i64, [0 x i64] }*
  %_raw_array746 = call i64* @oat_alloc_array(i64 1)
  %_array747 = bitcast i64* %_raw_array746 to { i64, [0 x i64] }*
  %_raw_array744 = call i64* @oat_alloc_array(i64 1)
  %_array745 = bitcast i64* %_raw_array744 to { i64, [0 x i64] }*
  %_raw_array742 = call i64* @oat_alloc_array(i64 3)
  %_array743 = bitcast i64* %_raw_array742 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_758 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array743, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array749, { i64, [0 x i64] }** %_756
  %_755 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array743, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array747, { i64, [0 x i64] }** %_753
  %_752 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array743, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array745, { i64, [0 x i64] }** %_750
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array743, { i64, [0 x { i64, [0 x i64] }*] }** %_741
  %_raw_array766 = call i64* @oat_alloc_array(i64 1)
  %_array767 = bitcast i64* %_raw_array766 to { i64, [0 x i64] }*
  %_raw_array764 = call i64* @oat_alloc_array(i64 1)
  %_array765 = bitcast i64* %_raw_array764 to { i64, [0 x i64] }*
  %_raw_array762 = call i64* @oat_alloc_array(i64 1)
  %_array763 = bitcast i64* %_raw_array762 to { i64, [0 x i64] }*
  %_raw_array760 = call i64* @oat_alloc_array(i64 3)
  %_array761 = bitcast i64* %_raw_array760 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_776 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array761, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array767, { i64, [0 x i64] }** %_774
  %_773 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array761, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array765, { i64, [0 x i64] }** %_771
  %_770 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array761, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array763, { i64, [0 x i64] }** %_768
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array761, { i64, [0 x { i64, [0 x i64] }*] }** %_759
  %_raw_array784 = call i64* @oat_alloc_array(i64 1)
  %_array785 = bitcast i64* %_raw_array784 to { i64, [0 x i64] }*
  %_raw_array782 = call i64* @oat_alloc_array(i64 1)
  %_array783 = bitcast i64* %_raw_array782 to { i64, [0 x i64] }*
  %_raw_array780 = call i64* @oat_alloc_array(i64 1)
  %_array781 = bitcast i64* %_raw_array780 to { i64, [0 x i64] }*
  %_raw_array778 = call i64* @oat_alloc_array(i64 3)
  %_array779 = bitcast i64* %_raw_array778 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_794 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array779, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array785, { i64, [0 x i64] }** %_792
  %_791 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array779, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array783, { i64, [0 x i64] }** %_789
  %_788 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array779, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array781, { i64, [0 x i64] }** %_786
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array779, { i64, [0 x { i64, [0 x i64] }*] }** %_777
  %_raw_array802 = call i64* @oat_alloc_array(i64 1)
  %_array803 = bitcast i64* %_raw_array802 to { i64, [0 x i64] }*
  %_raw_array800 = call i64* @oat_alloc_array(i64 1)
  %_array801 = bitcast i64* %_raw_array800 to { i64, [0 x i64] }*
  %_raw_array798 = call i64* @oat_alloc_array(i64 1)
  %_array799 = bitcast i64* %_raw_array798 to { i64, [0 x i64] }*
  %_raw_array796 = call i64* @oat_alloc_array(i64 3)
  %_array797 = bitcast i64* %_raw_array796 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_812 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array797, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array803, { i64, [0 x i64] }** %_810
  %_809 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array797, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array801, { i64, [0 x i64] }** %_807
  %_806 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array797, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array799, { i64, [0 x i64] }** %_804
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array797, { i64, [0 x { i64, [0 x i64] }*] }** %_795
  %_raw_array814 = call i64* @oat_alloc_array(i64 3)
  %_array815 = bitcast i64* %_raw_array814 to { i64, [0 x i64] }*
  %_824 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array815, i32 0, i32 1, i32 2
  store i64 2, i64* %_822
  %_821 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array815, i32 0, i32 1, i32 1
  store i64 1, i64* %_819
  %_818 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array815, i32 0, i32 1, i32 0
  store i64 0, i64* %_816
  store { i64, [0 x i64] }* %_array815, { i64, [0 x i64] }** %_813
  %_id_a5825 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_813
  %_id_a2826 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_759
  %_827 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2826, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_id_a5825, { i64, [0 x i64] }** %_827
  %_id_a2828 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_759
  %_index_pointer830 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2828, i32 0, i32 1, i32 0
  %_index_value829 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer830
  %_831 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value829, i32 0, i32 1, i32 0
  store i64 2, i64* %_831
  %_id_a2832 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_759
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2832, { i64, [0 x { i64, [0 x i64] }*] }** %_741
  %_id_a1833 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_741
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a1833, { i64, [0 x { i64, [0 x i64] }*] }** %_777
  %_id_a4834 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_795
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a4834, { i64, [0 x { i64, [0 x i64] }*] }** %_741
  %_id_a3835 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_777
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a3835, { i64, [0 x { i64, [0 x i64] }*] }** %_759
  %_id_a2836 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_759
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2836, { i64, [0 x { i64, [0 x i64] }*] }** %_795
  %_id_a4837 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_795
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a4837, { i64, [0 x { i64, [0 x i64] }*] }** %_777
  %_id_a3838 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_777
  %_index_pointer840 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a3838, i32 0, i32 1, i32 0
  %_index_value839 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer840
  %_index_pointer842 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value839, i32 0, i32 1, i32 0
  %_index_value841 = load i64, i64* %_index_pointer842
  ret i64 %_index_value841
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
