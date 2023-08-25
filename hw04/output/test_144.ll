; generated from: hw4programs/run42.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc658 = alloca i64
  %_argv659 = alloca { i64, [0 x i8*] }*
  %_660 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_675 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_690 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_705 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_720 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc658
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv659
  %_raw_array667 = call i64* @oat_alloc_array(i64 1)
  %_array668 = bitcast i64* %_raw_array667 to { i64, [0 x i64] }*
  %_raw_array665 = call i64* @oat_alloc_array(i64 1)
  %_array666 = bitcast i64* %_raw_array665 to { i64, [0 x i64] }*
  %_raw_array663 = call i64* @oat_alloc_array(i64 1)
  %_array664 = bitcast i64* %_raw_array663 to { i64, [0 x i64] }*
  %_raw_array661 = call i64* @oat_alloc_array(i64 3)
  %_array662 = bitcast i64* %_raw_array661 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_673 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array662, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array668, { i64, [0 x i64] }** %_673
  %_671 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array662, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array666, { i64, [0 x i64] }** %_671
  %_669 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array662, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array664, { i64, [0 x i64] }** %_669
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array662, { i64, [0 x { i64, [0 x i64] }*] }** %_660
  %_raw_array682 = call i64* @oat_alloc_array(i64 1)
  %_array683 = bitcast i64* %_raw_array682 to { i64, [0 x i64] }*
  %_raw_array680 = call i64* @oat_alloc_array(i64 1)
  %_array681 = bitcast i64* %_raw_array680 to { i64, [0 x i64] }*
  %_raw_array678 = call i64* @oat_alloc_array(i64 1)
  %_array679 = bitcast i64* %_raw_array678 to { i64, [0 x i64] }*
  %_raw_array676 = call i64* @oat_alloc_array(i64 3)
  %_array677 = bitcast i64* %_raw_array676 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_688 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array677, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array683, { i64, [0 x i64] }** %_688
  %_686 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array677, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array681, { i64, [0 x i64] }** %_686
  %_684 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array677, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array679, { i64, [0 x i64] }** %_684
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array677, { i64, [0 x { i64, [0 x i64] }*] }** %_675
  %_raw_array697 = call i64* @oat_alloc_array(i64 1)
  %_array698 = bitcast i64* %_raw_array697 to { i64, [0 x i64] }*
  %_raw_array695 = call i64* @oat_alloc_array(i64 1)
  %_array696 = bitcast i64* %_raw_array695 to { i64, [0 x i64] }*
  %_raw_array693 = call i64* @oat_alloc_array(i64 1)
  %_array694 = bitcast i64* %_raw_array693 to { i64, [0 x i64] }*
  %_raw_array691 = call i64* @oat_alloc_array(i64 3)
  %_array692 = bitcast i64* %_raw_array691 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_703 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array692, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array698, { i64, [0 x i64] }** %_703
  %_701 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array692, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array696, { i64, [0 x i64] }** %_701
  %_699 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array692, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array694, { i64, [0 x i64] }** %_699
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array692, { i64, [0 x { i64, [0 x i64] }*] }** %_690
  %_raw_array712 = call i64* @oat_alloc_array(i64 1)
  %_array713 = bitcast i64* %_raw_array712 to { i64, [0 x i64] }*
  %_raw_array710 = call i64* @oat_alloc_array(i64 1)
  %_array711 = bitcast i64* %_raw_array710 to { i64, [0 x i64] }*
  %_raw_array708 = call i64* @oat_alloc_array(i64 1)
  %_array709 = bitcast i64* %_raw_array708 to { i64, [0 x i64] }*
  %_raw_array706 = call i64* @oat_alloc_array(i64 3)
  %_array707 = bitcast i64* %_raw_array706 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_718 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array707, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array713, { i64, [0 x i64] }** %_718
  %_716 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array707, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array711, { i64, [0 x i64] }** %_716
  %_714 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array707, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array709, { i64, [0 x i64] }** %_714
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array707, { i64, [0 x { i64, [0 x i64] }*] }** %_705
  %_raw_array721 = call i64* @oat_alloc_array(i64 3)
  %_array722 = bitcast i64* %_raw_array721 to { i64, [0 x i64] }*
  %_727 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array722, i32 0, i32 1, i32 2
  store i64 2, i64* %_727
  %_725 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array722, i32 0, i32 1, i32 1
  store i64 1, i64* %_725
  %_723 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array722, i32 0, i32 1, i32 0
  store i64 0, i64* %_723
  store { i64, [0 x i64] }* %_array722, { i64, [0 x i64] }** %_720
  %_id_a5729 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_720
  %_id_a2730 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_675
  %_731 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2730, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_id_a5729, { i64, [0 x i64] }** %_731
  %_id_a2732 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_675
  %_index_pointer733 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2732, i32 0, i32 1, i32 0
  %_index_value734 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer733
  %_735 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value734, i32 0, i32 1, i32 0
  store i64 2, i64* %_735
  %_id_a2736 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_675
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2736, { i64, [0 x { i64, [0 x i64] }*] }** %_660
  %_id_a1737 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_660
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a1737, { i64, [0 x { i64, [0 x i64] }*] }** %_690
  %_id_a4738 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_705
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a4738, { i64, [0 x { i64, [0 x i64] }*] }** %_660
  %_id_a3739 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_690
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a3739, { i64, [0 x { i64, [0 x i64] }*] }** %_675
  %_id_a2740 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_675
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2740, { i64, [0 x { i64, [0 x i64] }*] }** %_705
  %_id_a4741 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_705
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a4741, { i64, [0 x { i64, [0 x i64] }*] }** %_690
  %_id_a3742 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_690
  %_index_pointer743 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a3742, i32 0, i32 1, i32 0
  %_index_value744 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer743
  %_index_pointer745 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value744, i32 0, i32 1, i32 0
  %_index_value746 = load i64, i64* %_index_pointer745
  ret i64 %_index_value746
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
