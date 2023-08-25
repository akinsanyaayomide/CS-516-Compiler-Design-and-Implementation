; generated from: hw4programs/run42.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc689 = alloca i64
  %_argv690 = alloca { i64, [0 x i8*] }*
  %_691 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_706 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_721 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_736 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_751 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc689
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv690
  %_raw_array698 = call i64* @oat_alloc_array(i64 1)
  %_array699 = bitcast i64* %_raw_array698 to { i64, [0 x i64] }*
  %_raw_array696 = call i64* @oat_alloc_array(i64 1)
  %_array697 = bitcast i64* %_raw_array696 to { i64, [0 x i64] }*
  %_raw_array694 = call i64* @oat_alloc_array(i64 1)
  %_array695 = bitcast i64* %_raw_array694 to { i64, [0 x i64] }*
  %_raw_array692 = call i64* @oat_alloc_array(i64 3)
  %_array693 = bitcast i64* %_raw_array692 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_704 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array693, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array699, { i64, [0 x i64] }** %_704
  %_702 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array693, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array697, { i64, [0 x i64] }** %_702
  %_700 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array693, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array695, { i64, [0 x i64] }** %_700
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array693, { i64, [0 x { i64, [0 x i64] }*] }** %_691
  %_raw_array713 = call i64* @oat_alloc_array(i64 1)
  %_array714 = bitcast i64* %_raw_array713 to { i64, [0 x i64] }*
  %_raw_array711 = call i64* @oat_alloc_array(i64 1)
  %_array712 = bitcast i64* %_raw_array711 to { i64, [0 x i64] }*
  %_raw_array709 = call i64* @oat_alloc_array(i64 1)
  %_array710 = bitcast i64* %_raw_array709 to { i64, [0 x i64] }*
  %_raw_array707 = call i64* @oat_alloc_array(i64 3)
  %_array708 = bitcast i64* %_raw_array707 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_719 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array708, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array714, { i64, [0 x i64] }** %_719
  %_717 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array708, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array712, { i64, [0 x i64] }** %_717
  %_715 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array708, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array710, { i64, [0 x i64] }** %_715
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array708, { i64, [0 x { i64, [0 x i64] }*] }** %_706
  %_raw_array728 = call i64* @oat_alloc_array(i64 1)
  %_array729 = bitcast i64* %_raw_array728 to { i64, [0 x i64] }*
  %_raw_array726 = call i64* @oat_alloc_array(i64 1)
  %_array727 = bitcast i64* %_raw_array726 to { i64, [0 x i64] }*
  %_raw_array724 = call i64* @oat_alloc_array(i64 1)
  %_array725 = bitcast i64* %_raw_array724 to { i64, [0 x i64] }*
  %_raw_array722 = call i64* @oat_alloc_array(i64 3)
  %_array723 = bitcast i64* %_raw_array722 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_734 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array723, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array729, { i64, [0 x i64] }** %_734
  %_732 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array723, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array727, { i64, [0 x i64] }** %_732
  %_730 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array723, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array725, { i64, [0 x i64] }** %_730
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array723, { i64, [0 x { i64, [0 x i64] }*] }** %_721
  %_raw_array743 = call i64* @oat_alloc_array(i64 1)
  %_array744 = bitcast i64* %_raw_array743 to { i64, [0 x i64] }*
  %_raw_array741 = call i64* @oat_alloc_array(i64 1)
  %_array742 = bitcast i64* %_raw_array741 to { i64, [0 x i64] }*
  %_raw_array739 = call i64* @oat_alloc_array(i64 1)
  %_array740 = bitcast i64* %_raw_array739 to { i64, [0 x i64] }*
  %_raw_array737 = call i64* @oat_alloc_array(i64 3)
  %_array738 = bitcast i64* %_raw_array737 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_749 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array738, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array744, { i64, [0 x i64] }** %_749
  %_747 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array738, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array742, { i64, [0 x i64] }** %_747
  %_745 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array738, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array740, { i64, [0 x i64] }** %_745
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array738, { i64, [0 x { i64, [0 x i64] }*] }** %_736
  %_raw_array752 = call i64* @oat_alloc_array(i64 3)
  %_array753 = bitcast i64* %_raw_array752 to { i64, [0 x i64] }*
  %_758 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array753, i32 0, i32 1, i32 2
  store i64 2, i64* %_758
  %_756 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array753, i32 0, i32 1, i32 1
  store i64 1, i64* %_756
  %_754 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array753, i32 0, i32 1, i32 0
  store i64 0, i64* %_754
  store { i64, [0 x i64] }* %_array753, { i64, [0 x i64] }** %_751
  %_id_a5760 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_751
  %_id_a2761 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_706
  %_762 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2761, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_id_a5760, { i64, [0 x i64] }** %_762
  %_id_a2763 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_706
  %_index_pointer764 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2763, i32 0, i32 1, i32 0
  %_index_value765 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer764
  %_766 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value765, i32 0, i32 1, i32 0
  store i64 2, i64* %_766
  %_id_a2767 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_706
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2767, { i64, [0 x { i64, [0 x i64] }*] }** %_691
  %_id_a1768 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_691
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a1768, { i64, [0 x { i64, [0 x i64] }*] }** %_721
  %_id_a4769 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_736
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a4769, { i64, [0 x { i64, [0 x i64] }*] }** %_691
  %_id_a3770 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_721
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a3770, { i64, [0 x { i64, [0 x i64] }*] }** %_706
  %_id_a2771 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_706
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2771, { i64, [0 x { i64, [0 x i64] }*] }** %_736
  %_id_a4772 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_736
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a4772, { i64, [0 x { i64, [0 x i64] }*] }** %_721
  %_id_a3773 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_721
  %_index_pointer774 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a3773, i32 0, i32 1, i32 0
  %_index_value775 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer774
  %_index_pointer776 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value775, i32 0, i32 1, i32 0
  %_index_value777 = load i64, i64* %_index_pointer776
  ret i64 %_index_value777
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
