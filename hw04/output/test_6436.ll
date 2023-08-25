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
  %_index_pointer875 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_y873, i32 0, i32 1, i32 2
  %_index_value874 = load i64, i64* %_index_pointer875
  ret i64 %_index_value874
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc809 = alloca i64
  %_argv810 = alloca { i64, [0 x i8*] }*
  %_garr829 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr840 = alloca { i64, [0 x i64] }*
  %_p841 = alloca i64
  %_j842 = alloca i64
  store i64 %argc, i64* %_argc809
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv810
  %_raw_array819 = call i64* @oat_alloc_array(i64 2)
  %_array820 = bitcast i64* %_raw_array819 to { i64, [0 x i64] }*
  %_823 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array820, i32 0, i32 1, i32 1
  store i64 4, i64* %_823
  %_821 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array820, i32 0, i32 1, i32 0
  store i64 3, i64* %_821
  %_raw_array813 = call i64* @oat_alloc_array(i64 2)
  %_array814 = bitcast i64* %_raw_array813 to { i64, [0 x i64] }*
  %_817 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array814, i32 0, i32 1, i32 1
  store i64 2, i64* %_817
  %_815 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array814, i32 0, i32 1, i32 0
  store i64 1, i64* %_815
  %_raw_array811 = call i64* @oat_alloc_array(i64 2)
  %_array812 = bitcast i64* %_raw_array811 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_827 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array812, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array820, { i64, [0 x i64] }** %_827
  %_825 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array812, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array814, { i64, [0 x i64] }** %_825
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array812, { i64, [0 x { i64, [0 x i64] }*] }** %_garr829
  %_raw_array830 = call i64* @oat_alloc_array(i64 4)
  %_array831 = bitcast i64* %_raw_array830 to { i64, [0 x i64] }*
  %_838 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array831, i32 0, i32 1, i32 3
  store i64 4, i64* %_838
  %_836 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array831, i32 0, i32 1, i32 2
  store i64 3, i64* %_836
  %_834 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array831, i32 0, i32 1, i32 1
  store i64 2, i64* %_834
  %_832 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array831, i32 0, i32 1, i32 0
  store i64 1, i64* %_832
  store { i64, [0 x i64] }* %_array831, { i64, [0 x i64] }** %_arr840
  store i64 0, i64* %_p841
  store i64 0, i64* %_j842
  br label %_cond850
_cond850:
  %_id_j843 = load i64, i64* %_j842
  %_bop844 = icmp slt i64 %_id_j843, 100
  br i1 %_bop844, label %_if851, label %_merge849
_if851:
  %_id_p845 = load i64, i64* %_p841
  %_bop846 = add i64 %_id_p845, 1
  store i64 %_bop846, i64* %_p841
  %_id_j847 = load i64, i64* %_j842
  %_bop848 = add i64 %_id_j847, 1
  store i64 %_bop848, i64* %_j842
  br label %_cond850
_merge849:
  %_id_arr852 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr840
  %_853 = call i64 @g({ i64, [0 x i64] }* %_id_arr852)
  %_id_i854 = load i64, i64* @i
  %_855 = call i64 @f(i64 %_id_i854)
  %_bop856 = add i64 %_853, %_855
  %_id_arr857 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr840
  %_index_pointer859 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr857, i32 0, i32 1, i32 3
  %_index_value858 = load i64, i64* %_index_pointer859
  %_860 = call i64 @f(i64 %_index_value858)
  %_bop861 = add i64 %_bop856, %_860
  %_id_garr862 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr829
  %_index_pointer864 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_garr862, i32 0, i32 1, i32 1
  %_index_value863 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer864
  %_index_pointer866 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value863, i32 0, i32 1, i32 1
  %_index_value865 = load i64, i64* %_index_pointer866
  %_867 = call i64 @f(i64 %_index_value865)
  %_bop868 = add i64 %_bop861, %_867
  %_id_p869 = load i64, i64* %_p841
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
