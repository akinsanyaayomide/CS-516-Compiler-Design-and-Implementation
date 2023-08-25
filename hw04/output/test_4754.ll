; generated from: hw4programs/run42.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc773 = alloca i64
  %_argv774 = alloca { i64, [0 x i8*] }*
  %_775 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_796 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_817 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_838 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_859 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc773
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv774
  %_raw_array782 = call i64* @oat_alloc_array(i64 1)
  %_array783 = bitcast i64* %_raw_array782 to { i64, [0 x i64] }*
  %_raw_array780 = call i64* @oat_alloc_array(i64 1)
  %_array781 = bitcast i64* %_raw_array780 to { i64, [0 x i64] }*
  %_raw_array778 = call i64* @oat_alloc_array(i64 1)
  %_array779 = bitcast i64* %_raw_array778 to { i64, [0 x i64] }*
  %_raw_array776 = call i64* @oat_alloc_array(i64 3)
  %_array777 = bitcast i64* %_raw_array776 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_794 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array777, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array789, { i64, [0 x i64] }** %_794
  %_792 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array777, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array787, { i64, [0 x i64] }** %_792
  %_790 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array777, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array785, { i64, [0 x i64] }** %_790
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array777, { i64, [0 x { i64, [0 x i64] }*] }** %_775
  %_raw_array803 = call i64* @oat_alloc_array(i64 1)
  %_array804 = bitcast i64* %_raw_array803 to { i64, [0 x i64] }*
  %_raw_array801 = call i64* @oat_alloc_array(i64 1)
  %_array802 = bitcast i64* %_raw_array801 to { i64, [0 x i64] }*
  %_raw_array799 = call i64* @oat_alloc_array(i64 1)
  %_array800 = bitcast i64* %_raw_array799 to { i64, [0 x i64] }*
  %_raw_array797 = call i64* @oat_alloc_array(i64 3)
  %_array798 = bitcast i64* %_raw_array797 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_815 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array798, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array810, { i64, [0 x i64] }** %_815
  %_813 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array798, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array808, { i64, [0 x i64] }** %_813
  %_811 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array798, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array806, { i64, [0 x i64] }** %_811
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array798, { i64, [0 x { i64, [0 x i64] }*] }** %_796
  %_raw_array824 = call i64* @oat_alloc_array(i64 1)
  %_array825 = bitcast i64* %_raw_array824 to { i64, [0 x i64] }*
  %_raw_array822 = call i64* @oat_alloc_array(i64 1)
  %_array823 = bitcast i64* %_raw_array822 to { i64, [0 x i64] }*
  %_raw_array820 = call i64* @oat_alloc_array(i64 1)
  %_array821 = bitcast i64* %_raw_array820 to { i64, [0 x i64] }*
  %_raw_array818 = call i64* @oat_alloc_array(i64 3)
  %_array819 = bitcast i64* %_raw_array818 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_836 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array819, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array831, { i64, [0 x i64] }** %_836
  %_834 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array819, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array829, { i64, [0 x i64] }** %_834
  %_832 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array819, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array827, { i64, [0 x i64] }** %_832
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array819, { i64, [0 x { i64, [0 x i64] }*] }** %_817
  %_raw_array845 = call i64* @oat_alloc_array(i64 1)
  %_array846 = bitcast i64* %_raw_array845 to { i64, [0 x i64] }*
  %_raw_array843 = call i64* @oat_alloc_array(i64 1)
  %_array844 = bitcast i64* %_raw_array843 to { i64, [0 x i64] }*
  %_raw_array841 = call i64* @oat_alloc_array(i64 1)
  %_array842 = bitcast i64* %_raw_array841 to { i64, [0 x i64] }*
  %_raw_array839 = call i64* @oat_alloc_array(i64 3)
  %_array840 = bitcast i64* %_raw_array839 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_857 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array840, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array852, { i64, [0 x i64] }** %_857
  %_855 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array840, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array850, { i64, [0 x i64] }** %_855
  %_853 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array840, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array848, { i64, [0 x i64] }** %_853
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array840, { i64, [0 x { i64, [0 x i64] }*] }** %_838
  %_raw_array860 = call i64* @oat_alloc_array(i64 3)
  %_array861 = bitcast i64* %_raw_array860 to { i64, [0 x i64] }*
  %_866 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array861, i32 0, i32 1, i32 2
  store i64 2, i64* %_866
  %_864 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array861, i32 0, i32 1, i32 1
  store i64 1, i64* %_864
  %_862 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array861, i32 0, i32 1, i32 0
  store i64 0, i64* %_862
  store { i64, [0 x i64] }* %_array861, { i64, [0 x i64] }** %_859
  %_id_a5868 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_859
  %_id_a2869 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_796
  %_870 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2869, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_id_a5868, { i64, [0 x i64] }** %_870
  %_id_a2871 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_796
  %_index_pointer873 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2871, i32 0, i32 1, i32 0
  %_index_value872 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer873
  %_874 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value872, i32 0, i32 1, i32 0
  store i64 2, i64* %_874
  %_id_a2875 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_796
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2875, { i64, [0 x { i64, [0 x i64] }*] }** %_775
  %_id_a1876 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_775
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a1876, { i64, [0 x { i64, [0 x i64] }*] }** %_817
  %_id_a4877 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_838
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a4877, { i64, [0 x { i64, [0 x i64] }*] }** %_775
  %_id_a3878 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_817
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a3878, { i64, [0 x { i64, [0 x i64] }*] }** %_796
  %_id_a2879 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_796
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a2879, { i64, [0 x { i64, [0 x i64] }*] }** %_838
  %_id_a4880 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_838
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a4880, { i64, [0 x { i64, [0 x i64] }*] }** %_817
  %_id_a3881 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_817
  %_index_pointer883 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a3881, i32 0, i32 1, i32 0
  %_index_value882 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer883
  %_index_pointer885 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value882, i32 0, i32 1, i32 0
  %_index_value884 = load i64, i64* %_index_pointer885
  ret i64 %_index_value884
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
