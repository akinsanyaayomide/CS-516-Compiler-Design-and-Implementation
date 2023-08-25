; generated from: hw4programs/run11.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 1

define i64 @f({ i64, [0 x i64] }* %arr) {
  %_arr1171 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1171
  %_id_arr1172 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1171
  %_index_pointer1173 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1172, i32 0, i32 1, i32 3
  %_index_value1174 = load i64, i64* %_index_pointer1173
  ret i64 %_index_value1174
}

define { i64, [0 x i64] }* @g() {
  %_1159 = alloca { i64, [0 x i64] }*
  %_raw_array1160 = call i64* @oat_alloc_array(i64 4)
  %_array1161 = bitcast i64* %_raw_array1160 to { i64, [0 x i64] }*
  %_1168 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1161, i32 0, i32 1, i32 3
  store i64 99, i64* %_1168
  %_1166 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1161, i32 0, i32 1, i32 2
  store i64 99, i64* %_1166
  %_1164 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1161, i32 0, i32 1, i32 1
  store i64 1, i64* %_1164
  %_1162 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1161, i32 0, i32 1, i32 0
  store i64 99, i64* %_1162
  store { i64, [0 x i64] }* %_array1161, { i64, [0 x i64] }** %_1159
  %_id_arr1170 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1159
  ret { i64, [0 x i64] }* %_id_arr1170
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1071 = alloca i64
  %_argv1072 = alloca { i64, [0 x i8*] }*
  %_1073 = alloca { i64, [0 x i64] }*
  %_1082 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1115 = alloca i64
  %_1116 = alloca { i64, [0 x i64] }*
  %_1118 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1071
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1072
  %_raw_array1074 = call i64* @oat_alloc_array(i64 3)
  %_array1075 = bitcast i64* %_raw_array1074 to { i64, [0 x i64] }*
  %_1080 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1075, i32 0, i32 1, i32 2
  store i64 99, i64* %_1080
  %_1078 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1075, i32 0, i32 1, i32 1
  store i64 1, i64* %_1078
  %_1076 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1075, i32 0, i32 1, i32 0
  store i64 99, i64* %_1076
  store { i64, [0 x i64] }* %_array1075, { i64, [0 x i64] }** %_1073
  %_raw_array1101 = call i64* @oat_alloc_array(i64 3)
  %_array1102 = bitcast i64* %_raw_array1101 to { i64, [0 x i64] }*
  %_1107 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1102, i32 0, i32 1, i32 2
  store i64 99, i64* %_1107
  %_1105 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1102, i32 0, i32 1, i32 1
  store i64 99, i64* %_1105
  %_1103 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1102, i32 0, i32 1, i32 0
  store i64 99, i64* %_1103
  %_raw_array1093 = call i64* @oat_alloc_array(i64 3)
  %_array1094 = bitcast i64* %_raw_array1093 to { i64, [0 x i64] }*
  %_1099 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1094, i32 0, i32 1, i32 2
  store i64 99, i64* %_1099
  %_1097 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1094, i32 0, i32 1, i32 1
  store i64 1, i64* %_1097
  %_1095 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1094, i32 0, i32 1, i32 0
  store i64 99, i64* %_1095
  %_raw_array1085 = call i64* @oat_alloc_array(i64 3)
  %_array1086 = bitcast i64* %_raw_array1085 to { i64, [0 x i64] }*
  %_1091 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1086, i32 0, i32 1, i32 2
  store i64 99, i64* %_1091
  %_1089 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1086, i32 0, i32 1, i32 1
  store i64 99, i64* %_1089
  %_1087 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1086, i32 0, i32 1, i32 0
  store i64 99, i64* %_1087
  %_raw_array1083 = call i64* @oat_alloc_array(i64 3)
  %_array1084 = bitcast i64* %_raw_array1083 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1113 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1084, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1102, { i64, [0 x i64] }** %_1113
  %_1111 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1084, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1094, { i64, [0 x i64] }** %_1111
  %_1109 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1084, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1086, { i64, [0 x i64] }** %_1109
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1084, { i64, [0 x { i64, [0 x i64] }*] }** %_1082
  store i64 1, i64* %_1115
  %_1117 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_1117, { i64, [0 x i64] }** %_1116
  %_raw_array1119 = call i64* @oat_alloc_array(i64 4)
  %_array1120 = bitcast i64* %_raw_array1119 to { i64, [0 x i64] }*
  %_1127 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1120, i32 0, i32 1, i32 3
  store i64 1, i64* %_1127
  %_1125 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1120, i32 0, i32 1, i32 2
  store i64 99, i64* %_1125
  %_1123 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1120, i32 0, i32 1, i32 1
  store i64 99, i64* %_1123
  %_1121 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1120, i32 0, i32 1, i32 0
  store i64 99, i64* %_1121
  store { i64, [0 x i64] }* %_array1120, { i64, [0 x i64] }** %_1118
  %_id_i1130 = load i64, i64* @i
  %_id_c1129 = load i64, i64* %_1115
  %_1131 = add i64 %_id_c1129, %_id_i1130
  store i64 %_1131, i64* %_1115
  %_id_arr11133 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1073
  %_index_pointer1134 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr11133, i32 0, i32 1, i32 1
  %_index_value1135 = load i64, i64* %_index_pointer1134
  %_id_c1132 = load i64, i64* %_1115
  %_1136 = add i64 %_id_c1132, %_index_value1135
  store i64 %_1136, i64* %_1115
  %_id_arr21138 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1082
  %_index_pointer1139 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr21138, i32 0, i32 1, i32 1
  %_index_value1140 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1139
  %_index_pointer1141 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1140, i32 0, i32 1, i32 1
  %_index_value1142 = load i64, i64* %_index_pointer1141
  %_id_c1137 = load i64, i64* %_1115
  %_1143 = add i64 %_id_c1137, %_index_value1142
  store i64 %_1143, i64* %_1115
  %_id_arr31145 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1118
  %_index_pointer1146 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr31145, i32 0, i32 1, i32 3
  %_index_value1147 = load i64, i64* %_index_pointer1146
  %_id_c1144 = load i64, i64* %_1115
  %_1148 = add i64 %_id_c1144, %_index_value1147
  store i64 %_1148, i64* %_1115
  %_id_arr31150 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1118
  %_1151 = call i64 @f({ i64, [0 x i64] }* %_id_arr31150)
  %_id_c1149 = load i64, i64* %_1115
  %_1152 = add i64 %_id_c1149, %_1151
  store i64 %_1152, i64* %_1115
  %_id_arr41154 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1116
  %_index_pointer1155 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr41154, i32 0, i32 1, i32 1
  %_index_value1156 = load i64, i64* %_index_pointer1155
  %_id_c1153 = load i64, i64* %_1115
  %_1157 = add i64 %_id_c1153, %_index_value1156
  store i64 %_1157, i64* %_1115
  %_id_c1158 = load i64, i64* %_1115
  ret i64 %_id_c1158
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
