; generated from: hw4programs/selectionsort.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @getminindex({ i64, [0 x i64] }* %a, i64 %s, i64 %b) {
  %_a3723 = alloca { i64, [0 x i64] }*
  %_s3724 = alloca i64
  %_b3725 = alloca i64
  %_3726 = alloca i64
  %_3728 = alloca i64
  %_3733 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3723
  store i64 %s, i64* %_s3724
  store i64 %b, i64* %_b3725
  %_id_s3727 = load i64, i64* %_s3724
  store i64 %_id_s3727, i64* %_3726
  %_id_a3729 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3723
  %_id_s3730 = load i64, i64* %_s3724
  %_index_pointer3732 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3729, i32 0, i32 1, i64 %_id_s3730
  %_index_value3731 = load i64, i64* %_index_pointer3732
  store i64 %_index_value3731, i64* %_3728
  %_id_s3734 = load i64, i64* %_s3724
  store i64 %_id_s3734, i64* %_3733
  br label %_cond3756
_cond3756:
  %_id_i3735 = load i64, i64* %_3726
  %_id_b3736 = load i64, i64* %_b3725
  %_bop3737 = icmp slt i64 %_id_i3735, %_id_b3736
  br i1 %_bop3737, label %_if3755, label %_merge3757
_if3755:
  br label %_begin_if3749
_begin_if3749:
  %_id_a3738 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3723
  %_id_i3739 = load i64, i64* %_3726
  %_index_pointer3741 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3738, i32 0, i32 1, i64 %_id_i3739
  %_index_value3740 = load i64, i64* %_index_pointer3741
  %_id_min3742 = load i64, i64* %_3728
  %_bop3743 = icmp slt i64 %_index_value3740, %_id_min3742
  br i1 %_bop3743, label %_then_branch3750, label %_else_branch3751
_then_branch3750:
  %_id_a3744 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3723
  %_id_i3745 = load i64, i64* %_3726
  %_index_pointer3747 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3744, i32 0, i32 1, i64 %_id_i3745
  %_index_value3746 = load i64, i64* %_index_pointer3747
  store i64 %_index_value3746, i64* %_3728
  %_id_i3748 = load i64, i64* %_3726
  store i64 %_id_i3748, i64* %_3733
  br label %_end_if3752
_else_branch3751:
  br label %_end_if3752
_end_if3752:
  %_id_i3753 = load i64, i64* %_3726
  %_bop3754 = add i64 %_id_i3753, 1
  store i64 %_bop3754, i64* %_3726
  br label %_cond3756
_merge3757:
  %_id_mi3758 = load i64, i64* %_3733
  ret i64 %_id_mi3758
}

define void @selectionsort({ i64, [0 x i64] }* %a, i64 %s) {
  %_a3691 = alloca { i64, [0 x i64] }*
  %_s3692 = alloca i64
  %_3693 = alloca i64
  %_3694 = alloca i64
  %_3695 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3691
  store i64 %s, i64* %_s3692
  store i64 0, i64* %_3693
  store i64 0, i64* %_3694
  store i64 0, i64* %_3695
  br label %_cond3721
_cond3721:
  %_id_i3696 = load i64, i64* %_3695
  %_id_s3697 = load i64, i64* %_s3692
  %_bop3698 = icmp slt i64 %_id_i3696, %_id_s3697
  br i1 %_bop3698, label %_if3720, label %_merge3722
_if3720:
  %_id_a3699 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3691
  %_id_i3700 = load i64, i64* %_3695
  %_id_s3701 = load i64, i64* %_s3692
  %_3702 = call i64 @getminindex({ i64, [0 x i64] }* %_id_a3699, i64 %_id_i3700, i64 %_id_s3701)
  store i64 %_3702, i64* %_3694
  %_id_a3703 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3691
  %_id_i3704 = load i64, i64* %_3695
  %_index_pointer3706 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3703, i32 0, i32 1, i64 %_id_i3704
  %_index_value3705 = load i64, i64* %_index_pointer3706
  store i64 %_index_value3705, i64* %_3693
  %_id_a3707 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3691
  %_id_mi3708 = load i64, i64* %_3694
  %_index_pointer3710 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3707, i32 0, i32 1, i64 %_id_mi3708
  %_index_value3709 = load i64, i64* %_index_pointer3710
  %_id_a3711 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3691
  %_id_i3712 = load i64, i64* %_3695
  %_3713 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3711, i32 0, i32 1, i64 %_id_i3712
  store i64 %_index_value3709, i64* %_3713
  %_id_t3714 = load i64, i64* %_3693
  %_id_a3715 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3691
  %_id_mi3716 = load i64, i64* %_3694
  %_3717 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a3715, i32 0, i32 1, i64 %_id_mi3716
  store i64 %_id_t3714, i64* %_3717
  %_id_i3718 = load i64, i64* %_3695
  %_bop3719 = add i64 %_id_i3718, 1
  store i64 %_bop3719, i64* %_3695
  br label %_cond3721
_merge3722:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3647 = alloca i64
  %_argv3648 = alloca { i64, [0 x i8*] }*
  %_3649 = alloca { i64, [0 x i64] }*
  %_3678 = alloca i64
  store i64 %argc, i64* %_argc3647
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3648
  %_raw_array3650 = call i64* @oat_alloc_array(i64 8)
  %_array3651 = bitcast i64* %_raw_array3650 to { i64, [0 x i64] }*
  %_3675 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3651, i32 0, i32 1, i32 7
  store i64 0, i64* %_3673
  %_3672 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3651, i32 0, i32 1, i32 6
  store i64 2, i64* %_3670
  %_3669 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3651, i32 0, i32 1, i32 5
  store i64 99, i64* %_3667
  %_3666 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3651, i32 0, i32 1, i32 4
  store i64 30, i64* %_3664
  %_3663 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3651, i32 0, i32 1, i32 3
  store i64 65, i64* %_3661
  %_3660 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3651, i32 0, i32 1, i32 2
  store i64 1, i64* %_3658
  %_3657 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3651, i32 0, i32 1, i32 1
  store i64 200, i64* %_3655
  %_3654 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3651, i32 0, i32 1, i32 0
  store i64 5, i64* %_3652
  store { i64, [0 x i64] }* %_array3651, { i64, [0 x i64] }** %_3649
  %_id_ar3676 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3649
  call void @selectionsort({ i64, [0 x i64] }* %_id_ar3676, i64 8)
  store i64 0, i64* %_3678
  br label %_cond3689
_cond3689:
  %_id_i3679 = load i64, i64* %_3678
  %_bop3680 = icmp slt i64 %_id_i3679, 8
  br i1 %_bop3680, label %_if3688, label %_merge3690
_if3688:
  %_id_ar3681 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3649
  %_id_i3682 = load i64, i64* %_3678
  %_index_pointer3684 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_ar3681, i32 0, i32 1, i64 %_id_i3682
  %_index_value3683 = load i64, i64* %_index_pointer3684
  call void @print_int(i64 %_index_value3683)
  %_id_i3686 = load i64, i64* %_3678
  %_bop3687 = add i64 %_id_i3686, 1
  store i64 %_bop3687, i64* %_3678
  br label %_cond3689
_merge3690:
  ret i64 0
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
