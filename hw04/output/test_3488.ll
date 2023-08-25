; generated from: hw4programs/run1.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 42

define i64 @f(i64 %x) {
  %_x876 = alloca i64
  store i64 %x, i64* %_x876
  %_id_x877 = load i64, i64* %_x876
  ret i64 %_id_x877
}

define i64 @g({ i64, [0 x i64] }* %y) {
  %_y872 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y872
  %_id_y873 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y872
  %_index_pointer874 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_y873, i32 0, i32 1, i32 2
  %_index_value875 = load i64, i64* %_index_pointer874
  ret i64 %_index_value875
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc809 = alloca i64
  %_argv810 = alloca { i64, [0 x i8*] }*
  %_811 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_830 = alloca { i64, [0 x i64] }*
  %_841 = alloca i64
  %_842 = alloca i64
  store i64 %argc, i64* %_argc809
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv810
  %_raw_array820 = call i64* @oat_alloc_array(i64 2)
  %_array821 = bitcast i64* %_raw_array820 to { i64, [0 x i64] }*
  %_824 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array821, i32 0, i32 1, i32 1
  store i64 4, i64* %_824
  %_822 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array821, i32 0, i32 1, i32 0
  store i64 3, i64* %_822
  %_raw_array814 = call i64* @oat_alloc_array(i64 2)
  %_array815 = bitcast i64* %_raw_array814 to { i64, [0 x i64] }*
  %_818 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array815, i32 0, i32 1, i32 1
  store i64 2, i64* %_818
  %_816 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array815, i32 0, i32 1, i32 0
  store i64 1, i64* %_816
  %_raw_array812 = call i64* @oat_alloc_array(i64 2)
  %_array813 = bitcast i64* %_raw_array812 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_828 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array813, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array821, { i64, [0 x i64] }** %_828
  %_826 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array813, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array815, { i64, [0 x i64] }** %_826
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array813, { i64, [0 x { i64, [0 x i64] }*] }** %_811
  %_raw_array831 = call i64* @oat_alloc_array(i64 4)
  %_array832 = bitcast i64* %_raw_array831 to { i64, [0 x i64] }*
  %_839 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array832, i32 0, i32 1, i32 3
  store i64 4, i64* %_839
  %_837 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array832, i32 0, i32 1, i32 2
  store i64 3, i64* %_837
  %_835 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array832, i32 0, i32 1, i32 1
  store i64 2, i64* %_835
  %_833 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array832, i32 0, i32 1, i32 0
  store i64 1, i64* %_833
  store { i64, [0 x i64] }* %_array832, { i64, [0 x i64] }** %_830
  store i64 0, i64* %_841
  store i64 0, i64* %_842
  br label %_cond850
_cond850:
  %_id_j843 = load i64, i64* %_842
  %_bop844 = icmp slt i64 %_id_j843, 100
  br i1 %_bop844, label %_if849, label %_merge851
_if849:
  %_id_p845 = load i64, i64* %_841
  %_bop846 = add i64 %_id_p845, 1
  store i64 %_bop846, i64* %_841
  %_id_j847 = load i64, i64* %_842
  %_bop848 = add i64 %_id_j847, 1
  store i64 %_bop848, i64* %_842
  br label %_cond850
_merge851:
  %_id_arr852 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_830
  %_853 = call i64 @g({ i64, [0 x i64] }* %_id_arr852)
  %_id_i854 = load i64, i64* @i
  %_855 = call i64 @f(i64 %_id_i854)
  %_bop856 = add i64 %_853, %_855
  %_id_arr857 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_830
  %_index_pointer858 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr857, i32 0, i32 1, i32 3
  %_index_value859 = load i64, i64* %_index_pointer858
  %_860 = call i64 @f(i64 %_index_value859)
  %_bop861 = add i64 %_bop856, %_860
  %_id_garr862 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_811
  %_index_pointer863 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_garr862, i32 0, i32 1, i32 1
  %_index_value864 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer863
  %_index_pointer865 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value864, i32 0, i32 1, i32 1
  %_index_value866 = load i64, i64* %_index_pointer865
  %_867 = call i64 @f(i64 %_index_value866)
  %_bop868 = add i64 %_bop861, %_867
  %_id_p869 = load i64, i64* %_841
  %_870 = call i64 @f(i64 %_id_p869)
  %_bop871 = add i64 %_bop868, %_870
  ret i64 %_bop871
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
