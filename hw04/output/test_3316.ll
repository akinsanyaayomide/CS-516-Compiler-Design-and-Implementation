; generated from: hw4programs/run11.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 1

define i64 @f({ i64, [0 x i64] }* %arr) {
  %_arr974 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr974
  %_id_arr975 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr974
  %_index_pointer976 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr975, i32 0, i32 1, i32 3
  %_index_value977 = load i64, i64* %_index_pointer976
  ret i64 %_index_value977
}

define { i64, [0 x i64] }* @g() {
  %_962 = alloca { i64, [0 x i64] }*
  %_raw_array963 = call i64* @oat_alloc_array(i64 4)
  %_array964 = bitcast i64* %_raw_array963 to { i64, [0 x i64] }*
  %_971 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array964, i32 0, i32 1, i32 3
  store i64 99, i64* %_971
  %_969 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array964, i32 0, i32 1, i32 2
  store i64 99, i64* %_969
  %_967 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array964, i32 0, i32 1, i32 1
  store i64 1, i64* %_967
  %_965 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array964, i32 0, i32 1, i32 0
  store i64 99, i64* %_965
  store { i64, [0 x i64] }* %_array964, { i64, [0 x i64] }** %_962
  %_id_arr973 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_962
  ret { i64, [0 x i64] }* %_id_arr973
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc874 = alloca i64
  %_argv875 = alloca { i64, [0 x i8*] }*
  %_876 = alloca { i64, [0 x i64] }*
  %_885 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_918 = alloca i64
  %_919 = alloca { i64, [0 x i64] }*
  %_921 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc874
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv875
  %_raw_array877 = call i64* @oat_alloc_array(i64 3)
  %_array878 = bitcast i64* %_raw_array877 to { i64, [0 x i64] }*
  %_883 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array878, i32 0, i32 1, i32 2
  store i64 99, i64* %_883
  %_881 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array878, i32 0, i32 1, i32 1
  store i64 1, i64* %_881
  %_879 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array878, i32 0, i32 1, i32 0
  store i64 99, i64* %_879
  store { i64, [0 x i64] }* %_array878, { i64, [0 x i64] }** %_876
  %_raw_array904 = call i64* @oat_alloc_array(i64 3)
  %_array905 = bitcast i64* %_raw_array904 to { i64, [0 x i64] }*
  %_910 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array905, i32 0, i32 1, i32 2
  store i64 99, i64* %_910
  %_908 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array905, i32 0, i32 1, i32 1
  store i64 99, i64* %_908
  %_906 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array905, i32 0, i32 1, i32 0
  store i64 99, i64* %_906
  %_raw_array896 = call i64* @oat_alloc_array(i64 3)
  %_array897 = bitcast i64* %_raw_array896 to { i64, [0 x i64] }*
  %_902 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array897, i32 0, i32 1, i32 2
  store i64 99, i64* %_902
  %_900 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array897, i32 0, i32 1, i32 1
  store i64 1, i64* %_900
  %_898 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array897, i32 0, i32 1, i32 0
  store i64 99, i64* %_898
  %_raw_array888 = call i64* @oat_alloc_array(i64 3)
  %_array889 = bitcast i64* %_raw_array888 to { i64, [0 x i64] }*
  %_894 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array889, i32 0, i32 1, i32 2
  store i64 99, i64* %_894
  %_892 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array889, i32 0, i32 1, i32 1
  store i64 99, i64* %_892
  %_890 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array889, i32 0, i32 1, i32 0
  store i64 99, i64* %_890
  %_raw_array886 = call i64* @oat_alloc_array(i64 3)
  %_array887 = bitcast i64* %_raw_array886 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_916 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array887, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array905, { i64, [0 x i64] }** %_916
  %_914 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array887, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array897, { i64, [0 x i64] }** %_914
  %_912 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array887, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array889, { i64, [0 x i64] }** %_912
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array887, { i64, [0 x { i64, [0 x i64] }*] }** %_885
  store i64 1, i64* %_918
  %_920 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_920, { i64, [0 x i64] }** %_919
  %_raw_array922 = call i64* @oat_alloc_array(i64 4)
  %_array923 = bitcast i64* %_raw_array922 to { i64, [0 x i64] }*
  %_930 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array923, i32 0, i32 1, i32 3
  store i64 1, i64* %_930
  %_928 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array923, i32 0, i32 1, i32 2
  store i64 99, i64* %_928
  %_926 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array923, i32 0, i32 1, i32 1
  store i64 99, i64* %_926
  %_924 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array923, i32 0, i32 1, i32 0
  store i64 99, i64* %_924
  store { i64, [0 x i64] }* %_array923, { i64, [0 x i64] }** %_921
  %_id_c932 = load i64, i64* %_918
  %_id_i933 = load i64, i64* @i
  %_bop934 = add i64 %_id_c932, %_id_i933
  store i64 %_bop934, i64* %_918
  %_id_c935 = load i64, i64* %_918
  %_id_arr1936 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_876
  %_index_pointer937 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1936, i32 0, i32 1, i32 1
  %_index_value938 = load i64, i64* %_index_pointer937
  %_bop939 = add i64 %_id_c935, %_index_value938
  store i64 %_bop939, i64* %_918
  %_id_c940 = load i64, i64* %_918
  %_id_arr2941 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_885
  %_index_pointer942 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr2941, i32 0, i32 1, i32 1
  %_index_value943 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer942
  %_index_pointer944 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value943, i32 0, i32 1, i32 1
  %_index_value945 = load i64, i64* %_index_pointer944
  %_bop946 = add i64 %_id_c940, %_index_value945
  store i64 %_bop946, i64* %_918
  %_id_c947 = load i64, i64* %_918
  %_id_arr3948 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_921
  %_index_pointer949 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr3948, i32 0, i32 1, i32 3
  %_index_value950 = load i64, i64* %_index_pointer949
  %_bop951 = add i64 %_id_c947, %_index_value950
  store i64 %_bop951, i64* %_918
  %_id_c952 = load i64, i64* %_918
  %_id_arr3953 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_921
  %_954 = call i64 @f({ i64, [0 x i64] }* %_id_arr3953)
  %_bop955 = add i64 %_id_c952, %_954
  store i64 %_bop955, i64* %_918
  %_id_c956 = load i64, i64* %_918
  %_id_arr4957 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_919
  %_index_pointer958 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr4957, i32 0, i32 1, i32 1
  %_index_value959 = load i64, i64* %_index_pointer958
  %_bop960 = add i64 %_id_c956, %_index_value959
  store i64 %_bop960, i64* %_918
  %_id_c961 = load i64, i64* %_918
  ret i64 %_id_c961
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
