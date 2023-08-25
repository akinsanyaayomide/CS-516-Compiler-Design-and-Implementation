; generated from: hw4programs/run11.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 1

define i64 @f({ i64, [0 x i64] }* %arr) {
  %_arr1216 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1216
  %_id_arr1217 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1216
  %_index_pointer1218 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1217, i32 0, i32 1, i32 3
  %_index_value1219 = load i64, i64* %_index_pointer1218
  ret i64 %_index_value1219
}

define { i64, [0 x i64] }* @g() {
  %_1204 = alloca { i64, [0 x i64] }*
  %_raw_array1205 = call i64* @oat_alloc_array(i64 4)
  %_array1206 = bitcast i64* %_raw_array1205 to { i64, [0 x i64] }*
  %_1213 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1206, i32 0, i32 1, i32 3
  store i64 99, i64* %_1213
  %_1211 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1206, i32 0, i32 1, i32 2
  store i64 99, i64* %_1211
  %_1209 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1206, i32 0, i32 1, i32 1
  store i64 1, i64* %_1209
  %_1207 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1206, i32 0, i32 1, i32 0
  store i64 99, i64* %_1207
  store { i64, [0 x i64] }* %_array1206, { i64, [0 x i64] }** %_1204
  %_id_arr1215 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1204
  ret { i64, [0 x i64] }* %_id_arr1215
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1116 = alloca i64
  %_argv1117 = alloca { i64, [0 x i8*] }*
  %_1118 = alloca { i64, [0 x i64] }*
  %_1127 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1160 = alloca i64
  %_1161 = alloca { i64, [0 x i64] }*
  %_1163 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1116
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1117
  %_raw_array1119 = call i64* @oat_alloc_array(i64 3)
  %_array1120 = bitcast i64* %_raw_array1119 to { i64, [0 x i64] }*
  %_1125 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1120, i32 0, i32 1, i32 2
  store i64 99, i64* %_1125
  %_1123 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1120, i32 0, i32 1, i32 1
  store i64 1, i64* %_1123
  %_1121 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1120, i32 0, i32 1, i32 0
  store i64 99, i64* %_1121
  store { i64, [0 x i64] }* %_array1120, { i64, [0 x i64] }** %_1118
  %_raw_array1146 = call i64* @oat_alloc_array(i64 3)
  %_array1147 = bitcast i64* %_raw_array1146 to { i64, [0 x i64] }*
  %_1152 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1147, i32 0, i32 1, i32 2
  store i64 99, i64* %_1152
  %_1150 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1147, i32 0, i32 1, i32 1
  store i64 99, i64* %_1150
  %_1148 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1147, i32 0, i32 1, i32 0
  store i64 99, i64* %_1148
  %_raw_array1138 = call i64* @oat_alloc_array(i64 3)
  %_array1139 = bitcast i64* %_raw_array1138 to { i64, [0 x i64] }*
  %_1144 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1139, i32 0, i32 1, i32 2
  store i64 99, i64* %_1144
  %_1142 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1139, i32 0, i32 1, i32 1
  store i64 1, i64* %_1142
  %_1140 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1139, i32 0, i32 1, i32 0
  store i64 99, i64* %_1140
  %_raw_array1130 = call i64* @oat_alloc_array(i64 3)
  %_array1131 = bitcast i64* %_raw_array1130 to { i64, [0 x i64] }*
  %_1136 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1131, i32 0, i32 1, i32 2
  store i64 99, i64* %_1136
  %_1134 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1131, i32 0, i32 1, i32 1
  store i64 99, i64* %_1134
  %_1132 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1131, i32 0, i32 1, i32 0
  store i64 99, i64* %_1132
  %_raw_array1128 = call i64* @oat_alloc_array(i64 3)
  %_array1129 = bitcast i64* %_raw_array1128 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1158 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1129, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1147, { i64, [0 x i64] }** %_1158
  %_1156 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1129, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1139, { i64, [0 x i64] }** %_1156
  %_1154 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1129, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1131, { i64, [0 x i64] }** %_1154
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1129, { i64, [0 x { i64, [0 x i64] }*] }** %_1127
  store i64 1, i64* %_1160
  %_1162 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_1162, { i64, [0 x i64] }** %_1161
  %_raw_array1164 = call i64* @oat_alloc_array(i64 4)
  %_array1165 = bitcast i64* %_raw_array1164 to { i64, [0 x i64] }*
  %_1172 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1165, i32 0, i32 1, i32 3
  store i64 1, i64* %_1172
  %_1170 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1165, i32 0, i32 1, i32 2
  store i64 99, i64* %_1170
  %_1168 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1165, i32 0, i32 1, i32 1
  store i64 99, i64* %_1168
  %_1166 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1165, i32 0, i32 1, i32 0
  store i64 99, i64* %_1166
  store { i64, [0 x i64] }* %_array1165, { i64, [0 x i64] }** %_1163
  %_id_i1175 = load i64, i64* @i
  %_id_c1174 = load i64, i64* %_1160
  %_1176 = add i64 %_id_c1174, %_id_i1175
  store i64 %_1176, i64* %_1160
  %_id_arr11178 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1118
  %_index_pointer1179 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr11178, i32 0, i32 1, i32 1
  %_index_value1180 = load i64, i64* %_index_pointer1179
  %_id_c1177 = load i64, i64* %_1160
  %_1181 = add i64 %_id_c1177, %_index_value1180
  store i64 %_1181, i64* %_1160
  %_id_arr21183 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1127
  %_index_pointer1184 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr21183, i32 0, i32 1, i32 1
  %_index_value1185 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1184
  %_index_pointer1186 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1185, i32 0, i32 1, i32 1
  %_index_value1187 = load i64, i64* %_index_pointer1186
  %_id_c1182 = load i64, i64* %_1160
  %_1188 = add i64 %_id_c1182, %_index_value1187
  store i64 %_1188, i64* %_1160
  %_id_arr31190 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1163
  %_index_pointer1191 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr31190, i32 0, i32 1, i32 3
  %_index_value1192 = load i64, i64* %_index_pointer1191
  %_id_c1189 = load i64, i64* %_1160
  %_1193 = add i64 %_id_c1189, %_index_value1192
  store i64 %_1193, i64* %_1160
  %_id_arr31195 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1163
  %_1196 = call i64 @f({ i64, [0 x i64] }* %_id_arr31195)
  %_id_c1194 = load i64, i64* %_1160
  %_1197 = add i64 %_id_c1194, %_1196
  store i64 %_1197, i64* %_1160
  %_id_arr41199 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1161
  %_index_pointer1200 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr41199, i32 0, i32 1, i32 1
  %_index_value1201 = load i64, i64* %_index_pointer1200
  %_id_c1198 = load i64, i64* %_1160
  %_1202 = add i64 %_id_c1198, %_index_value1201
  store i64 %_1202, i64* %_1160
  %_id_c1203 = load i64, i64* %_1160
  ret i64 %_id_c1203
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
