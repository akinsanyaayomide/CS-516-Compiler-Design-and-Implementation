; generated from: hw4programs/run7.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc740 = alloca i64
  %_argv741 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc740
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv741
  %_raw_array778 = call i64* @oat_alloc_array(i64 2)
  %_array779 = bitcast i64* %_raw_array778 to { i64, [0 x i64] }*
  %_782 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array779, i32 0, i32 1, i32 1
  store i64 40, i64* %_782
  %_780 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array779, i32 0, i32 1, i32 0
  store i64 30, i64* %_780
  %_raw_array772 = call i64* @oat_alloc_array(i64 2)
  %_array773 = bitcast i64* %_raw_array772 to { i64, [0 x i64] }*
  %_776 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array773, i32 0, i32 1, i32 1
  store i64 20, i64* %_776
  %_774 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array773, i32 0, i32 1, i32 0
  store i64 10, i64* %_774
  %_raw_array770 = call i64* @oat_alloc_array(i64 2)
  %_array771 = bitcast i64* %_raw_array770 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_786 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array771, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array779, { i64, [0 x i64] }** %_786
  %_784 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array771, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array773, { i64, [0 x i64] }** %_784
  %_raw_array764 = call i64* @oat_alloc_array(i64 1)
  %_array765 = bitcast i64* %_raw_array764 to { i64, [0 x i64] }*
  %_766 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array765, i32 0, i32 1, i32 0
  store i64 5, i64* %_766
  %_raw_array762 = call i64* @oat_alloc_array(i64 1)
  %_array763 = bitcast i64* %_raw_array762 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_768 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array763, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array765, { i64, [0 x i64] }** %_768
  %_raw_array752 = call i64* @oat_alloc_array(i64 2)
  %_array753 = bitcast i64* %_raw_array752 to { i64, [0 x i64] }*
  %_756 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array753, i32 0, i32 1, i32 1
  store i64 4, i64* %_756
  %_754 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array753, i32 0, i32 1, i32 0
  store i64 3, i64* %_754
  %_raw_array746 = call i64* @oat_alloc_array(i64 2)
  %_array747 = bitcast i64* %_raw_array746 to { i64, [0 x i64] }*
  %_750 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array747, i32 0, i32 1, i32 1
  store i64 2, i64* %_750
  %_748 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array747, i32 0, i32 1, i32 0
  store i64 1, i64* %_748
  %_raw_array744 = call i64* @oat_alloc_array(i64 2)
  %_array745 = bitcast i64* %_raw_array744 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_760 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array745, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array753, { i64, [0 x i64] }** %_760
  %_758 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array745, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array747, { i64, [0 x i64] }** %_758
  %_raw_array742 = call i64* @oat_alloc_array(i64 3)
  %_array743 = bitcast i64* %_raw_array742 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_792 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array743, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array771, { i64, [0 x { i64, [0 x i64] }*] }** %_792
  %_790 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array743, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array763, { i64, [0 x { i64, [0 x i64] }*] }** %_790
  %_788 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array743, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array745, { i64, [0 x { i64, [0 x i64] }*] }** %_788
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array743, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_id_arr794 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_index_pointer795 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_id_arr794, i32 0, i32 1, i32 2
  %_index_value796 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_index_pointer795
  %_index_pointer797 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_index_value796, i32 0, i32 1, i32 0
  %_index_value798 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer797
  %_index_pointer799 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value798, i32 0, i32 1, i32 1
  %_index_value800 = load i64, i64* %_index_pointer799
  ret i64 %_index_value800
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
