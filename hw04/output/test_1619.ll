; generated from: hw4programs/run42.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc685 = alloca i64
  %_argv686 = alloca { i64, [0 x i8*] }*
  %_687 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_702 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_717 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_732 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_747 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc685
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv686
  %_raw_array694 = call i64* @oat_alloc_array(i64 1)
  %_array695 = bitcast i64* %_raw_array694 to { i64, [0 x i64] }*
  %_raw_array692 = call i64* @oat_alloc_array(i64 1)
  %_array693 = bitcast i64* %_raw_array692 to { i64, [0 x i64] }*
  %_raw_array690 = call i64* @oat_alloc_array(i64 1)
  %_array691 = bitcast i64* %_raw_array690 to { i64, [0 x i64] }*
  %_raw_array688 = call i64* @oat_alloc_array(i64 3)
  %_array689 = bitcast i64* %_raw_array688 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_700 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array689, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array695, { i64, [0 x i64] }** %_700
  %_698 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array689, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array693, { i64, [0 x i64] }** %_698
  %_696 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array689, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array691, { i64, [0 x i64] }** %_696
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array689, { i64, [0 x { i64, [0 x i64] }*] }** %_687
  %_raw_array709 = call i64* @oat_alloc_array(i64 1)
  %_array710 = bitcast i64* %_raw_array709 to { i64, [0 x i64] }*
  %_raw_array707 = call i64* @oat_alloc_array(i64 1)
  %_array708 = bitcast i64* %_raw_array707 to { i64, [0 x i64] }*
  %_raw_array705 = call i64* @oat_alloc_array(i64 1)
  %_array706 = bitcast i64* %_raw_array705 to { i64, [0 x i64] }*
  %_raw_array703 = call i64* @oat_alloc_array(i64 3)
  %_array704 = bitcast i64* %_raw_array703 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_715 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array704, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array710, { i64, [0 x i64] }** %_715
  %_713 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array704, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array708, { i64, [0 x i64] }** %_713
  %_711 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array704, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array706, { i64, [0 x i64] }** %_711
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array704, { i64, [0 x { i64, [0 x i64] }*] }** %_702
  %_raw_array724 = call i64* @oat_alloc_array(i64 1)
  %_array725 = bitcast i64* %_raw_array724 to { i64, [0 x i64] }*
  %_raw_array722 = call i64* @oat_alloc_array(i64 1)
  %_array723 = bitcast i64* %_raw_array722 to { i64, [0 x i64] }*
  %_raw_array720 = call i64* @oat_alloc_array(i64 1)
  %_array721 = bitcast i64* %_raw_array720 to { i64, [0 x i64] }*
  %_raw_array718 = call i64* @oat_alloc_array(i64 3)
  %_array719 = bitcast i64* %_raw_array718 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_730 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array719, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array725, { i64, [0 x i64] }** %_730
  %_728 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array719, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array723, { i64, [0 x i64] }** %_728
  %_726 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array719, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array721, { i64, [0 x i64] }** %_726
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array719, { i64, [0 x { i64, [0 x i64] }*] }** %_717
  %_raw_array739 = call i64* @oat_alloc_array(i64 1)
  %_array740 = bitcast i64* %_raw_array739 to { i64, [0 x i64] }*
  %_raw_array737 = call i64* @oat_alloc_array(i64 1)
  %_array738 = bitcast i64* %_raw_array737 to { i64, [0 x i64] }*
  %_raw_array735 = call i64* @oat_alloc_array(i64 1)
  %_array736 = bitcast i64* %_raw_array735 to { i64, [0 x i64] }*
  %_raw_array733 = call i64* @oat_alloc_array(i64 3)
  %_array734 = bitcast i64* %_raw_array733 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_745 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array734, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array740, { i64, [0 x i64] }** %_745
  %_743 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array734, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array738, { i64, [0 x i64] }** %_743
  %_741 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array734, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array736, { i64, [0 x i64] }** %_741
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array734, { i64, [0 x { i64, [0 x i64] }*] }** %_732
  %_raw_array748 = call i64* @oat_alloc_array(i64 3)
  %_array749 = bitcast i64* %_raw_array748 to { i64, [0 x i64] }*
  %_754 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array749, i32 0, i32 1, i32 2
  store i64 2, i64* %_754
  %_752 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array749, i32 0, i32 1, i32 1
  store i64 1, i64* %_752
  %_750 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array749, i32 0, i32 1, i32 0
  store i64 0, i64* %_750
  store { i64, [0 x i64] }* %_array749, { i64, [0 x i64] }** %_747
  %_id_a5756 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_747
  %_id_a2757 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_702
  %_758 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2757, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_id_a5756, { i64, [0 x i64] }** %_758
  %_id_a2759 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_702
  %_index_pointer760 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2759, i32 0, i32 1, i32 0
  %_index_value761 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer760
  %_762 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value761, i32 0, i32 1, i32 0
  store i64 2, i64* %_762
  %_id_a2763 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_702
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2763, { i64, [0 x { i64, [0 x i64] }*] }** %_687
  %_id_a1764 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_687
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a1764, { i64, [0 x { i64, [0 x i64] }*] }** %_717
  %_id_a4765 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_732
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a4765, { i64, [0 x { i64, [0 x i64] }*] }** %_687
  %_id_a3766 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_717
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a3766, { i64, [0 x { i64, [0 x i64] }*] }** %_702
  %_id_a2767 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_702
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2767, { i64, [0 x { i64, [0 x i64] }*] }** %_732
  %_id_a4768 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_732
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a4768, { i64, [0 x { i64, [0 x i64] }*] }** %_717
  %_id_a3769 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_717
  %_index_pointer770 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a3769, i32 0, i32 1, i32 0
  %_index_value771 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer770
  %_index_pointer772 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value771, i32 0, i32 1, i32 0
  %_index_value773 = load i64, i64* %_index_pointer772
  ret i64 %_index_value773
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
