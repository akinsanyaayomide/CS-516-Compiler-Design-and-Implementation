; generated from: hw4programs/run1.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 42

define i64 @f(i64 %x) {
  %_x849 = alloca i64
  store i64 %x, i64* %_x849
  %_id_x850 = load i64, i64* %_x849
  ret i64 %_id_x850
}

define i64 @g({ i64, [0 x i64] }* %y) {
  %_y845 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y845
  %_id_y846 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y845
  %_index_pointer847 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_y846, i32 0, i32 1, i32 2
  %_index_value848 = load i64, i64* %_index_pointer847
  ret i64 %_index_value848
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc782 = alloca i64
  %_argv783 = alloca { i64, [0 x i8*] }*
  %_784 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_803 = alloca { i64, [0 x i64] }*
  %_814 = alloca i64
  %_815 = alloca i64
  store i64 %argc, i64* %_argc782
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv783
  %_raw_array793 = call i64* @oat_alloc_array(i64 2)
  %_array794 = bitcast i64* %_raw_array793 to { i64, [0 x i64] }*
  %_797 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array794, i32 0, i32 1, i32 1
  store i64 4, i64* %_797
  %_795 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array794, i32 0, i32 1, i32 0
  store i64 3, i64* %_795
  %_raw_array787 = call i64* @oat_alloc_array(i64 2)
  %_array788 = bitcast i64* %_raw_array787 to { i64, [0 x i64] }*
  %_791 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array788, i32 0, i32 1, i32 1
  store i64 2, i64* %_791
  %_789 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array788, i32 0, i32 1, i32 0
  store i64 1, i64* %_789
  %_raw_array785 = call i64* @oat_alloc_array(i64 2)
  %_array786 = bitcast i64* %_raw_array785 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_801 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array786, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array794, { i64, [0 x i64] }** %_801
  %_799 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array786, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array788, { i64, [0 x i64] }** %_799
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array786, { i64, [0 x { i64, [0 x i64] }*] }** %_784
  %_raw_array804 = call i64* @oat_alloc_array(i64 4)
  %_array805 = bitcast i64* %_raw_array804 to { i64, [0 x i64] }*
  %_812 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array805, i32 0, i32 1, i32 3
  store i64 4, i64* %_812
  %_810 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array805, i32 0, i32 1, i32 2
  store i64 3, i64* %_810
  %_808 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array805, i32 0, i32 1, i32 1
  store i64 2, i64* %_808
  %_806 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array805, i32 0, i32 1, i32 0
  store i64 1, i64* %_806
  store { i64, [0 x i64] }* %_array805, { i64, [0 x i64] }** %_803
  store i64 0, i64* %_814
  store i64 0, i64* %_815
  br label %_start822
_start822:
  %_id_j816 = load i64, i64* %_815
  %_817 = icmp slt i64 %_id_j816, 100
  br i1 %_817, label %_body823, label %_else824
_body823:
  %_id_p818 = load i64, i64* %_814
  %_819 = add i64 %_id_p818, 1
  store i64 %_819, i64* %_814
  %_id_j820 = load i64, i64* %_815
  %_821 = add i64 %_id_j820, 1
  store i64 %_821, i64* %_815
  br label %_start822
_else824:
  %_id_p842 = load i64, i64* %_814
  %_843 = call i64 @f(i64 %_id_p842)
  %_id_garr835 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_784
  %_index_pointer836 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_garr835, i32 0, i32 1, i32 1
  %_index_value837 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer836
  %_index_pointer838 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value837, i32 0, i32 1, i32 1
  %_index_value839 = load i64, i64* %_index_pointer838
  %_840 = call i64 @f(i64 %_index_value839)
  %_id_arr830 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_803
  %_index_pointer831 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr830, i32 0, i32 1, i32 3
  %_index_value832 = load i64, i64* %_index_pointer831
  %_833 = call i64 @f(i64 %_index_value832)
  %_id_i827 = load i64, i64* @i
  %_828 = call i64 @f(i64 %_id_i827)
  %_id_arr825 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_803
  %_826 = call i64 @g({ i64, [0 x i64] }* %_id_arr825)
  %_829 = add i64 %_826, %_828
  %_834 = add i64 %_829, %_833
  %_841 = add i64 %_834, %_840
  %_844 = add i64 %_841, %_843
  ret i64 %_844
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
