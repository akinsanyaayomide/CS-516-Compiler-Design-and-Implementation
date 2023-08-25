; generated from: hw4programs/run11.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 1

define i64 @f({ i64, [0 x i64] }* %arr) {
  %_arr1172 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1172
  %_id_arr1173 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1172
  %_index_pointer1174 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1173, i32 0, i32 1, i32 3
  %_index_value1175 = load i64, i64* %_index_pointer1174
  ret i64 %_index_value1175
}

define { i64, [0 x i64] }* @g() {
  %_1160 = alloca { i64, [0 x i64] }*
  %_raw_array1161 = call i64* @oat_alloc_array(i64 4)
  %_array1162 = bitcast i64* %_raw_array1161 to { i64, [0 x i64] }*
  %_1169 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1162, i32 0, i32 1, i32 3
  store i64 99, i64* %_1169
  %_1167 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1162, i32 0, i32 1, i32 2
  store i64 99, i64* %_1167
  %_1165 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1162, i32 0, i32 1, i32 1
  store i64 1, i64* %_1165
  %_1163 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1162, i32 0, i32 1, i32 0
  store i64 99, i64* %_1163
  store { i64, [0 x i64] }* %_array1162, { i64, [0 x i64] }** %_1160
  %_id_arr1171 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1160
  ret { i64, [0 x i64] }* %_id_arr1171
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1072 = alloca i64
  %_argv1073 = alloca { i64, [0 x i8*] }*
  %_1074 = alloca { i64, [0 x i64] }*
  %_1083 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1116 = alloca i64
  %_1117 = alloca { i64, [0 x i64] }*
  %_1119 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1072
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1073
  %_raw_array1075 = call i64* @oat_alloc_array(i64 3)
  %_array1076 = bitcast i64* %_raw_array1075 to { i64, [0 x i64] }*
  %_1081 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1076, i32 0, i32 1, i32 2
  store i64 99, i64* %_1081
  %_1079 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1076, i32 0, i32 1, i32 1
  store i64 1, i64* %_1079
  %_1077 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1076, i32 0, i32 1, i32 0
  store i64 99, i64* %_1077
  store { i64, [0 x i64] }* %_array1076, { i64, [0 x i64] }** %_1074
  %_raw_array1102 = call i64* @oat_alloc_array(i64 3)
  %_array1103 = bitcast i64* %_raw_array1102 to { i64, [0 x i64] }*
  %_1108 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1103, i32 0, i32 1, i32 2
  store i64 99, i64* %_1108
  %_1106 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1103, i32 0, i32 1, i32 1
  store i64 99, i64* %_1106
  %_1104 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1103, i32 0, i32 1, i32 0
  store i64 99, i64* %_1104
  %_raw_array1094 = call i64* @oat_alloc_array(i64 3)
  %_array1095 = bitcast i64* %_raw_array1094 to { i64, [0 x i64] }*
  %_1100 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1095, i32 0, i32 1, i32 2
  store i64 99, i64* %_1100
  %_1098 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1095, i32 0, i32 1, i32 1
  store i64 1, i64* %_1098
  %_1096 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1095, i32 0, i32 1, i32 0
  store i64 99, i64* %_1096
  %_raw_array1086 = call i64* @oat_alloc_array(i64 3)
  %_array1087 = bitcast i64* %_raw_array1086 to { i64, [0 x i64] }*
  %_1092 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1087, i32 0, i32 1, i32 2
  store i64 99, i64* %_1092
  %_1090 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1087, i32 0, i32 1, i32 1
  store i64 99, i64* %_1090
  %_1088 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1087, i32 0, i32 1, i32 0
  store i64 99, i64* %_1088
  %_raw_array1084 = call i64* @oat_alloc_array(i64 3)
  %_array1085 = bitcast i64* %_raw_array1084 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1114 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1085, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1103, { i64, [0 x i64] }** %_1114
  %_1112 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1085, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1095, { i64, [0 x i64] }** %_1112
  %_1110 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1085, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1087, { i64, [0 x i64] }** %_1110
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1085, { i64, [0 x { i64, [0 x i64] }*] }** %_1083
  store i64 1, i64* %_1116
  %_1118 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_1118, { i64, [0 x i64] }** %_1117
  %_raw_array1120 = call i64* @oat_alloc_array(i64 4)
  %_array1121 = bitcast i64* %_raw_array1120 to { i64, [0 x i64] }*
  %_1128 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1121, i32 0, i32 1, i32 3
  store i64 1, i64* %_1128
  %_1126 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1121, i32 0, i32 1, i32 2
  store i64 99, i64* %_1126
  %_1124 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1121, i32 0, i32 1, i32 1
  store i64 99, i64* %_1124
  %_1122 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1121, i32 0, i32 1, i32 0
  store i64 99, i64* %_1122
  store { i64, [0 x i64] }* %_array1121, { i64, [0 x i64] }** %_1119
  %_id_i1131 = load i64, i64* @i
  %_id_c1130 = load i64, i64* %_1116
  %_1132 = add i64 %_id_c1130, %_id_i1131
  store i64 %_1132, i64* %_1116
  %_id_arr11134 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1074
  %_index_pointer1135 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr11134, i32 0, i32 1, i32 1
  %_index_value1136 = load i64, i64* %_index_pointer1135
  %_id_c1133 = load i64, i64* %_1116
  %_1137 = add i64 %_id_c1133, %_index_value1136
  store i64 %_1137, i64* %_1116
  %_id_arr21139 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1083
  %_index_pointer1140 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr21139, i32 0, i32 1, i32 1
  %_index_value1141 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1140
  %_index_pointer1142 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1141, i32 0, i32 1, i32 1
  %_index_value1143 = load i64, i64* %_index_pointer1142
  %_id_c1138 = load i64, i64* %_1116
  %_1144 = add i64 %_id_c1138, %_index_value1143
  store i64 %_1144, i64* %_1116
  %_id_arr31146 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1119
  %_index_pointer1147 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr31146, i32 0, i32 1, i32 3
  %_index_value1148 = load i64, i64* %_index_pointer1147
  %_id_c1145 = load i64, i64* %_1116
  %_1149 = add i64 %_id_c1145, %_index_value1148
  store i64 %_1149, i64* %_1116
  %_id_arr31151 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1119
  %_1152 = call i64 @f({ i64, [0 x i64] }* %_id_arr31151)
  %_id_c1150 = load i64, i64* %_1116
  %_1153 = add i64 %_id_c1150, %_1152
  store i64 %_1153, i64* %_1116
  %_id_arr41155 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1117
  %_index_pointer1156 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr41155, i32 0, i32 1, i32 1
  %_index_value1157 = load i64, i64* %_index_pointer1156
  %_id_c1154 = load i64, i64* %_1116
  %_1158 = add i64 %_id_c1154, %_index_value1157
  store i64 %_1158, i64* %_1116
  %_id_c1159 = load i64, i64* %_1116
  ret i64 %_id_c1159
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
