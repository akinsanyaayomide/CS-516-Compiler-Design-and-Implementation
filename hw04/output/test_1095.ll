; generated from: hw4programs/run1.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 42

define i64 @f(i64 %x) {
  %_x880 = alloca i64
  store i64 %x, i64* %_x880
  %_id_x881 = load i64, i64* %_x880
  ret i64 %_id_x881
}

define i64 @g({ i64, [0 x i64] }* %y) {
  %_y876 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y876
  %_id_y877 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y876
  %_index_pointer878 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_y877, i32 0, i32 1, i32 2
  %_index_value879 = load i64, i64* %_index_pointer878
  ret i64 %_index_value879
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc813 = alloca i64
  %_argv814 = alloca { i64, [0 x i8*] }*
  %_815 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_834 = alloca { i64, [0 x i64] }*
  %_845 = alloca i64
  %_846 = alloca i64
  store i64 %argc, i64* %_argc813
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv814
  %_raw_array824 = call i64* @oat_alloc_array(i64 2)
  %_array825 = bitcast i64* %_raw_array824 to { i64, [0 x i64] }*
  %_828 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array825, i32 0, i32 1, i32 1
  store i64 4, i64* %_828
  %_826 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array825, i32 0, i32 1, i32 0
  store i64 3, i64* %_826
  %_raw_array818 = call i64* @oat_alloc_array(i64 2)
  %_array819 = bitcast i64* %_raw_array818 to { i64, [0 x i64] }*
  %_822 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array819, i32 0, i32 1, i32 1
  store i64 2, i64* %_822
  %_820 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array819, i32 0, i32 1, i32 0
  store i64 1, i64* %_820
  %_raw_array816 = call i64* @oat_alloc_array(i64 2)
  %_array817 = bitcast i64* %_raw_array816 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_832 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array817, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array825, { i64, [0 x i64] }** %_832
  %_830 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array817, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array819, { i64, [0 x i64] }** %_830
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array817, { i64, [0 x { i64, [0 x i64] }*] }** %_815
  %_raw_array835 = call i64* @oat_alloc_array(i64 4)
  %_array836 = bitcast i64* %_raw_array835 to { i64, [0 x i64] }*
  %_843 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array836, i32 0, i32 1, i32 3
  store i64 4, i64* %_843
  %_841 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array836, i32 0, i32 1, i32 2
  store i64 3, i64* %_841
  %_839 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array836, i32 0, i32 1, i32 1
  store i64 2, i64* %_839
  %_837 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array836, i32 0, i32 1, i32 0
  store i64 1, i64* %_837
  store { i64, [0 x i64] }* %_array836, { i64, [0 x i64] }** %_834
  store i64 0, i64* %_845
  store i64 0, i64* %_846
  br label %_start853
_start853:
  %_id_j847 = load i64, i64* %_846
  %_848 = icmp slt i64 %_id_j847, 100
  br i1 %_848, label %_body854, label %_else855
_body854:
  %_id_p849 = load i64, i64* %_845
  %_850 = add i64 %_id_p849, 1
  store i64 %_850, i64* %_845
  %_id_j851 = load i64, i64* %_846
  %_852 = add i64 %_id_j851, 1
  store i64 %_852, i64* %_846
  br label %_start853
_else855:
  %_id_p873 = load i64, i64* %_845
  %_874 = call i64 @f(i64 %_id_p873)
  %_id_garr866 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_815
  %_index_pointer867 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_garr866, i32 0, i32 1, i32 1
  %_index_value868 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer867
  %_index_pointer869 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value868, i32 0, i32 1, i32 1
  %_index_value870 = load i64, i64* %_index_pointer869
  %_871 = call i64 @f(i64 %_index_value870)
  %_id_arr861 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_834
  %_index_pointer862 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr861, i32 0, i32 1, i32 3
  %_index_value863 = load i64, i64* %_index_pointer862
  %_864 = call i64 @f(i64 %_index_value863)
  %_id_i858 = load i64, i64* @i
  %_859 = call i64 @f(i64 %_id_i858)
  %_id_arr856 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_834
  %_857 = call i64 @g({ i64, [0 x i64] }* %_id_arr856)
  %_860 = add i64 %_857, %_859
  %_865 = add i64 %_860, %_864
  %_872 = add i64 %_865, %_871
  %_875 = add i64 %_872, %_874
  ret i64 %_875
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
