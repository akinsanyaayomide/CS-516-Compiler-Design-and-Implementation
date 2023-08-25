; generated from: hw4programs/sieve.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @sieve(i64 %n) {
  %_n3648 = alloca i64
  %_3649 = alloca { i64, [0 x i1] }*
  %_3653 = alloca i64
  %_3669 = alloca i64
  %_3677 = alloca i64
  %_3701 = alloca i64
  %_3702 = alloca i64
  store i64 %n, i64* %_n3648
  %_id_n3650 = load i64, i64* %_n3648
  %_raw_array3651 = call i64* @oat_alloc_array(i64 %_id_n3650)
  %_array3652 = bitcast i64* %_raw_array3651 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array3652, { i64, [0 x i1] }** %_3649
  store i64 0, i64* %_3653
  br label %_start3662
_start3662:
  %_id_n3655 = load i64, i64* %_n3648
  %_id_i3654 = load i64, i64* %_3653
  %_3656 = icmp slt i64 %_id_i3654, %_id_n3655
  br i1 %_3656, label %_body3663, label %_else3664
_body3663:
  %_id_arr3657 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3649
  %_id_i3658 = load i64, i64* %_3653
  %_3659 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr3657, i32 0, i32 1, i64 %_id_i3658
  store i1 1, i1* %_3659
  %_id_i3660 = load i64, i64* %_3653
  %_3661 = add i64 %_id_i3660, 1
  store i64 %_3661, i64* %_3653
  br label %_start3662
_else3664:
  %_id_arr3665 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3649
  %_3666 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr3665, i32 0, i32 1, i32 0
  store i1 0, i1* %_3666
  %_id_arr3667 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3649
  %_3668 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr3667, i32 0, i32 1, i32 1
  store i1 0, i1* %_3668
  store i64 0, i64* %_3669
  br label %_start3698
_start3698:
  %_id_n3671 = load i64, i64* %_n3648
  %_id_i3670 = load i64, i64* %_3669
  %_3672 = icmp slt i64 %_id_i3670, %_id_n3671
  br i1 %_3672, label %_body3699, label %_else3700
_body3699:
  br label %_start3692
_start3692:
  %_id_arr3673 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3649
  %_id_i3674 = load i64, i64* %_3669
  %_index_pointer3675 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr3673, i32 0, i32 1, i64 %_id_i3674
  %_index_value3676 = load i1, i1* %_index_pointer3675
  br i1 %_index_value3676, label %_then3693, label %_else3694
_then3693:
  %_id_i3678 = load i64, i64* %_3669
  %_3679 = mul i64 %_id_i3678, 2
  store i64 %_3679, i64* %_3677
  br label %_start3689
_start3689:
  %_id_n3681 = load i64, i64* %_n3648
  %_id_j3680 = load i64, i64* %_3677
  %_3682 = icmp slt i64 %_id_j3680, %_id_n3681
  br i1 %_3682, label %_body3690, label %_else3691
_body3690:
  %_id_arr3683 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3649
  %_id_j3684 = load i64, i64* %_3677
  %_3685 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr3683, i32 0, i32 1, i64 %_id_j3684
  store i1 0, i1* %_3685
  %_id_i3687 = load i64, i64* %_3669
  %_id_j3686 = load i64, i64* %_3677
  %_3688 = add i64 %_id_j3686, %_id_i3687
  store i64 %_3688, i64* %_3677
  br label %_start3689
_else3691:
  br label %_post3695
_else3694:
  br label %_post3695
_post3695:
  %_id_i3696 = load i64, i64* %_3669
  %_3697 = add i64 %_id_i3696, 1
  store i64 %_3697, i64* %_3669
  br label %_start3698
_else3700:
  store i64 0, i64* %_3701
  store i64 0, i64* %_3702
  br label %_start3718
_start3718:
  %_id_n3704 = load i64, i64* %_n3648
  %_id_i3703 = load i64, i64* %_3702
  %_3705 = icmp slt i64 %_id_i3703, %_id_n3704
  br i1 %_3705, label %_body3719, label %_else3720
_body3719:
  br label %_start3712
_start3712:
  %_id_arr3706 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3649
  %_id_i3707 = load i64, i64* %_3702
  %_index_pointer3708 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_arr3706, i32 0, i32 1, i64 %_id_i3707
  %_index_value3709 = load i1, i1* %_index_pointer3708
  br i1 %_index_value3709, label %_then3713, label %_else3714
_then3713:
  %_id_count3710 = load i64, i64* %_3701
  %_3711 = add i64 %_id_count3710, 1
  store i64 %_3711, i64* %_3701
  br label %_post3715
_else3714:
  br label %_post3715
_post3715:
  %_id_i3716 = load i64, i64* %_3702
  %_3717 = add i64 %_id_i3716, 1
  store i64 %_3717, i64* %_3702
  br label %_start3718
_else3720:
  %_id_count3721 = load i64, i64* %_3701
  ret i64 %_id_count3721
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3643 = alloca i64
  %_argv3644 = alloca { i64, [0 x i8*] }*
  %_3645 = alloca i64
  store i64 %argc, i64* %_argc3643
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3644
  store i64 100, i64* %_3645
  %_id_n3646 = load i64, i64* %_3645
  %_3647 = call i64 @sieve(i64 %_id_n3646)
  ret i64 %_3647
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
