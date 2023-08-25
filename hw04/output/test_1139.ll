; generated from: hw4programs/binary_search.oat
target triple = "x86_64-apple-macosx10.13.0"
@_string3646 = global [9 x i8] c"Correct!\00"

define i64 @euclid_division(i64 %numerator, i64 %denominator) {
  %_numerator3701 = alloca i64
  %_denominator3702 = alloca i64
  %_3714 = alloca i64
  %_3715 = alloca i64
  store i64 %numerator, i64* %_numerator3701
  store i64 %denominator, i64* %_denominator3702
  br label %_start3710
_start3710:
  %_id_denominator3703 = load i64, i64* %_denominator3702
  %_3704 = icmp slt i64 %_id_denominator3703, 0
  br i1 %_3704, label %_then3711, label %_else3712
_then3711:
  %_id_numerator3705 = load i64, i64* %_numerator3701
  %_id_denominator3706 = load i64, i64* %_denominator3702
  %_3707 = mul i64 %_id_denominator3706, -1
  %_3708 = call i64 @euclid_division(i64 %_id_numerator3705, i64 %_3707)
  %_3709 = mul i64 %_3708, -1
  ret i64 %_3709
_else3712:
  br label %_post3713
_post3713:
  store i64 0, i64* %_3714
  %_id_numerator3716 = load i64, i64* %_numerator3701
  store i64 %_id_numerator3716, i64* %_3715
  br label %_start3743
_start3743:
  %_id_numerator3717 = load i64, i64* %_numerator3701
  %_3718 = icmp slt i64 %_id_numerator3717, 0
  br i1 %_3718, label %_then3744, label %_else3745
_then3744:
  %_id_numerator3719 = load i64, i64* %_numerator3701
  %_3720 = mul i64 %_id_numerator3719, -1
  store i64 %_3720, i64* %_3715
  br label %_start3729
_start3729:
  %_id_denominator3722 = load i64, i64* %_denominator3702
  %_id_remainder3721 = load i64, i64* %_3715
  %_3723 = icmp sge i64 %_id_remainder3721, %_id_denominator3722
  br i1 %_3723, label %_body3730, label %_else3731
_body3730:
  %_id_quotient3724 = load i64, i64* %_3714
  %_3725 = add i64 %_id_quotient3724, 1
  store i64 %_3725, i64* %_3714
  %_id_denominator3727 = load i64, i64* %_denominator3702
  %_id_remainder3726 = load i64, i64* %_3715
  %_3728 = sub i64 %_id_remainder3726, %_id_denominator3727
  store i64 %_3728, i64* %_3715
  br label %_start3729
_else3731:
  br label %_start3739
_start3739:
  %_id_remainder3732 = load i64, i64* %_3715
  %_3733 = icmp eq i64 %_id_remainder3732, 0
  br i1 %_3733, label %_then3740, label %_else3741
_then3740:
  %_id_quotient3734 = load i64, i64* %_3714
  %_3735 = mul i64 %_id_quotient3734, -1
  ret i64 %_3735
_else3741:
  %_id_quotient3736 = load i64, i64* %_3714
  %_3737 = mul i64 %_id_quotient3736, -1
  %_3738 = sub i64 %_3737, 1
  ret i64 %_3738
_post3742:
  br label %_post3746
_else3745:
  br label %_post3746
_post3746:
  br label %_start3755
_start3755:
  %_id_denominator3748 = load i64, i64* %_denominator3702
  %_id_remainder3747 = load i64, i64* %_3715
  %_3749 = icmp sge i64 %_id_remainder3747, %_id_denominator3748
  br i1 %_3749, label %_body3756, label %_else3757
_body3756:
  %_id_quotient3750 = load i64, i64* %_3714
  %_3751 = add i64 %_id_quotient3750, 1
  store i64 %_3751, i64* %_3714
  %_id_denominator3753 = load i64, i64* %_denominator3702
  %_id_remainder3752 = load i64, i64* %_3715
  %_3754 = sub i64 %_id_remainder3752, %_id_denominator3753
  store i64 %_3754, i64* %_3715
  br label %_start3755
_else3757:
  %_id_quotient3758 = load i64, i64* %_3714
  ret i64 %_id_quotient3758
}

define i1 @binary_search({ i64, [0 x i64] }* %input, i64 %key, i64 %min, i64 %max) {
  %_input3653 = alloca { i64, [0 x i64] }*
  %_key3654 = alloca i64
  %_min3655 = alloca i64
  %_max3656 = alloca i64
  %_3664 = alloca i64
  store { i64, [0 x i64] }* %input, { i64, [0 x i64] }** %_input3653
  store i64 %key, i64* %_key3654
  store i64 %min, i64* %_min3655
  store i64 %max, i64* %_max3656
  br label %_start3660
_start3660:
  %_id_min3658 = load i64, i64* %_min3655
  %_id_max3657 = load i64, i64* %_max3656
  %_3659 = icmp slt i64 %_id_max3657, %_id_min3658
  br i1 %_3659, label %_then3661, label %_else3662
_then3661:
  ret i1 0
_else3662:
  br label %_post3663
_post3663:
  %_id_min3666 = load i64, i64* %_min3655
  %_id_max3665 = load i64, i64* %_max3656
  %_3667 = add i64 %_id_max3665, %_id_min3666
  %_3668 = call i64 @euclid_division(i64 %_3667, i64 2)
  store i64 %_3668, i64* %_3664
  br label %_start3681
_start3681:
  %_id_key3673 = load i64, i64* %_key3654
  %_id_input3669 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3653
  %_id_midpt3670 = load i64, i64* %_3664
  %_index_pointer3671 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_input3669, i32 0, i32 1, i64 %_id_midpt3670
  %_index_value3672 = load i64, i64* %_index_pointer3671
  %_3674 = icmp sgt i64 %_index_value3672, %_id_key3673
  br i1 %_3674, label %_then3682, label %_else3683
_then3682:
  %_id_input3675 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3653
  %_id_key3676 = load i64, i64* %_key3654
  %_id_min3677 = load i64, i64* %_min3655
  %_id_midpt3678 = load i64, i64* %_3664
  %_3679 = sub i64 %_id_midpt3678, 1
  %_3680 = call i1 @binary_search({ i64, [0 x i64] }* %_id_input3675, i64 %_id_key3676, i64 %_id_min3677, i64 %_3679)
  ret i1 %_3680
_else3683:
  br label %_post3684
_post3684:
  br label %_start3697
_start3697:
  %_id_key3689 = load i64, i64* %_key3654
  %_id_input3685 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3653
  %_id_midpt3686 = load i64, i64* %_3664
  %_index_pointer3687 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_input3685, i32 0, i32 1, i64 %_id_midpt3686
  %_index_value3688 = load i64, i64* %_index_pointer3687
  %_3690 = icmp slt i64 %_index_value3688, %_id_key3689
  br i1 %_3690, label %_then3698, label %_else3699
_then3698:
  %_id_input3691 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3653
  %_id_key3692 = load i64, i64* %_key3654
  %_id_midpt3693 = load i64, i64* %_3664
  %_3694 = add i64 %_id_midpt3693, 1
  %_id_max3695 = load i64, i64* %_max3656
  %_3696 = call i1 @binary_search({ i64, [0 x i64] }* %_id_input3691, i64 %_id_key3692, i64 %_3694, i64 %_id_max3695)
  ret i1 %_3696
_else3699:
  ret i1 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3613 = alloca i64
  %_argv3614 = alloca { i64, [0 x i8*] }*
  %_3615 = alloca { i64, [0 x i64] }*
  %_3618 = alloca i64
  %_3632 = alloca i1
  %_3635 = alloca i1
  store i64 %argc, i64* %_argc3613
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3614
  %_raw_array3616 = call i64* @oat_alloc_array(i64 100)
  %_array3617 = bitcast i64* %_raw_array3616 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3617, { i64, [0 x i64] }** %_3615
  store i64 0, i64* %_3618
  br label %_start3629
_start3629:
  %_id_i3619 = load i64, i64* %_3618
  %_3620 = icmp slt i64 %_id_i3619, 100
  br i1 %_3620, label %_body3630, label %_else3631
_body3630:
  %_id_i3621 = load i64, i64* %_3618
  %_3622 = mul i64 2, %_id_i3621
  %_3623 = add i64 %_3622, 1
  %_id_test_array3624 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3615
  %_id_i3625 = load i64, i64* %_3618
  %_3626 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_test_array3624, i32 0, i32 1, i64 %_id_i3625
  store i64 %_3623, i64* %_3626
  %_id_i3627 = load i64, i64* %_3618
  %_3628 = add i64 %_id_i3627, 1
  store i64 %_3628, i64* %_3618
  br label %_start3629
_else3631:
  %_id_test_array3633 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3615
  %_3634 = call i1 @binary_search({ i64, [0 x i64] }* %_id_test_array3633, i64 80, i64 0, i64 99)
  store i1 %_3634, i1* %_3632
  %_id_test_array3636 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3615
  %_3637 = call i1 @binary_search({ i64, [0 x i64] }* %_id_test_array3636, i64 81, i64 0, i64 99)
  store i1 %_3637, i1* %_3635
  br label %_start3649
_start3649:
  %_id_odd3643 = load i1, i1* %_3635
  %_id_even3642 = load i1, i1* %_3632
  %_3644 = or i1 %_id_even3642, %_id_odd3643
  %_id_odd3639 = load i1, i1* %_3635
  %_id_even3638 = load i1, i1* %_3632
  %_3640 = and i1 %_id_even3638, %_id_odd3639
  %_3641 = and i1 %_3640, 0
  %_3645 = and i1 %_3641, %_3644
  br i1 %_3645, label %_then3650, label %_else3651
_then3650:
  %_string13647 = getelementptr [9 x i8], [9 x i8]* @_string3646, i32 0, i32 0
  call void @print_string(i8* %_string13647)
  br label %_post3652
_else3651:
  br label %_post3652
_post3652:
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
