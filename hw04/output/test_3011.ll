; generated from: hw4programs/run1.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 42

define i64 @f(i64 %x) {
  %_x837 = alloca i64
  store i64 %x, i64* %_x837
  %_id_x838 = load i64, i64* %_x837
  ret i64 %_id_x838
}

define i64 @g({ i64, [0 x i64] }* %y) {
  %_y833 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y833
  %_id_y834 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y833
  %_index_pointer835 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_y834, i32 0, i32 1, i32 2
  %_index_value836 = load i64, i64* %_index_pointer835
  ret i64 %_index_value836
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc770 = alloca i64
  %_argv771 = alloca { i64, [0 x i8*] }*
  %_772 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_791 = alloca { i64, [0 x i64] }*
  %_802 = alloca i64
  %_803 = alloca i64
  store i64 %argc, i64* %_argc770
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv771
  %_raw_array781 = call i64* @oat_alloc_array(i64 2)
  %_array782 = bitcast i64* %_raw_array781 to { i64, [0 x i64] }*
  %_785 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array782, i32 0, i32 1, i32 1
  store i64 4, i64* %_785
  %_783 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array782, i32 0, i32 1, i32 0
  store i64 3, i64* %_783
  %_raw_array775 = call i64* @oat_alloc_array(i64 2)
  %_array776 = bitcast i64* %_raw_array775 to { i64, [0 x i64] }*
  %_779 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array776, i32 0, i32 1, i32 1
  store i64 2, i64* %_779
  %_777 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array776, i32 0, i32 1, i32 0
  store i64 1, i64* %_777
  %_raw_array773 = call i64* @oat_alloc_array(i64 2)
  %_array774 = bitcast i64* %_raw_array773 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_789 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array774, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array782, { i64, [0 x i64] }** %_789
  %_787 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array774, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array776, { i64, [0 x i64] }** %_787
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array774, { i64, [0 x { i64, [0 x i64] }*] }** %_772
  %_raw_array792 = call i64* @oat_alloc_array(i64 4)
  %_array793 = bitcast i64* %_raw_array792 to { i64, [0 x i64] }*
  %_800 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array793, i32 0, i32 1, i32 3
  store i64 4, i64* %_800
  %_798 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array793, i32 0, i32 1, i32 2
  store i64 3, i64* %_798
  %_796 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array793, i32 0, i32 1, i32 1
  store i64 2, i64* %_796
  %_794 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array793, i32 0, i32 1, i32 0
  store i64 1, i64* %_794
  store { i64, [0 x i64] }* %_array793, { i64, [0 x i64] }** %_791
  store i64 0, i64* %_802
  store i64 0, i64* %_803
  br label %_cond811
_cond811:
  %_id_j804 = load i64, i64* %_803
  %_805 = icmp slt i64 %_id_j804, 100
  br i1 %_805, label %_if810, label %_merge812
_if810:
  %_id_p806 = load i64, i64* %_802
  %_807 = add i64 %_id_p806, 1
  store i64 %_807, i64* %_802
  %_id_j808 = load i64, i64* %_803
  %_809 = add i64 %_id_j808, 1
  store i64 %_809, i64* %_803
  br label %_cond811
_merge812:
  %_id_p830 = load i64, i64* %_802
  %_831 = call i64 @f(i64 %_id_p830)
  %_id_garr823 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_772
  %_index_pointer824 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_garr823, i32 0, i32 1, i32 1
  %_index_value825 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer824
  %_index_pointer826 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value825, i32 0, i32 1, i32 1
  %_index_value827 = load i64, i64* %_index_pointer826
  %_828 = call i64 @f(i64 %_index_value827)
  %_id_arr818 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_791
  %_index_pointer819 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr818, i32 0, i32 1, i32 3
  %_index_value820 = load i64, i64* %_index_pointer819
  %_821 = call i64 @f(i64 %_index_value820)
  %_id_i815 = load i64, i64* @i
  %_816 = call i64 @f(i64 %_id_i815)
  %_id_arr813 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_791
  %_814 = call i64 @g({ i64, [0 x i64] }* %_id_arr813)
  %_817 = add i64 %_814, %_816
  %_822 = add i64 %_817, %_821
  %_829 = add i64 %_822, %_828
  %_832 = add i64 %_829, %_831
  ret i64 %_832
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
