; generated from: hw4programs/binary_search.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string3642 = global [9 x i8] c"Correct!\00"

define i64 @euclid_division(i64 %numerator, i64 %denominator) {
  %_numerator3697 = alloca i64
  %_denominator3698 = alloca i64
  %_3710 = alloca i64
  %_3711 = alloca i64
  store i64 %numerator, i64* %_numerator3697
  store i64 %denominator, i64* %_denominator3698
  br label %_begin_if3706
_begin_if3706:
  %_id_denominator3699 = load i64, i64* %_denominator3698
  %_bop3700 = icmp slt i64 %_id_denominator3699, 0
  br i1 %_bop3700, label %_then_branch3707, label %_else_branch3708
_then_branch3707:
  %_id_numerator3701 = load i64, i64* %_numerator3697
  %_id_denominator3702 = load i64, i64* %_denominator3698
  %_unop3703 = sub i64 0, %_id_denominator3702
  %_3704 = call i64 @euclid_division(i64 %_id_numerator3701, i64 %_unop3703)
  %_unop3705 = sub i64 0, %_3704
  ret i64 %_unop3705
_else_branch3708:
  br label %_end_if3709
_end_if3709:
  store i64 0, i64* %_3710
  %_id_numerator3712 = load i64, i64* %_numerator3697
  store i64 %_id_numerator3712, i64* %_3711
  br label %_begin_if3739
_begin_if3739:
  %_id_numerator3713 = load i64, i64* %_numerator3697
  %_bop3714 = icmp slt i64 %_id_numerator3713, 0
  br i1 %_bop3714, label %_then_branch3740, label %_else_branch3741
_then_branch3740:
  %_id_numerator3715 = load i64, i64* %_numerator3697
  %_unop3716 = sub i64 0, %_id_numerator3715
  store i64 %_unop3716, i64* %_3711
  br label %_cond3726
_cond3726:
  %_id_remainder3717 = load i64, i64* %_3711
  %_id_denominator3718 = load i64, i64* %_denominator3698
  %_bop3719 = icmp sge i64 %_id_remainder3717, %_id_denominator3718
  br i1 %_bop3719, label %_if3725, label %_merge3727
_if3725:
  %_id_quotient3720 = load i64, i64* %_3710
  %_bop3721 = add i64 %_id_quotient3720, 1
  store i64 %_bop3721, i64* %_3710
  %_id_remainder3722 = load i64, i64* %_3711
  %_id_denominator3723 = load i64, i64* %_denominator3698
  %_bop3724 = sub i64 %_id_remainder3722, %_id_denominator3723
  store i64 %_bop3724, i64* %_3711
  br label %_cond3726
_merge3727:
  br label %_begin_if3735
_begin_if3735:
  %_id_remainder3728 = load i64, i64* %_3711
  %_bop3729 = icmp eq i64 %_id_remainder3728, 0
  br i1 %_bop3729, label %_then_branch3736, label %_else_branch3737
_then_branch3736:
  %_id_quotient3730 = load i64, i64* %_3710
  %_unop3731 = sub i64 0, %_id_quotient3730
  ret i64 %_unop3731
_else_branch3737:
  %_id_quotient3732 = load i64, i64* %_3710
  %_unop3733 = sub i64 0, %_id_quotient3732
  %_bop3734 = sub i64 %_unop3733, 1
  ret i64 %_bop3734
_end_if3738:
  br label %_end_if3742
_else_branch3741:
  br label %_end_if3742
_end_if3742:
  br label %_cond3752
_cond3752:
  %_id_remainder3743 = load i64, i64* %_3711
  %_id_denominator3744 = load i64, i64* %_denominator3698
  %_bop3745 = icmp sge i64 %_id_remainder3743, %_id_denominator3744
  br i1 %_bop3745, label %_if3751, label %_merge3753
_if3751:
  %_id_quotient3746 = load i64, i64* %_3710
  %_bop3747 = add i64 %_id_quotient3746, 1
  store i64 %_bop3747, i64* %_3710
  %_id_remainder3748 = load i64, i64* %_3711
  %_id_denominator3749 = load i64, i64* %_denominator3698
  %_bop3750 = sub i64 %_id_remainder3748, %_id_denominator3749
  store i64 %_bop3750, i64* %_3711
  br label %_cond3752
_merge3753:
  %_id_quotient3754 = load i64, i64* %_3710
  ret i64 %_id_quotient3754
}

define i1 @binary_search({ i64, [0 x i64] }* %input, i64 %key, i64 %min, i64 %max) {
  %_input3649 = alloca { i64, [0 x i64] }*
  %_key3650 = alloca i64
  %_min3651 = alloca i64
  %_max3652 = alloca i64
  %_3660 = alloca i64
  store { i64, [0 x i64] }* %input, { i64, [0 x i64] }** %_input3649
  store i64 %key, i64* %_key3650
  store i64 %min, i64* %_min3651
  store i64 %max, i64* %_max3652
  br label %_begin_if3656
_begin_if3656:
  %_id_max3653 = load i64, i64* %_max3652
  %_id_min3654 = load i64, i64* %_min3651
  %_bop3655 = icmp slt i64 %_id_max3653, %_id_min3654
  br i1 %_bop3655, label %_then_branch3657, label %_else_branch3658
_then_branch3657:
  ret i1 0
_else_branch3658:
  br label %_end_if3659
_end_if3659:
  %_id_max3661 = load i64, i64* %_max3652
  %_id_min3662 = load i64, i64* %_min3651
  %_bop3663 = add i64 %_id_max3661, %_id_min3662
  %_3664 = call i64 @euclid_division(i64 %_bop3663, i64 2)
  store i64 %_3664, i64* %_3660
  br label %_begin_if3677
_begin_if3677:
  %_id_input3665 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3649
  %_id_midpt3666 = load i64, i64* %_3660
  %_index_pointer3667 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_input3665, i32 0, i32 1, i64 %_id_midpt3666
  %_index_value3668 = load i64, i64* %_index_pointer3667
  %_id_key3669 = load i64, i64* %_key3650
  %_bop3670 = icmp sgt i64 %_index_value3668, %_id_key3669
  br i1 %_bop3670, label %_then_branch3678, label %_else_branch3679
_then_branch3678:
  %_id_input3671 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3649
  %_id_key3672 = load i64, i64* %_key3650
  %_id_min3673 = load i64, i64* %_min3651
  %_id_midpt3674 = load i64, i64* %_3660
  %_bop3675 = sub i64 %_id_midpt3674, 1
  %_3676 = call i1 @binary_search({ i64, [0 x i64] }* %_id_input3671, i64 %_id_key3672, i64 %_id_min3673, i64 %_bop3675)
  ret i1 %_3676
_else_branch3679:
  br label %_end_if3680
_end_if3680:
  br label %_begin_if3693
_begin_if3693:
  %_id_input3681 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3649
  %_id_midpt3682 = load i64, i64* %_3660
  %_index_pointer3683 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_input3681, i32 0, i32 1, i64 %_id_midpt3682
  %_index_value3684 = load i64, i64* %_index_pointer3683
  %_id_key3685 = load i64, i64* %_key3650
  %_bop3686 = icmp slt i64 %_index_value3684, %_id_key3685
  br i1 %_bop3686, label %_then_branch3694, label %_else_branch3695
_then_branch3694:
  %_id_input3687 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3649
  %_id_key3688 = load i64, i64* %_key3650
  %_id_midpt3689 = load i64, i64* %_3660
  %_bop3690 = add i64 %_id_midpt3689, 1
  %_id_max3691 = load i64, i64* %_max3652
  %_3692 = call i1 @binary_search({ i64, [0 x i64] }* %_id_input3687, i64 %_id_key3688, i64 %_bop3690, i64 %_id_max3691)
  ret i1 %_3692
_else_branch3695:
  ret i1 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3609 = alloca i64
  %_argv3610 = alloca { i64, [0 x i8*] }*
  %_3611 = alloca { i64, [0 x i64] }*
  %_3614 = alloca i64
  %_3628 = alloca i1
  %_3631 = alloca i1
  store i64 %argc, i64* %_argc3609
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3610
  %_raw_array3612 = call i64* @oat_alloc_array(i64 100)
  %_array3613 = bitcast i64* %_raw_array3612 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3613, { i64, [0 x i64] }** %_3611
  store i64 0, i64* %_3614
  br label %_cond3626
_cond3626:
  %_id_i3615 = load i64, i64* %_3614
  %_bop3616 = icmp slt i64 %_id_i3615, 100
  br i1 %_bop3616, label %_if3625, label %_merge3627
_if3625:
  %_id_i3617 = load i64, i64* %_3614
  %_bop3618 = mul i64 2, %_id_i3617
  %_bop3619 = add i64 %_bop3618, 1
  %_id_test_array3620 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3611
  %_id_i3621 = load i64, i64* %_3614
  %_3622 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_test_array3620, i32 0, i32 1, i64 %_id_i3621
  store i64 %_bop3619, i64* %_3622
  %_id_i3623 = load i64, i64* %_3614
  %_bop3624 = add i64 %_id_i3623, 1
  store i64 %_bop3624, i64* %_3614
  br label %_cond3626
_merge3627:
  %_id_test_array3629 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3611
  %_3630 = call i1 @binary_search({ i64, [0 x i64] }* %_id_test_array3629, i64 80, i64 0, i64 99)
  store i1 %_3630, i1* %_3628
  %_id_test_array3632 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3611
  %_3633 = call i1 @binary_search({ i64, [0 x i64] }* %_id_test_array3632, i64 81, i64 0, i64 99)
  store i1 %_3633, i1* %_3631
  br label %_begin_if3645
_begin_if3645:
  %_id_even3634 = load i1, i1* %_3628
  %_id_odd3635 = load i1, i1* %_3631
  %_bop3636 = and i1 %_id_even3634, %_id_odd3635
  %_unop3637 = icmp eq i1 %_bop3636, 0
  %_id_even3638 = load i1, i1* %_3628
  %_id_odd3639 = load i1, i1* %_3631
  %_bop3640 = or i1 %_id_even3638, %_id_odd3639
  %_bop3641 = and i1 %_unop3637, %_bop3640
  br i1 %_bop3641, label %_then_branch3646, label %_else_branch3647
_then_branch3646:
  %_string13643 = getelementptr [9 x i8], [9 x i8]* @_string3642, i32 0, i32 0
  call void @print_string(i8* %_string13643)
  br label %_end_if3648
_else_branch3647:
  br label %_end_if3648
_end_if3648:
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
