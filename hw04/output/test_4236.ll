; generated from: hw4programs/run7.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1073 = alloca i64
  %_argv1074 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc1073
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1074
  %_raw_array1121 = call i64* @oat_alloc_array(i64 2)
  %_array1122 = bitcast i64* %_raw_array1121 to { i64, [0 x i64] }*
  %_1128 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1122, i32 0, i32 1, i32 1
  store i64 40, i64* %_1126
  %_1125 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1122, i32 0, i32 1, i32 0
  store i64 30, i64* %_1123
  %_raw_array1113 = call i64* @oat_alloc_array(i64 2)
  %_array1114 = bitcast i64* %_raw_array1113 to { i64, [0 x i64] }*
  %_1120 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1114, i32 0, i32 1, i32 1
  store i64 20, i64* %_1118
  %_1117 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1114, i32 0, i32 1, i32 0
  store i64 10, i64* %_1115
  %_raw_array1111 = call i64* @oat_alloc_array(i64 2)
  %_array1112 = bitcast i64* %_raw_array1111 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1134 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1112, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1122, { i64, [0 x i64] }** %_1132
  %_1131 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1112, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1114, { i64, [0 x i64] }** %_1129
  %_raw_array1103 = call i64* @oat_alloc_array(i64 1)
  %_array1104 = bitcast i64* %_raw_array1103 to { i64, [0 x i64] }*
  %_1107 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1104, i32 0, i32 1, i32 0
  store i64 5, i64* %_1105
  %_raw_array1101 = call i64* @oat_alloc_array(i64 1)
  %_array1102 = bitcast i64* %_raw_array1101 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1110 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1102, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1104, { i64, [0 x i64] }** %_1108
  %_raw_array1087 = call i64* @oat_alloc_array(i64 2)
  %_array1088 = bitcast i64* %_raw_array1087 to { i64, [0 x i64] }*
  %_1094 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1088, i32 0, i32 1, i32 1
  store i64 4, i64* %_1092
  %_1091 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1088, i32 0, i32 1, i32 0
  store i64 3, i64* %_1089
  %_raw_array1079 = call i64* @oat_alloc_array(i64 2)
  %_array1080 = bitcast i64* %_raw_array1079 to { i64, [0 x i64] }*
  %_1086 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1080, i32 0, i32 1, i32 1
  store i64 2, i64* %_1084
  %_1083 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1080, i32 0, i32 1, i32 0
  store i64 1, i64* %_1081
  %_raw_array1077 = call i64* @oat_alloc_array(i64 2)
  %_array1078 = bitcast i64* %_raw_array1077 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1100 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1078, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1088, { i64, [0 x i64] }** %_1098
  %_1097 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1078, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1080, { i64, [0 x i64] }** %_1095
  %_raw_array1075 = call i64* @oat_alloc_array(i64 3)
  %_array1076 = bitcast i64* %_raw_array1075 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_1143 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1076, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1112, { i64, [0 x { i64, [0 x i64] }*] }** %_1141
  %_1140 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1076, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1102, { i64, [0 x { i64, [0 x i64] }*] }** %_1138
  %_1137 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1076, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1078, { i64, [0 x { i64, [0 x i64] }*] }** %_1135
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1076, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_id_arr1144 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_index_pointer1146 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_id_arr1144, i32 0, i32 1, i32 2
  %_index_value1145 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_index_pointer1146
  %_index_pointer1148 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_index_value1145, i32 0, i32 1, i32 0
  %_index_value1147 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1148
  %_index_pointer1150 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1147, i32 0, i32 1, i32 1
  %_index_value1149 = load i64, i64* %_index_pointer1150
  ret i64 %_index_value1149
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
