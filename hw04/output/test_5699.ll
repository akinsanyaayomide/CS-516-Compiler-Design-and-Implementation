; generated from: hw4programs/run6.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc952 = alloca i64
  %_argv953 = alloca { i64, [0 x i8*] }*
  %_arr972 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc952
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv953
  %_raw_array962 = call i64* @oat_alloc_array(i64 2)
  %_array963 = bitcast i64* %_raw_array962 to { i64, [0 x i64] }*
  %_966 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array963, i32 0, i32 1, i32 1
  store i64 4, i64* %_966
  %_964 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array963, i32 0, i32 1, i32 0
  store i64 3, i64* %_964
  %_raw_array956 = call i64* @oat_alloc_array(i64 2)
  %_array957 = bitcast i64* %_raw_array956 to { i64, [0 x i64] }*
  %_960 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array957, i32 0, i32 1, i32 1
  store i64 2, i64* %_960
  %_958 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array957, i32 0, i32 1, i32 0
  store i64 1, i64* %_958
  %_raw_array954 = call i64* @oat_alloc_array(i64 2)
  %_array955 = bitcast i64* %_raw_array954 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_970 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array955, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array963, { i64, [0 x i64] }** %_970
  %_968 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array955, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array957, { i64, [0 x i64] }** %_968
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array955, { i64, [0 x { i64, [0 x i64] }*] }** %_arr972
  %_id_arr973 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr972
  %_index_pointer975 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr973, i32 0, i32 1, i32 0
  %_index_value974 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer975
  %_index_pointer977 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value974, i32 0, i32 1, i32 0
  %_index_value976 = load i64, i64* %_index_pointer977
  ret i64 %_index_value976
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
