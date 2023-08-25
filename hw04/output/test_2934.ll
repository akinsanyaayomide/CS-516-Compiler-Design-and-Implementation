; generated from: hw4programs/run42.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc670 = alloca i64
  %_argv671 = alloca { i64, [0 x i8*] }*
  %_672 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_687 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_702 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_717 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_732 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc670
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv671
  %_raw_array679 = call i64* @oat_alloc_array(i64 1)
  %_array680 = bitcast i64* %_raw_array679 to { i64, [0 x i64] }*
  %_raw_array677 = call i64* @oat_alloc_array(i64 1)
  %_array678 = bitcast i64* %_raw_array677 to { i64, [0 x i64] }*
  %_raw_array675 = call i64* @oat_alloc_array(i64 1)
  %_array676 = bitcast i64* %_raw_array675 to { i64, [0 x i64] }*
  %_raw_array673 = call i64* @oat_alloc_array(i64 3)
  %_array674 = bitcast i64* %_raw_array673 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_685 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array674, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array680, { i64, [0 x i64] }** %_685
  %_683 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array674, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array678, { i64, [0 x i64] }** %_683
  %_681 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array674, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array676, { i64, [0 x i64] }** %_681
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array674, { i64, [0 x { i64, [0 x i64] }*] }** %_672
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
  %_raw_array733 = call i64* @oat_alloc_array(i64 3)
  %_array734 = bitcast i64* %_raw_array733 to { i64, [0 x i64] }*
  %_739 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array734, i32 0, i32 1, i32 2
  store i64 2, i64* %_739
  %_737 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array734, i32 0, i32 1, i32 1
  store i64 1, i64* %_737
  %_735 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array734, i32 0, i32 1, i32 0
  store i64 0, i64* %_735
  store { i64, [0 x i64] }* %_array734, { i64, [0 x i64] }** %_732
  %_id_a5741 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_732
  %_id_a2742 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_687
  %_743 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2742, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_id_a5741, { i64, [0 x i64] }** %_743
  %_id_a2744 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_687
  %_index_pointer745 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2744, i32 0, i32 1, i32 0
  %_index_value746 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer745
  %_747 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value746, i32 0, i32 1, i32 0
  store i64 2, i64* %_747
  %_id_a2748 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_687
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2748, { i64, [0 x { i64, [0 x i64] }*] }** %_672
  %_id_a1749 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_672
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a1749, { i64, [0 x { i64, [0 x i64] }*] }** %_702
  %_id_a4750 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_717
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a4750, { i64, [0 x { i64, [0 x i64] }*] }** %_672
  %_id_a3751 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_702
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a3751, { i64, [0 x { i64, [0 x i64] }*] }** %_687
  %_id_a2752 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_687
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2752, { i64, [0 x { i64, [0 x i64] }*] }** %_717
  %_id_a4753 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_717
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a4753, { i64, [0 x { i64, [0 x i64] }*] }** %_702
  %_id_a3754 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_702
  %_index_pointer755 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a3754, i32 0, i32 1, i32 0
  %_index_value756 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer755
  %_index_pointer757 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value756, i32 0, i32 1, i32 0
  %_index_value758 = load i64, i64* %_index_pointer757
  ret i64 %_index_value758
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
