; generated from: hw4programs/run1.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 42

define i64 @f(i64 %x) {
  %_x1000 = alloca i64
  store i64 %x, i64* %_x1000
  %_id_x1001 = load i64, i64* %_x1000
  ret i64 %_id_x1001
}

define i64 @g({ i64, [0 x i64] }* %y) {
  %_y996 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y996
  %_id_y997 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y996
  %_index_pointer999 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_y997, i32 0, i32 1, i32 2
  %_index_value998 = load i64, i64* %_index_pointer999
  ret i64 %_index_value998
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc921 = alloca i64
  %_argv922 = alloca { i64, [0 x i8*] }*
  %_923 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_954 = alloca { i64, [0 x i64] }*
  %_965 = alloca i64
  %_966 = alloca i64
  store i64 %argc, i64* %_argc921
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv922
  %_raw_array932 = call i64* @oat_alloc_array(i64 2)
  %_array933 = bitcast i64* %_raw_array932 to { i64, [0 x i64] }*
  %_936 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array933, i32 0, i32 1, i32 1
  store i64 4, i64* %_936
  %_934 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array933, i32 0, i32 1, i32 0
  store i64 3, i64* %_934
  %_raw_array926 = call i64* @oat_alloc_array(i64 2)
  %_array927 = bitcast i64* %_raw_array926 to { i64, [0 x i64] }*
  %_930 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array927, i32 0, i32 1, i32 1
  store i64 2, i64* %_930
  %_928 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array927, i32 0, i32 1, i32 0
  store i64 1, i64* %_928
  %_raw_array924 = call i64* @oat_alloc_array(i64 2)
  %_array925 = bitcast i64* %_raw_array924 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_952 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array925, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array945, { i64, [0 x i64] }** %_952
  %_950 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array925, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array939, { i64, [0 x i64] }** %_950
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array925, { i64, [0 x { i64, [0 x i64] }*] }** %_923
  %_raw_array955 = call i64* @oat_alloc_array(i64 4)
  %_array956 = bitcast i64* %_raw_array955 to { i64, [0 x i64] }*
  %_963 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array956, i32 0, i32 1, i32 3
  store i64 4, i64* %_963
  %_961 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array956, i32 0, i32 1, i32 2
  store i64 3, i64* %_961
  %_959 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array956, i32 0, i32 1, i32 1
  store i64 2, i64* %_959
  %_957 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array956, i32 0, i32 1, i32 0
  store i64 1, i64* %_957
  store { i64, [0 x i64] }* %_array956, { i64, [0 x i64] }** %_954
  store i64 0, i64* %_965
  store i64 0, i64* %_966
  br label %_cond974
_cond974:
  %_id_j967 = load i64, i64* %_966
  %_bop968 = icmp slt i64 %_id_j967, 100
  br i1 %_bop968, label %_if973, label %_merge975
_if973:
  %_id_p969 = load i64, i64* %_965
  %_bop970 = add i64 %_id_p969, 1
  store i64 %_bop970, i64* %_965
  %_id_j971 = load i64, i64* %_966
  %_bop972 = add i64 %_id_j971, 1
  store i64 %_bop972, i64* %_966
  br label %_cond974
_merge975:
  %_id_arr976 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_954
  %_977 = call i64 @g({ i64, [0 x i64] }* %_id_arr976)
  %_id_i978 = load i64, i64* @i
  %_979 = call i64 @f(i64 %_id_i978)
  %_bop980 = add i64 %_977, %_979
  %_id_arr981 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_954
  %_index_pointer983 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr981, i32 0, i32 1, i32 3
  %_index_value982 = load i64, i64* %_index_pointer983
  %_984 = call i64 @f(i64 %_index_value982)
  %_bop985 = add i64 %_bop980, %_984
  %_id_garr986 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_923
  %_index_pointer988 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_garr986, i32 0, i32 1, i32 1
  %_index_value987 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer988
  %_index_pointer990 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value987, i32 0, i32 1, i32 1
  %_index_value989 = load i64, i64* %_index_pointer990
  %_991 = call i64 @f(i64 %_index_value989)
  %_bop992 = add i64 %_bop985, %_991
  %_id_p993 = load i64, i64* %_965
  %_994 = call i64 @f(i64 %_id_p993)
  %_bop995 = add i64 %_bop992, %_994
  ret i64 %_bop995
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
