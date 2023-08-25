; generated from: hw4programs/heap.oat
target triple = "x86_64-apple-macosx10.13.0"
define void @min_heapify({ i64, [0 x i64] }* %array, i64 %i, i64 %len) {
  %_array4716 = alloca { i64, [0 x i64] }*
  %_i4717 = alloca i64
  %_len4718 = alloca i64
  %_4719 = alloca i64
  %_4722 = alloca i64
  %_4725 = alloca i64
  %_4726 = alloca i64
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_array4716
  store i64 %i, i64* %_i4717
  store i64 %len, i64* %_len4718
  %_id_i4720 = load i64, i64* %_i4717
  %_bop4721 = mul i64 %_id_i4720, 2
  store i64 %_bop4721, i64* %_4719
  %_id_i4723 = load i64, i64* %_i4717
  %_bop4724 = add i64 %_id_i4723, 1
  store i64 %_bop4724, i64* %_4722
  store i64 0, i64* %_4725
  %_id_i4727 = load i64, i64* %_i4717
  store i64 %_id_i4727, i64* %_4726
  br label %_begin_if4745
_begin_if4745:
  %_id_l4728 = load i64, i64* %_4719
  %_id_len4729 = load i64, i64* %_len4718
  %_bop4730 = icmp slt i64 %_id_l4728, %_id_len4729
  br i1 %_bop4730, label %_then_branch4746, label %_else_branch4747
_then_branch4746:
  br label %_begin_if4741
_begin_if4741:
  %_id_array4731 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4716
  %_id_l4732 = load i64, i64* %_4719
  %_index_pointer4734 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4731, i32 0, i32 1, i64 %_id_l4732
  %_index_value4733 = load i64, i64* %_index_pointer4734
  %_id_array4735 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4716
  %_id_m4736 = load i64, i64* %_4726
  %_index_pointer4738 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4735, i32 0, i32 1, i64 %_id_m4736
  %_index_value4737 = load i64, i64* %_index_pointer4738
  %_bop4739 = icmp sgt i64 %_index_value4733, %_index_value4737
  br i1 %_bop4739, label %_then_branch4742, label %_else_branch4743
_then_branch4742:
  %_id_l4740 = load i64, i64* %_4719
  store i64 %_id_l4740, i64* %_4726
  br label %_end_if4744
_else_branch4743:
  br label %_end_if4744
_end_if4744:
  br label %_end_if4748
_else_branch4747:
  br label %_end_if4748
_end_if4748:
  br label %_begin_if4766
_begin_if4766:
  %_id_r4749 = load i64, i64* %_4722
  %_id_len4750 = load i64, i64* %_len4718
  %_bop4751 = icmp slt i64 %_id_r4749, %_id_len4750
  br i1 %_bop4751, label %_then_branch4767, label %_else_branch4768
_then_branch4767:
  br label %_begin_if4762
_begin_if4762:
  %_id_array4752 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4716
  %_id_r4753 = load i64, i64* %_4722
  %_index_pointer4755 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4752, i32 0, i32 1, i64 %_id_r4753
  %_index_value4754 = load i64, i64* %_index_pointer4755
  %_id_array4756 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4716
  %_id_m4757 = load i64, i64* %_4726
  %_index_pointer4759 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4756, i32 0, i32 1, i64 %_id_m4757
  %_index_value4758 = load i64, i64* %_index_pointer4759
  %_bop4760 = icmp sgt i64 %_index_value4754, %_index_value4758
  br i1 %_bop4760, label %_then_branch4763, label %_else_branch4764
_then_branch4763:
  %_id_r4761 = load i64, i64* %_4722
  store i64 %_id_r4761, i64* %_4726
  br label %_end_if4765
_else_branch4764:
  br label %_end_if4765
_end_if4765:
  br label %_end_if4769
_else_branch4768:
  br label %_end_if4769
_end_if4769:
  br label %_begin_if4792
_begin_if4792:
  %_id_m4770 = load i64, i64* %_4726
  %_id_i4771 = load i64, i64* %_i4717
  %_bop4772 = icmp ne i64 %_id_m4770, %_id_i4771
  br i1 %_bop4772, label %_then_branch4793, label %_else_branch4794
_then_branch4793:
  %_id_array4773 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4716
  %_id_i4774 = load i64, i64* %_i4717
  %_index_pointer4776 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4773, i32 0, i32 1, i64 %_id_i4774
  %_index_value4775 = load i64, i64* %_index_pointer4776
  store i64 %_index_value4775, i64* %_4725
  %_id_array4777 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4716
  %_id_m4778 = load i64, i64* %_4726
  %_index_pointer4780 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4777, i32 0, i32 1, i64 %_id_m4778
  %_index_value4779 = load i64, i64* %_index_pointer4780
  %_id_array4781 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4716
  %_id_i4782 = load i64, i64* %_i4717
  %_4783 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4781, i32 0, i32 1, i64 %_id_i4782
  store i64 %_index_value4779, i64* %_4783
  %_id_tmp4784 = load i64, i64* %_4725
  %_id_array4785 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4716
  %_id_m4786 = load i64, i64* %_4726
  %_4787 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4785, i32 0, i32 1, i64 %_id_m4786
  store i64 %_id_tmp4784, i64* %_4787
  %_id_array4788 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4716
  %_id_m4789 = load i64, i64* %_4726
  %_id_len4790 = load i64, i64* %_len4718
  call void @min_heapify({ i64, [0 x i64] }* %_id_array4788, i64 %_id_m4789, i64 %_id_len4790)
  br label %_end_if4795
_else_branch4794:
  br label %_end_if4795
_end_if4795:
  ret void
}

define void @make_min_heap({ i64, [0 x i64] }* %array, i64 %len) {
  %_array4701 = alloca { i64, [0 x i64] }*
  %_len4702 = alloca i64
  %_4703 = alloca i64
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_array4701
  store i64 %len, i64* %_len4702
  %_id_len4704 = load i64, i64* %_len4702
  store i64 %_id_len4704, i64* %_4703
  br label %_cond4714
_cond4714:
  %_id_i4705 = load i64, i64* %_4703
  %_bop4706 = icmp sge i64 %_id_i4705, 1
  br i1 %_bop4706, label %_if4713, label %_merge4715
_if4713:
  %_id_array4707 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4701
  %_id_i4708 = load i64, i64* %_4703
  %_id_len4709 = load i64, i64* %_len4702
  call void @min_heapify({ i64, [0 x i64] }* %_id_array4707, i64 %_id_i4708, i64 %_id_len4709)
  %_id_i4711 = load i64, i64* %_4703
  %_bop4712 = sub i64 %_id_i4711, 1
  store i64 %_bop4712, i64* %_4703
  br label %_cond4714
_merge4715:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4602 = alloca i64
  %_argv4603 = alloca { i64, [0 x i8*] }*
  %_4604 = alloca { i64, [0 x i64] }*
  %_4640 = alloca { i64, [0 x i64] }*
  %_4678 = alloca i64
  %_4679 = alloca i64
  store i64 %argc, i64* %_argc4602
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4603
  %_raw_array4605 = call i64* @oat_alloc_array(i64 11)
  %_array4606 = bitcast i64* %_raw_array4605 to { i64, [0 x i64] }*
  %_4639 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4606, i32 0, i32 1, i32 10
  store i64 5, i64* %_4637
  %_4636 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4606, i32 0, i32 1, i32 9
  store i64 4, i64* %_4634
  %_4633 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4606, i32 0, i32 1, i32 8
  store i64 6, i64* %_4631
  %_4630 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4606, i32 0, i32 1, i32 7
  store i64 3, i64* %_4628
  %_4627 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4606, i32 0, i32 1, i32 6
  store i64 7, i64* %_4625
  %_4624 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4606, i32 0, i32 1, i32 5
  store i64 10, i64* %_4622
  %_4621 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4606, i32 0, i32 1, i32 4
  store i64 8, i64* %_4619
  %_4618 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4606, i32 0, i32 1, i32 3
  store i64 2, i64* %_4616
  %_4615 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4606, i32 0, i32 1, i32 2
  store i64 1, i64* %_4613
  %_4612 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4606, i32 0, i32 1, i32 1
  store i64 9, i64* %_4610
  %_4609 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4606, i32 0, i32 1, i32 0
  store i64 0, i64* %_4607
  store { i64, [0 x i64] }* %_array4606, { i64, [0 x i64] }** %_4604
  %_raw_array4641 = call i64* @oat_alloc_array(i64 11)
  %_array4642 = bitcast i64* %_raw_array4641 to { i64, [0 x i64] }*
  %_4675 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4642, i32 0, i32 1, i32 10
  store i64 10, i64* %_4673
  %_4672 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4642, i32 0, i32 1, i32 9
  store i64 9, i64* %_4670
  %_4669 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4642, i32 0, i32 1, i32 8
  store i64 6, i64* %_4667
  %_4666 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4642, i32 0, i32 1, i32 7
  store i64 3, i64* %_4664
  %_4663 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4642, i32 0, i32 1, i32 6
  store i64 7, i64* %_4661
  %_4660 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4642, i32 0, i32 1, i32 5
  store i64 5, i64* %_4658
  %_4657 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4642, i32 0, i32 1, i32 4
  store i64 8, i64* %_4655
  %_4654 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4642, i32 0, i32 1, i32 3
  store i64 2, i64* %_4652
  %_4651 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4642, i32 0, i32 1, i32 2
  store i64 4, i64* %_4649
  %_4648 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4642, i32 0, i32 1, i32 1
  store i64 1, i64* %_4646
  %_4645 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4642, i32 0, i32 1, i32 0
  store i64 0, i64* %_4643
  store { i64, [0 x i64] }* %_array4642, { i64, [0 x i64] }** %_4640
  %_id_array4676 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4604
  call void @make_min_heap({ i64, [0 x i64] }* %_id_array4676, i64 10)
  store i64 0, i64* %_4678
  store i64 0, i64* %_4679
  br label %_cond4698
_cond4698:
  %_id_i4680 = load i64, i64* %_4679
  %_bop4681 = icmp slt i64 %_id_i4680, 11
  br i1 %_bop4681, label %_if4697, label %_merge4699
_if4697:
  br label %_begin_if4691
_begin_if4691:
  %_id_array4682 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4604
  %_id_i4683 = load i64, i64* %_4679
  %_index_pointer4685 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_array4682, i32 0, i32 1, i64 %_id_i4683
  %_index_value4684 = load i64, i64* %_index_pointer4685
  %_id_end_result4686 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4640
  %_id_i4687 = load i64, i64* %_4679
  %_index_pointer4689 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_end_result4686, i32 0, i32 1, i64 %_id_i4687
  %_index_value4688 = load i64, i64* %_index_pointer4689
  %_bop4690 = icmp ne i64 %_index_value4684, %_index_value4688
  br i1 %_bop4690, label %_then_branch4692, label %_else_branch4693
_then_branch4692:
  store i64 1, i64* %_4678
  br label %_end_if4694
_else_branch4693:
  br label %_end_if4694
_end_if4694:
  %_id_i4695 = load i64, i64* %_4679
  %_bop4696 = add i64 %_id_i4695, 1
  store i64 %_bop4696, i64* %_4679
  br label %_cond4698
_merge4699:
  %_id_same4700 = load i64, i64* %_4678
  ret i64 %_id_same4700
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
