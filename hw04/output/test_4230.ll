; generated from: hw4programs/run1.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 42

define i64 @f(i64 %x) {
  %_x955 = alloca i64
  store i64 %x, i64* %_x955
  %_id_x956 = load i64, i64* %_x955
  ret i64 %_id_x956
}

define i64 @g({ i64, [0 x i64] }* %y) {
  %_y951 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y951
  %_id_y952 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y951
  %_index_pointer954 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_y952, i32 0, i32 1, i32 2
  %_index_value953 = load i64, i64* %_index_pointer954
  ret i64 %_index_value953
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc878 = alloca i64
  %_argv879 = alloca { i64, [0 x i8*] }*
  %_880 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_905 = alloca { i64, [0 x i64] }*
  %_920 = alloca i64
  %_921 = alloca i64
  store i64 %argc, i64* %_argc878
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv879
  %_raw_array891 = call i64* @oat_alloc_array(i64 2)
  %_array892 = bitcast i64* %_raw_array891 to { i64, [0 x i64] }*
  %_898 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array892, i32 0, i32 1, i32 1
  store i64 4, i64* %_896
  %_895 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array892, i32 0, i32 1, i32 0
  store i64 3, i64* %_893
  %_raw_array883 = call i64* @oat_alloc_array(i64 2)
  %_array884 = bitcast i64* %_raw_array883 to { i64, [0 x i64] }*
  %_890 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array884, i32 0, i32 1, i32 1
  store i64 2, i64* %_888
  %_887 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array884, i32 0, i32 1, i32 0
  store i64 1, i64* %_885
  %_raw_array881 = call i64* @oat_alloc_array(i64 2)
  %_array882 = bitcast i64* %_raw_array881 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_904 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array882, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array892, { i64, [0 x i64] }** %_902
  %_901 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array882, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array884, { i64, [0 x i64] }** %_899
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array882, { i64, [0 x { i64, [0 x i64] }*] }** %_880
  %_raw_array906 = call i64* @oat_alloc_array(i64 4)
  %_array907 = bitcast i64* %_raw_array906 to { i64, [0 x i64] }*
  %_919 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array907, i32 0, i32 1, i32 3
  store i64 4, i64* %_917
  %_916 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array907, i32 0, i32 1, i32 2
  store i64 3, i64* %_914
  %_913 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array907, i32 0, i32 1, i32 1
  store i64 2, i64* %_911
  %_910 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array907, i32 0, i32 1, i32 0
  store i64 1, i64* %_908
  store { i64, [0 x i64] }* %_array907, { i64, [0 x i64] }** %_905
  store i64 0, i64* %_920
  store i64 0, i64* %_921
  br label %_cond929
_cond929:
  %_id_j922 = load i64, i64* %_921
  %_bop923 = icmp slt i64 %_id_j922, 100
  br i1 %_bop923, label %_if928, label %_merge930
_if928:
  %_id_p924 = load i64, i64* %_920
  %_bop925 = add i64 %_id_p924, 1
  store i64 %_bop925, i64* %_920
  %_id_j926 = load i64, i64* %_921
  %_bop927 = add i64 %_id_j926, 1
  store i64 %_bop927, i64* %_921
  br label %_cond929
_merge930:
  %_id_arr931 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_905
  %_932 = call i64 @g({ i64, [0 x i64] }* %_id_arr931)
  %_id_i933 = load i64, i64* @i
  %_934 = call i64 @f(i64 %_id_i933)
  %_bop935 = add i64 %_932, %_934
  %_id_arr936 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_905
  %_index_pointer938 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr936, i32 0, i32 1, i32 3
  %_index_value937 = load i64, i64* %_index_pointer938
  %_939 = call i64 @f(i64 %_index_value937)
  %_bop940 = add i64 %_bop935, %_939
  %_id_garr941 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_880
  %_index_pointer943 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_garr941, i32 0, i32 1, i32 1
  %_index_value942 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer943
  %_index_pointer945 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value942, i32 0, i32 1, i32 1
  %_index_value944 = load i64, i64* %_index_pointer945
  %_946 = call i64 @f(i64 %_index_value944)
  %_bop947 = add i64 %_bop940, %_946
  %_id_p948 = load i64, i64* %_920
  %_949 = call i64 @f(i64 %_id_p948)
  %_bop950 = add i64 %_bop947, %_949
  ret i64 %_bop950
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
