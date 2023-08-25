; generated from: hw4programs/qsort.oat
target triple = "x86_64-apple-macosx10.13.0"
define void @quick_sort({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_a2787 = alloca { i64, [0 x i64] }*
  %_l2788 = alloca i64
  %_r2789 = alloca i64
  %_2790 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2787
  store i64 %l, i64* %_l2788
  store i64 %r, i64* %_r2789
  store i64 0, i64* %_2790
  br label %_start2808
_start2808:
  %_id_r2792 = load i64, i64* %_r2789
  %_id_l2791 = load i64, i64* %_l2788
  %_2793 = icmp slt i64 %_id_l2791, %_id_r2792
  br i1 %_2793, label %_then2809, label %_else2810
_then2809:
  %_id_a2794 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2787
  %_id_l2795 = load i64, i64* %_l2788
  %_id_r2796 = load i64, i64* %_r2789
  %_2797 = call i64 @partition({ i64, [0 x i64] }* %_id_a2794, i64 %_id_l2795, i64 %_id_r2796)
  store i64 %_2797, i64* %_2790
  %_id_a2798 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2787
  %_id_l2799 = load i64, i64* %_l2788
  %_id_j2800 = load i64, i64* %_2790
  %_2801 = sub i64 %_id_j2800, 1
  call void @quick_sort({ i64, [0 x i64] }* %_id_a2798, i64 %_id_l2799, i64 %_2801)
  %_id_a2803 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2787
  %_id_j2804 = load i64, i64* %_2790
  %_2805 = add i64 %_id_j2804, 1
  %_id_r2806 = load i64, i64* %_r2789
  call void @quick_sort({ i64, [0 x i64] }* %_id_a2803, i64 %_2805, i64 %_id_r2806)
  br label %_post2811
_else2810:
  br label %_post2811
_post2811:
  ret void
}

define i64 @partition({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_a2693 = alloca { i64, [0 x i64] }*
  %_l2694 = alloca i64
  %_r2695 = alloca i64
  %_2696 = alloca i64
  %_2701 = alloca i64
  %_2703 = alloca i64
  %_2706 = alloca i64
  %_2707 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2693
  store i64 %l, i64* %_l2694
  store i64 %r, i64* %_r2695
  %_id_a2697 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2693
  %_id_l2698 = load i64, i64* %_l2694
  %_index_pointer2699 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2697, i32 0, i32 1, i64 %_id_l2698
  %_index_value2700 = load i64, i64* %_index_pointer2699
  store i64 %_index_value2700, i64* %_2696
  %_id_l2702 = load i64, i64* %_l2694
  store i64 %_id_l2702, i64* %_2701
  %_id_r2704 = load i64, i64* %_r2695
  %_2705 = add i64 %_id_r2704, 1
  store i64 %_2705, i64* %_2703
  store i64 0, i64* %_2706
  store i64 0, i64* %_2707
  br label %_start2768
_start2768:
  %_id_done2708 = load i64, i64* %_2707
  %_2709 = icmp eq i64 %_id_done2708, 0
  br i1 %_2709, label %_body2769, label %_else2770
_body2769:
  %_id_i2710 = load i64, i64* %_2701
  %_2711 = add i64 %_id_i2710, 1
  store i64 %_2711, i64* %_2701
  br label %_start2724
_start2724:
  %_id_r2719 = load i64, i64* %_r2695
  %_id_i2718 = load i64, i64* %_2701
  %_2720 = icmp sle i64 %_id_i2718, %_id_r2719
  %_id_pivot2716 = load i64, i64* %_2696
  %_id_a2712 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2693
  %_id_i2713 = load i64, i64* %_2701
  %_index_pointer2714 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2712, i32 0, i32 1, i64 %_id_i2713
  %_index_value2715 = load i64, i64* %_index_pointer2714
  %_2717 = icmp sle i64 %_index_value2715, %_id_pivot2716
  %_2721 = and i1 %_2717, %_2720
  br i1 %_2721, label %_body2725, label %_else2726
_body2725:
  %_id_i2722 = load i64, i64* %_2701
  %_2723 = add i64 %_id_i2722, 1
  store i64 %_2723, i64* %_2701
  br label %_start2724
_else2726:
  %_id_j2727 = load i64, i64* %_2703
  %_2728 = sub i64 %_id_j2727, 1
  store i64 %_2728, i64* %_2703
  br label %_start2737
_start2737:
  %_id_pivot2733 = load i64, i64* %_2696
  %_id_a2729 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2693
  %_id_j2730 = load i64, i64* %_2703
  %_index_pointer2731 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2729, i32 0, i32 1, i64 %_id_j2730
  %_index_value2732 = load i64, i64* %_index_pointer2731
  %_2734 = icmp sgt i64 %_index_value2732, %_id_pivot2733
  br i1 %_2734, label %_body2738, label %_else2739
_body2738:
  %_id_j2735 = load i64, i64* %_2703
  %_2736 = sub i64 %_id_j2735, 1
  store i64 %_2736, i64* %_2703
  br label %_start2737
_else2739:
  br label %_start2743
_start2743:
  %_id_j2741 = load i64, i64* %_2703
  %_id_i2740 = load i64, i64* %_2701
  %_2742 = icmp sge i64 %_id_i2740, %_id_j2741
  br i1 %_2742, label %_then2744, label %_else2745
_then2744:
  store i64 1, i64* %_2707
  br label %_post2746
_else2745:
  br label %_post2746
_post2746:
  br label %_start2764
_start2764:
  %_id_done2747 = load i64, i64* %_2707
  %_2748 = icmp eq i64 %_id_done2747, 0
  br i1 %_2748, label %_then2765, label %_else2766
_then2765:
  %_id_a2749 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2693
  %_id_i2750 = load i64, i64* %_2701
  %_index_pointer2751 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2749, i32 0, i32 1, i64 %_id_i2750
  %_index_value2752 = load i64, i64* %_index_pointer2751
  store i64 %_index_value2752, i64* %_2706
  %_id_a2753 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2693
  %_id_j2754 = load i64, i64* %_2703
  %_index_pointer2755 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2753, i32 0, i32 1, i64 %_id_j2754
  %_index_value2756 = load i64, i64* %_index_pointer2755
  %_id_a2757 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2693
  %_id_i2758 = load i64, i64* %_2701
  %_2759 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2757, i32 0, i32 1, i64 %_id_i2758
  store i64 %_index_value2756, i64* %_2759
  %_id_t2760 = load i64, i64* %_2706
  %_id_a2761 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2693
  %_id_j2762 = load i64, i64* %_2703
  %_2763 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2761, i32 0, i32 1, i64 %_id_j2762
  store i64 %_id_t2760, i64* %_2763
  br label %_post2767
_else2766:
  br label %_post2767
_post2767:
  br label %_start2768
_else2770:
  %_id_a2771 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2693
  %_id_l2772 = load i64, i64* %_l2694
  %_index_pointer2773 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2771, i32 0, i32 1, i64 %_id_l2772
  %_index_value2774 = load i64, i64* %_index_pointer2773
  store i64 %_index_value2774, i64* %_2706
  %_id_a2775 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2693
  %_id_j2776 = load i64, i64* %_2703
  %_index_pointer2777 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2775, i32 0, i32 1, i64 %_id_j2776
  %_index_value2778 = load i64, i64* %_index_pointer2777
  %_id_a2779 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2693
  %_id_l2780 = load i64, i64* %_l2694
  %_2781 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2779, i32 0, i32 1, i64 %_id_l2780
  store i64 %_index_value2778, i64* %_2781
  %_id_t2782 = load i64, i64* %_2706
  %_id_a2783 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2693
  %_id_j2784 = load i64, i64* %_2703
  %_2785 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2783, i32 0, i32 1, i64 %_id_j2784
  store i64 %_id_t2782, i64* %_2785
  %_id_j2786 = load i64, i64* %_2703
  ret i64 %_id_j2786
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2662 = alloca i64
  %_argv2663 = alloca { i64, [0 x i8*] }*
  %_2664 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2662
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2663
  %_raw_array2665 = call i64* @oat_alloc_array(i64 9)
  %_array2666 = bitcast i64* %_raw_array2665 to { i64, [0 x i64] }*
  %_2683 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2666, i32 0, i32 1, i32 8
  store i64 109, i64* %_2683
  %_2681 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2666, i32 0, i32 1, i32 7
  store i64 111, i64* %_2681
  %_2679 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2666, i32 0, i32 1, i32 6
  store i64 104, i64* %_2679
  %_2677 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2666, i32 0, i32 1, i32 5
  store i64 115, i64* %_2677
  %_2675 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2666, i32 0, i32 1, i32 4
  store i64 123, i64* %_2675
  %_2673 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2666, i32 0, i32 1, i32 3
  store i64 102, i64* %_2673
  %_2671 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2666, i32 0, i32 1, i32 2
  store i64 121, i64* %_2671
  %_2669 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2666, i32 0, i32 1, i32 1
  store i64 112, i64* %_2669
  %_2667 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2666, i32 0, i32 1, i32 0
  store i64 107, i64* %_2667
  store { i64, [0 x i64] }* %_array2666, { i64, [0 x i64] }** %_2664
  %_id_a2685 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2664
  %_2686 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a2685)
  call void @print_string(i8* %_2686)
  %_id_a2688 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2664
  call void @quick_sort({ i64, [0 x i64] }* %_id_a2688, i64 0, i64 8)
  %_id_a2690 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2664
  %_2691 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a2690)
  call void @print_string(i8* %_2691)
  ret i64 255
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
