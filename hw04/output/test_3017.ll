; generated from: hw4programs/run7.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc938 = alloca i64
  %_argv939 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc938
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv939
  %_raw_array976 = call i64* @oat_alloc_array(i64 2)
  %_array977 = bitcast i64* %_raw_array976 to { i64, [0 x i64] }*
  %_980 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array977, i32 0, i32 1, i32 1
  store i64 40, i64* %_980
  %_978 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array977, i32 0, i32 1, i32 0
  store i64 30, i64* %_978
  %_raw_array970 = call i64* @oat_alloc_array(i64 2)
  %_array971 = bitcast i64* %_raw_array970 to { i64, [0 x i64] }*
  %_974 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array971, i32 0, i32 1, i32 1
  store i64 20, i64* %_974
  %_972 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array971, i32 0, i32 1, i32 0
  store i64 10, i64* %_972
  %_raw_array968 = call i64* @oat_alloc_array(i64 2)
  %_array969 = bitcast i64* %_raw_array968 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_984 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array969, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array977, { i64, [0 x i64] }** %_984
  %_982 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array969, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array971, { i64, [0 x i64] }** %_982
  %_raw_array962 = call i64* @oat_alloc_array(i64 1)
  %_array963 = bitcast i64* %_raw_array962 to { i64, [0 x i64] }*
  %_964 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array963, i32 0, i32 1, i32 0
  store i64 5, i64* %_964
  %_raw_array960 = call i64* @oat_alloc_array(i64 1)
  %_array961 = bitcast i64* %_raw_array960 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_966 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array961, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array963, { i64, [0 x i64] }** %_966
  %_raw_array950 = call i64* @oat_alloc_array(i64 2)
  %_array951 = bitcast i64* %_raw_array950 to { i64, [0 x i64] }*
  %_954 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array951, i32 0, i32 1, i32 1
  store i64 4, i64* %_954
  %_952 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array951, i32 0, i32 1, i32 0
  store i64 3, i64* %_952
  %_raw_array944 = call i64* @oat_alloc_array(i64 2)
  %_array945 = bitcast i64* %_raw_array944 to { i64, [0 x i64] }*
  %_948 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array945, i32 0, i32 1, i32 1
  store i64 2, i64* %_948
  %_946 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array945, i32 0, i32 1, i32 0
  store i64 1, i64* %_946
  %_raw_array942 = call i64* @oat_alloc_array(i64 2)
  %_array943 = bitcast i64* %_raw_array942 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_958 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array943, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array951, { i64, [0 x i64] }** %_958
  %_956 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array943, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array945, { i64, [0 x i64] }** %_956
  %_raw_array940 = call i64* @oat_alloc_array(i64 3)
  %_array941 = bitcast i64* %_raw_array940 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_990 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array941, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array969, { i64, [0 x { i64, [0 x i64] }*] }** %_990
  %_988 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array941, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array961, { i64, [0 x { i64, [0 x i64] }*] }** %_988
  %_986 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array941, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array943, { i64, [0 x { i64, [0 x i64] }*] }** %_986
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array941, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_id_arr992 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_index_pointer993 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_id_arr992, i32 0, i32 1, i32 2
  %_index_value994 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_index_pointer993
  %_index_pointer995 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_index_value994, i32 0, i32 1, i32 0
  %_index_value996 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer995
  %_index_pointer997 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value996, i32 0, i32 1, i32 1
  %_index_value998 = load i64, i64* %_index_pointer997
  ret i64 %_index_value998
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
