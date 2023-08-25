; generated from: hw4programs/insertion_sort.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %partial, i64 %len, i64 %insertee) {
  %_partial5649 = alloca { i64, [0 x i64] }*
  %_len5650 = alloca i64
  %_insertee5651 = alloca i64
  %_5652 = alloca { i64, [0 x i64] }*
  %_5657 = alloca i64
  %_5671 = alloca i1
  %_5684 = alloca i64
  store { i64, [0 x i64] }* %partial, { i64, [0 x i64] }** %_partial5649
  store i64 %len, i64* %_len5650
  store i64 %insertee, i64* %_insertee5651
  %_id_len5653 = load i64, i64* %_len5650
  %_bop5654 = add i64 %_id_len5653, 1
  %_raw_array5655 = call i64* @oat_alloc_array(i64 %_bop5654)
  %_array5656 = bitcast i64* %_raw_array5655 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5656, { i64, [0 x i64] }** %_5652
  store i64 0, i64* %_5657
  br label %_cond5669
_cond5669:
  %_id_i5658 = load i64, i64* %_5657
  %_id_len5659 = load i64, i64* %_len5650
  %_bop5660 = add i64 %_id_len5659, 1
  %_bop5661 = icmp slt i64 %_id_i5658, %_bop5660
  br i1 %_bop5661, label %_if5668, label %_merge5670
_if5668:
  %_unop5662 = sub i64 0, 1
  %_id_inserted5663 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5652
  %_id_i5664 = load i64, i64* %_5657
  %_5665 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted5663, i32 0, i32 1, i64 %_id_i5664
  store i64 %_unop5662, i64* %_5665
  %_id_i5666 = load i64, i64* %_5657
  %_bop5667 = add i64 %_id_i5666, 1
  store i64 %_bop5667, i64* %_5657
  br label %_cond5669
_merge5670:
  store i1 1, i1* %_5671
  br label %_begin_if5680
_begin_if5680:
  %_id_insertee5672 = load i64, i64* %_insertee5651
  %_id_partial5673 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5649
  %_index_pointer5675 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_partial5673, i32 0, i32 1, i32 0
  %_index_value5674 = load i64, i64* %_index_pointer5675
  %_bop5676 = icmp slt i64 %_id_insertee5672, %_index_value5674
  br i1 %_bop5676, label %_then_branch5681, label %_else_branch5682
_then_branch5681:
  store i1 0, i1* %_5671
  %_id_insertee5677 = load i64, i64* %_insertee5651
  %_id_inserted5678 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5652
  %_5679 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted5678, i32 0, i32 1, i32 0
  store i64 %_id_insertee5677, i64* %_5679
  br label %_end_if5683
_else_branch5682:
  br label %_end_if5683
_end_if5683:
  store i64 0, i64* %_5684
  br label %_cond5733
_cond5733:
  %_id_i5685 = load i64, i64* %_5684
  %_id_len5686 = load i64, i64* %_len5650
  %_bop5687 = icmp slt i64 %_id_i5685, %_id_len5686
  br i1 %_bop5687, label %_if5732, label %_merge5734
_if5732:
  br label %_begin_if5726
_begin_if5726:
  %_id_not_yet_inserted5688 = load i1, i1* %_5671
  br i1 %_id_not_yet_inserted5688, label %_then_branch5727, label %_else_branch5728
_then_branch5727:
  br label %_begin_if5714
_begin_if5714:
  %_id_insertee5689 = load i64, i64* %_insertee5651
  %_id_partial5690 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5649
  %_id_i5691 = load i64, i64* %_5684
  %_index_pointer5693 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_partial5690, i32 0, i32 1, i64 %_id_i5691
  %_index_value5692 = load i64, i64* %_index_pointer5693
  %_bop5694 = icmp sgt i64 %_id_insertee5689, %_index_value5692
  br i1 %_bop5694, label %_then_branch5715, label %_else_branch5716
_then_branch5715:
  store i1 0, i1* %_5671
  %_id_insertee5695 = load i64, i64* %_insertee5651
  %_id_inserted5696 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5652
  %_id_i5697 = load i64, i64* %_5684
  %_bop5698 = add i64 %_id_i5697, 1
  %_5699 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted5696, i32 0, i32 1, i64 %_bop5698
  store i64 %_id_insertee5695, i64* %_5699
  %_id_partial5700 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5649
  %_id_i5701 = load i64, i64* %_5684
  %_index_pointer5703 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_partial5700, i32 0, i32 1, i64 %_id_i5701
  %_index_value5702 = load i64, i64* %_index_pointer5703
  %_id_inserted5704 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5652
  %_id_i5705 = load i64, i64* %_5684
  %_5706 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted5704, i32 0, i32 1, i64 %_id_i5705
  store i64 %_index_value5702, i64* %_5706
  br label %_end_if5717
_else_branch5716:
  %_id_partial5707 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5649
  %_id_i5708 = load i64, i64* %_5684
  %_index_pointer5710 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_partial5707, i32 0, i32 1, i64 %_id_i5708
  %_index_value5709 = load i64, i64* %_index_pointer5710
  %_id_inserted5711 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5652
  %_id_i5712 = load i64, i64* %_5684
  %_5713 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted5711, i32 0, i32 1, i64 %_id_i5712
  store i64 %_index_value5709, i64* %_5713
  br label %_end_if5717
_end_if5717:
  br label %_end_if5729
_else_branch5728:
  %_id_partial5718 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5649
  %_id_i5719 = load i64, i64* %_5684
  %_index_pointer5721 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_partial5718, i32 0, i32 1, i64 %_id_i5719
  %_index_value5720 = load i64, i64* %_index_pointer5721
  %_id_inserted5722 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5652
  %_id_i5723 = load i64, i64* %_5684
  %_bop5724 = add i64 %_id_i5723, 1
  %_5725 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_inserted5722, i32 0, i32 1, i64 %_bop5724
  store i64 %_index_value5720, i64* %_5725
  br label %_end_if5729
_end_if5729:
  %_id_i5730 = load i64, i64* %_5684
  %_bop5731 = add i64 %_id_i5730, 1
  store i64 %_bop5731, i64* %_5684
  br label %_cond5733
_merge5734:
  %_id_inserted5735 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5652
  ret { i64, [0 x i64] }* %_id_inserted5735
}

define { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %unsorted, i64 %len) {
  %_unsorted5619 = alloca { i64, [0 x i64] }*
  %_len5620 = alloca i64
  %_5621 = alloca { i64, [0 x i64] }*
  %_5632 = alloca i64
  store { i64, [0 x i64] }* %unsorted, { i64, [0 x i64] }** %_unsorted5619
  store i64 %len, i64* %_len5620
  %_raw_array5622 = call i64* @oat_alloc_array(i64 1)
  %_array5623 = bitcast i64* %_raw_array5622 to { i64, [0 x i64] }*
  %_5626 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5623, i32 0, i32 1, i32 0
  store i64 0, i64* %_5624
  store { i64, [0 x i64] }* %_array5623, { i64, [0 x i64] }** %_5621
  %_id_unsorted5627 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted5619
  %_index_pointer5629 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_unsorted5627, i32 0, i32 1, i32 0
  %_index_value5628 = load i64, i64* %_index_pointer5629
  %_id_out5630 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5621
  %_5631 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_out5630, i32 0, i32 1, i32 0
  store i64 %_index_value5628, i64* %_5631
  store i64 1, i64* %_5632
  br label %_cond5646
_cond5646:
  %_id_i5633 = load i64, i64* %_5632
  %_id_len5634 = load i64, i64* %_len5620
  %_bop5635 = icmp slt i64 %_id_i5633, %_id_len5634
  br i1 %_bop5635, label %_if5645, label %_merge5647
_if5645:
  %_id_out5636 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5621
  %_id_i5637 = load i64, i64* %_5632
  %_id_unsorted5638 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted5619
  %_id_i5639 = load i64, i64* %_5632
  %_index_pointer5641 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_unsorted5638, i32 0, i32 1, i64 %_id_i5639
  %_index_value5640 = load i64, i64* %_index_pointer5641
  %_5642 = call { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_id_out5636, i64 %_id_i5637, i64 %_index_value5640)
  store { i64, [0 x i64] }* %_5642, { i64, [0 x i64] }** %_5621
  %_id_i5643 = load i64, i64* %_5632
  %_bop5644 = add i64 %_id_i5643, 1
  store i64 %_bop5644, i64* %_5632
  br label %_cond5646
_merge5647:
  %_id_out5648 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5621
  ret { i64, [0 x i64] }* %_id_out5648
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5590 = alloca i64
  %_argv5591 = alloca { i64, [0 x i8*] }*
  %_5592 = alloca { i64, [0 x i64] }*
  %_5613 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc5590
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5591
  %_raw_array5593 = call i64* @oat_alloc_array(i64 6)
  %_array5594 = bitcast i64* %_raw_array5593 to { i64, [0 x i64] }*
  %_5612 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5594, i32 0, i32 1, i32 5
  store i64 6, i64* %_5610
  %_5609 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5594, i32 0, i32 1, i32 4
  store i64 2, i64* %_5607
  %_5606 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5594, i32 0, i32 1, i32 3
  store i64 3, i64* %_5604
  %_5603 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5594, i32 0, i32 1, i32 2
  store i64 32, i64* %_5601
  %_5600 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5594, i32 0, i32 1, i32 1
  store i64 42, i64* %_5598
  %_5597 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5594, i32 0, i32 1, i32 0
  store i64 13, i64* %_5595
  store { i64, [0 x i64] }* %_array5594, { i64, [0 x i64] }** %_5592
  %_id_array5614 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5592
  %_5615 = call { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_id_array5614, i64 6)
  store { i64, [0 x i64] }* %_5615, { i64, [0 x i64] }** %_5613
  %_id_result5616 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5613
  %_index_pointer5618 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_result5616, i32 0, i32 1, i32 5
  %_index_value5617 = load i64, i64* %_index_pointer5618
  ret i64 %_index_value5617
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
