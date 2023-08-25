; generated from: hw4programs/run42.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc685 = alloca i64
  %_argv686 = alloca { i64, [0 x i8*] }*
  %_a1701 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a2716 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a3731 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a4746 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a5755 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc685
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv686
  %_raw_array693 = call i64* @oat_alloc_array(i64 1)
  %_array694 = bitcast i64* %_raw_array693 to { i64, [0 x i64] }*
  %_raw_array691 = call i64* @oat_alloc_array(i64 1)
  %_array692 = bitcast i64* %_raw_array691 to { i64, [0 x i64] }*
  %_raw_array689 = call i64* @oat_alloc_array(i64 1)
  %_array690 = bitcast i64* %_raw_array689 to { i64, [0 x i64] }*
  %_raw_array687 = call i64* @oat_alloc_array(i64 3)
  %_array688 = bitcast i64* %_raw_array687 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_699 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array688, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array694, { i64, [0 x i64] }** %_699
  %_697 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array688, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array692, { i64, [0 x i64] }** %_697
  %_695 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array688, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array690, { i64, [0 x i64] }** %_695
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array688, { i64, [0 x { i64, [0 x i64] }*] }** %_a1701
  %_raw_array708 = call i64* @oat_alloc_array(i64 1)
  %_array709 = bitcast i64* %_raw_array708 to { i64, [0 x i64] }*
  %_raw_array706 = call i64* @oat_alloc_array(i64 1)
  %_array707 = bitcast i64* %_raw_array706 to { i64, [0 x i64] }*
  %_raw_array704 = call i64* @oat_alloc_array(i64 1)
  %_array705 = bitcast i64* %_raw_array704 to { i64, [0 x i64] }*
  %_raw_array702 = call i64* @oat_alloc_array(i64 3)
  %_array703 = bitcast i64* %_raw_array702 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_714 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array703, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array709, { i64, [0 x i64] }** %_714
  %_712 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array703, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array707, { i64, [0 x i64] }** %_712
  %_710 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array703, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array705, { i64, [0 x i64] }** %_710
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array703, { i64, [0 x { i64, [0 x i64] }*] }** %_a2716
  %_raw_array723 = call i64* @oat_alloc_array(i64 1)
  %_array724 = bitcast i64* %_raw_array723 to { i64, [0 x i64] }*
  %_raw_array721 = call i64* @oat_alloc_array(i64 1)
  %_array722 = bitcast i64* %_raw_array721 to { i64, [0 x i64] }*
  %_raw_array719 = call i64* @oat_alloc_array(i64 1)
  %_array720 = bitcast i64* %_raw_array719 to { i64, [0 x i64] }*
  %_raw_array717 = call i64* @oat_alloc_array(i64 3)
  %_array718 = bitcast i64* %_raw_array717 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_729 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array718, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array724, { i64, [0 x i64] }** %_729
  %_727 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array718, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array722, { i64, [0 x i64] }** %_727
  %_725 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array718, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array720, { i64, [0 x i64] }** %_725
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array718, { i64, [0 x { i64, [0 x i64] }*] }** %_a3731
  %_raw_array738 = call i64* @oat_alloc_array(i64 1)
  %_array739 = bitcast i64* %_raw_array738 to { i64, [0 x i64] }*
  %_raw_array736 = call i64* @oat_alloc_array(i64 1)
  %_array737 = bitcast i64* %_raw_array736 to { i64, [0 x i64] }*
  %_raw_array734 = call i64* @oat_alloc_array(i64 1)
  %_array735 = bitcast i64* %_raw_array734 to { i64, [0 x i64] }*
  %_raw_array732 = call i64* @oat_alloc_array(i64 3)
  %_array733 = bitcast i64* %_raw_array732 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_744 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array733, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array739, { i64, [0 x i64] }** %_744
  %_742 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array733, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array737, { i64, [0 x i64] }** %_742
  %_740 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array733, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array735, { i64, [0 x i64] }** %_740
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array733, { i64, [0 x { i64, [0 x i64] }*] }** %_a4746
  %_raw_array747 = call i64* @oat_alloc_array(i64 3)
  %_array748 = bitcast i64* %_raw_array747 to { i64, [0 x i64] }*
  %_753 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array748, i32 0, i32 1, i32 2
  store i64 2, i64* %_753
  %_751 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array748, i32 0, i32 1, i32 1
  store i64 1, i64* %_751
  %_749 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array748, i32 0, i32 1, i32 0
  store i64 0, i64* %_749
  store { i64, [0 x i64] }* %_array748, { i64, [0 x i64] }** %_a5755
  %_id_a5756 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5755
  %_id_a2757 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2716
  %_758 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2757, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_id_a5756, { i64, [0 x i64] }** %_758
  %_id_a2759 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2716
  %_index_pointer761 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2759, i32 0, i32 1, i32 0
  %_index_value760 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer761
  %_762 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value760, i32 0, i32 1, i32 0
  store i64 2, i64* %_762
  %_id_a2763 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2716
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2763, { i64, [0 x { i64, [0 x i64] }*] }** %_a1701
  %_id_a1764 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1701
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a1764, { i64, [0 x { i64, [0 x i64] }*] }** %_a3731
  %_id_a4765 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4746
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a4765, { i64, [0 x { i64, [0 x i64] }*] }** %_a1701
  %_id_a3766 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3731
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a3766, { i64, [0 x { i64, [0 x i64] }*] }** %_a2716
  %_id_a2767 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2716
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2767, { i64, [0 x { i64, [0 x i64] }*] }** %_a4746
  %_id_a4768 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4746
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a4768, { i64, [0 x { i64, [0 x i64] }*] }** %_a3731
  %_id_a3769 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3731
  %_index_pointer771 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a3769, i32 0, i32 1, i32 0
  %_index_value770 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer771
  %_index_pointer773 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value770, i32 0, i32 1, i32 0
  %_index_value772 = load i64, i64* %_index_pointer773
  ret i64 %_index_value772
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
