; generated from: hw4programs/run15.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %a) {
  %_a1206 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a, { i64, [0 x { i64, [0 x i64] }*] }** %_a1206
  %_id_a1207 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1206
  %_index_pointer1208 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a1207, i32 0, i32 1, i32 1
  %_index_value1209 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1208
  %_index_pointer1210 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1209, i32 0, i32 1, i32 1
  %_index_value1211 = load i64, i64* %_index_pointer1210
  ret i64 %_index_value1211
}

define i64 @g(i64 %x) {
  %_x1158 = alloca i64
  %_1159 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %x, i64* %_x1158
  %_id_x1188 = load i64, i64* %_x1158
  %_id_x1187 = load i64, i64* %_x1158
  %_id_x1186 = load i64, i64* %_x1158
  %_raw_array1184 = call i64* @oat_alloc_array(i64 3)
  %_array1185 = bitcast i64* %_raw_array1184 to { i64, [0 x i64] }*
  %_1193 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1185, i32 0, i32 1, i32 2
  store i64 %_id_x1188, i64* %_1193
  %_1191 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1185, i32 0, i32 1, i32 1
  store i64 %_id_x1187, i64* %_1191
  %_1189 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1185, i32 0, i32 1, i32 0
  store i64 %_id_x1186, i64* %_1189
  %_id_x1177 = load i64, i64* %_x1158
  %_id_x1176 = load i64, i64* %_x1158
  %_id_x1175 = load i64, i64* %_x1158
  %_raw_array1173 = call i64* @oat_alloc_array(i64 3)
  %_array1174 = bitcast i64* %_raw_array1173 to { i64, [0 x i64] }*
  %_1182 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1174, i32 0, i32 1, i32 2
  store i64 %_id_x1177, i64* %_1182
  %_1180 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1174, i32 0, i32 1, i32 1
  store i64 %_id_x1176, i64* %_1180
  %_1178 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1174, i32 0, i32 1, i32 0
  store i64 %_id_x1175, i64* %_1178
  %_id_x1166 = load i64, i64* %_x1158
  %_id_x1165 = load i64, i64* %_x1158
  %_id_x1164 = load i64, i64* %_x1158
  %_raw_array1162 = call i64* @oat_alloc_array(i64 3)
  %_array1163 = bitcast i64* %_raw_array1162 to { i64, [0 x i64] }*
  %_1171 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1163, i32 0, i32 1, i32 2
  store i64 %_id_x1166, i64* %_1171
  %_1169 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1163, i32 0, i32 1, i32 1
  store i64 %_id_x1165, i64* %_1169
  %_1167 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1163, i32 0, i32 1, i32 0
  store i64 %_id_x1164, i64* %_1167
  %_raw_array1160 = call i64* @oat_alloc_array(i64 3)
  %_array1161 = bitcast i64* %_raw_array1160 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1199 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1161, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1185, { i64, [0 x i64] }** %_1199
  %_1197 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1161, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1174, { i64, [0 x i64] }** %_1197
  %_1195 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1161, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1163, { i64, [0 x i64] }** %_1195
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1161, { i64, [0 x { i64, [0 x i64] }*] }** %_1159
  %_id_arr1201 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1159
  %_index_pointer1202 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr1201, i32 0, i32 1, i32 1
  %_index_value1203 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1202
  %_index_pointer1204 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1203, i32 0, i32 1, i32 1
  %_index_value1205 = load i64, i64* %_index_pointer1204
  ret i64 %_index_value1205
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc986 = alloca i64
  %_argv987 = alloca { i64, [0 x i8*] }*
  %_988 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1021 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1100 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc986
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv987
  %_raw_array1007 = call i64* @oat_alloc_array(i64 3)
  %_array1008 = bitcast i64* %_raw_array1007 to { i64, [0 x i64] }*
  %_1013 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1008, i32 0, i32 1, i32 2
  store i64 2, i64* %_1013
  %_1011 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1008, i32 0, i32 1, i32 1
  store i64 1, i64* %_1011
  %_1009 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1008, i32 0, i32 1, i32 0
  store i64 0, i64* %_1009
  %_raw_array999 = call i64* @oat_alloc_array(i64 3)
  %_array1000 = bitcast i64* %_raw_array999 to { i64, [0 x i64] }*
  %_1005 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1000, i32 0, i32 1, i32 2
  store i64 2, i64* %_1005
  %_1003 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1000, i32 0, i32 1, i32 1
  store i64 1, i64* %_1003
  %_1001 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1000, i32 0, i32 1, i32 0
  store i64 0, i64* %_1001
  %_raw_array991 = call i64* @oat_alloc_array(i64 3)
  %_array992 = bitcast i64* %_raw_array991 to { i64, [0 x i64] }*
  %_997 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array992, i32 0, i32 1, i32 2
  store i64 2, i64* %_997
  %_995 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array992, i32 0, i32 1, i32 1
  store i64 1, i64* %_995
  %_993 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array992, i32 0, i32 1, i32 0
  store i64 0, i64* %_993
  %_raw_array989 = call i64* @oat_alloc_array(i64 3)
  %_array990 = bitcast i64* %_raw_array989 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1019 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array990, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1008, { i64, [0 x i64] }** %_1019
  %_1017 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array990, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1000, { i64, [0 x i64] }** %_1017
  %_1015 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array990, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array992, { i64, [0 x i64] }** %_1015
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array990, { i64, [0 x { i64, [0 x i64] }*] }** %_988
  %_bop1081 = mul i64 3, 4
  %_bop1080 = mul i64 3, 3
  %_bop1079 = mul i64 3, 2
  %_bop1078 = mul i64 3, 1
  %_bop1077 = mul i64 3, 0
  %_raw_array1075 = call i64* @oat_alloc_array(i64 5)
  %_array1076 = bitcast i64* %_raw_array1075 to { i64, [0 x i64] }*
  %_1090 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1076, i32 0, i32 1, i32 4
  store i64 %_bop1081, i64* %_1090
  %_1088 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1076, i32 0, i32 1, i32 3
  store i64 %_bop1080, i64* %_1088
  %_1086 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1076, i32 0, i32 1, i32 2
  store i64 %_bop1079, i64* %_1086
  %_1084 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1076, i32 0, i32 1, i32 1
  store i64 %_bop1078, i64* %_1084
  %_1082 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1076, i32 0, i32 1, i32 0
  store i64 %_bop1077, i64* %_1082
  %_bop1064 = mul i64 2, 4
  %_bop1063 = mul i64 2, 3
  %_bop1062 = mul i64 2, 2
  %_bop1061 = mul i64 2, 1
  %_bop1060 = mul i64 2, 0
  %_raw_array1058 = call i64* @oat_alloc_array(i64 5)
  %_array1059 = bitcast i64* %_raw_array1058 to { i64, [0 x i64] }*
  %_1073 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1059, i32 0, i32 1, i32 4
  store i64 %_bop1064, i64* %_1073
  %_1071 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1059, i32 0, i32 1, i32 3
  store i64 %_bop1063, i64* %_1071
  %_1069 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1059, i32 0, i32 1, i32 2
  store i64 %_bop1062, i64* %_1069
  %_1067 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1059, i32 0, i32 1, i32 1
  store i64 %_bop1061, i64* %_1067
  %_1065 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1059, i32 0, i32 1, i32 0
  store i64 %_bop1060, i64* %_1065
  %_bop1047 = mul i64 1, 4
  %_bop1046 = mul i64 1, 3
  %_bop1045 = mul i64 1, 2
  %_bop1044 = mul i64 1, 1
  %_bop1043 = mul i64 1, 0
  %_raw_array1041 = call i64* @oat_alloc_array(i64 5)
  %_array1042 = bitcast i64* %_raw_array1041 to { i64, [0 x i64] }*
  %_1056 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1042, i32 0, i32 1, i32 4
  store i64 %_bop1047, i64* %_1056
  %_1054 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1042, i32 0, i32 1, i32 3
  store i64 %_bop1046, i64* %_1054
  %_1052 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1042, i32 0, i32 1, i32 2
  store i64 %_bop1045, i64* %_1052
  %_1050 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1042, i32 0, i32 1, i32 1
  store i64 %_bop1044, i64* %_1050
  %_1048 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1042, i32 0, i32 1, i32 0
  store i64 %_bop1043, i64* %_1048
  %_bop1030 = mul i64 0, 4
  %_bop1029 = mul i64 0, 3
  %_bop1028 = mul i64 0, 2
  %_bop1027 = mul i64 0, 1
  %_bop1026 = mul i64 0, 0
  %_raw_array1024 = call i64* @oat_alloc_array(i64 5)
  %_array1025 = bitcast i64* %_raw_array1024 to { i64, [0 x i64] }*
  %_1039 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1025, i32 0, i32 1, i32 4
  store i64 %_bop1030, i64* %_1039
  %_1037 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1025, i32 0, i32 1, i32 3
  store i64 %_bop1029, i64* %_1037
  %_1035 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1025, i32 0, i32 1, i32 2
  store i64 %_bop1028, i64* %_1035
  %_1033 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1025, i32 0, i32 1, i32 1
  store i64 %_bop1027, i64* %_1033
  %_1031 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1025, i32 0, i32 1, i32 0
  store i64 %_bop1026, i64* %_1031
  %_raw_array1022 = call i64* @oat_alloc_array(i64 4)
  %_array1023 = bitcast i64* %_raw_array1022 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1098 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1023, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array1076, { i64, [0 x i64] }** %_1098
  %_1096 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1023, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1059, { i64, [0 x i64] }** %_1096
  %_1094 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1023, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1042, { i64, [0 x i64] }** %_1094
  %_1092 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1023, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1025, { i64, [0 x i64] }** %_1092
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1023, { i64, [0 x { i64, [0 x i64] }*] }** %_1021
  %_bop1129 = mul i64 2, 2
  %_bop1128 = mul i64 2, 1
  %_bop1127 = mul i64 2, 0
  %_raw_array1125 = call i64* @oat_alloc_array(i64 3)
  %_array1126 = bitcast i64* %_raw_array1125 to { i64, [0 x i64] }*
  %_1134 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1126, i32 0, i32 1, i32 2
  store i64 %_bop1129, i64* %_1134
  %_1132 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1126, i32 0, i32 1, i32 1
  store i64 %_bop1128, i64* %_1132
  %_1130 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1126, i32 0, i32 1, i32 0
  store i64 %_bop1127, i64* %_1130
  %_bop1118 = mul i64 1, 2
  %_bop1117 = mul i64 1, 1
  %_bop1116 = mul i64 1, 0
  %_raw_array1114 = call i64* @oat_alloc_array(i64 3)
  %_array1115 = bitcast i64* %_raw_array1114 to { i64, [0 x i64] }*
  %_1123 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1115, i32 0, i32 1, i32 2
  store i64 %_bop1118, i64* %_1123
  %_1121 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1115, i32 0, i32 1, i32 1
  store i64 %_bop1117, i64* %_1121
  %_1119 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1115, i32 0, i32 1, i32 0
  store i64 %_bop1116, i64* %_1119
  %_bop1107 = mul i64 0, 2
  %_bop1106 = mul i64 0, 1
  %_bop1105 = mul i64 0, 0
  %_raw_array1103 = call i64* @oat_alloc_array(i64 3)
  %_array1104 = bitcast i64* %_raw_array1103 to { i64, [0 x i64] }*
  %_1112 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1104, i32 0, i32 1, i32 2
  store i64 %_bop1107, i64* %_1112
  %_1110 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1104, i32 0, i32 1, i32 1
  store i64 %_bop1106, i64* %_1110
  %_1108 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1104, i32 0, i32 1, i32 0
  store i64 %_bop1105, i64* %_1108
  %_raw_array1101 = call i64* @oat_alloc_array(i64 3)
  %_array1102 = bitcast i64* %_raw_array1101 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1140 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1102, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1126, { i64, [0 x i64] }** %_1140
  %_1138 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1102, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1115, { i64, [0 x i64] }** %_1138
  %_1136 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1102, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1104, { i64, [0 x i64] }** %_1136
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1102, { i64, [0 x { i64, [0 x i64] }*] }** %_1100
  %_id_arr1142 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1021
  %_index_pointer1143 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr1142, i32 0, i32 1, i32 3
  %_index_value1144 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1143
  %_index_pointer1145 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1144, i32 0, i32 1, i32 4
  %_index_value1146 = load i64, i64* %_index_pointer1145
  %_id_a1147 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_988
  %_index_pointer1148 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a1147, i32 0, i32 1, i32 1
  %_index_value1149 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1148
  %_index_pointer1150 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1149, i32 0, i32 1, i32 2
  %_index_value1151 = load i64, i64* %_index_pointer1150
  %_bop1152 = add i64 %_index_value1146, %_index_value1151
  %_id_arr01153 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1100
  %_1154 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_id_arr01153)
  %_bop1155 = add i64 %_bop1152, %_1154
  %_1156 = call i64 @g(i64 4)
  %_bop1157 = add i64 %_bop1155, %_1156
  ret i64 %_bop1157
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
