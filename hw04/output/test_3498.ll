; generated from: hw4programs/run11.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 1

define i64 @f({ i64, [0 x i64] }* %arr) {
  %_arr1212 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1212
  %_id_arr1213 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1212
  %_index_pointer1214 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1213, i32 0, i32 1, i32 3
  %_index_value1215 = load i64, i64* %_index_pointer1214
  ret i64 %_index_value1215
}

define { i64, [0 x i64] }* @g() {
  %_1200 = alloca { i64, [0 x i64] }*
  %_raw_array1201 = call i64* @oat_alloc_array(i64 4)
  %_array1202 = bitcast i64* %_raw_array1201 to { i64, [0 x i64] }*
  %_1209 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1202, i32 0, i32 1, i32 3
  store i64 99, i64* %_1209
  %_1207 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1202, i32 0, i32 1, i32 2
  store i64 99, i64* %_1207
  %_1205 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1202, i32 0, i32 1, i32 1
  store i64 1, i64* %_1205
  %_1203 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1202, i32 0, i32 1, i32 0
  store i64 99, i64* %_1203
  store { i64, [0 x i64] }* %_array1202, { i64, [0 x i64] }** %_1200
  %_id_arr1211 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1200
  ret { i64, [0 x i64] }* %_id_arr1211
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1112 = alloca i64
  %_argv1113 = alloca { i64, [0 x i8*] }*
  %_1114 = alloca { i64, [0 x i64] }*
  %_1123 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1156 = alloca i64
  %_1157 = alloca { i64, [0 x i64] }*
  %_1159 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1112
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1113
  %_raw_array1115 = call i64* @oat_alloc_array(i64 3)
  %_array1116 = bitcast i64* %_raw_array1115 to { i64, [0 x i64] }*
  %_1121 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1116, i32 0, i32 1, i32 2
  store i64 99, i64* %_1121
  %_1119 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1116, i32 0, i32 1, i32 1
  store i64 1, i64* %_1119
  %_1117 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1116, i32 0, i32 1, i32 0
  store i64 99, i64* %_1117
  store { i64, [0 x i64] }* %_array1116, { i64, [0 x i64] }** %_1114
  %_raw_array1142 = call i64* @oat_alloc_array(i64 3)
  %_array1143 = bitcast i64* %_raw_array1142 to { i64, [0 x i64] }*
  %_1148 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1143, i32 0, i32 1, i32 2
  store i64 99, i64* %_1148
  %_1146 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1143, i32 0, i32 1, i32 1
  store i64 99, i64* %_1146
  %_1144 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1143, i32 0, i32 1, i32 0
  store i64 99, i64* %_1144
  %_raw_array1134 = call i64* @oat_alloc_array(i64 3)
  %_array1135 = bitcast i64* %_raw_array1134 to { i64, [0 x i64] }*
  %_1140 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1135, i32 0, i32 1, i32 2
  store i64 99, i64* %_1140
  %_1138 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1135, i32 0, i32 1, i32 1
  store i64 1, i64* %_1138
  %_1136 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1135, i32 0, i32 1, i32 0
  store i64 99, i64* %_1136
  %_raw_array1126 = call i64* @oat_alloc_array(i64 3)
  %_array1127 = bitcast i64* %_raw_array1126 to { i64, [0 x i64] }*
  %_1132 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1127, i32 0, i32 1, i32 2
  store i64 99, i64* %_1132
  %_1130 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1127, i32 0, i32 1, i32 1
  store i64 99, i64* %_1130
  %_1128 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1127, i32 0, i32 1, i32 0
  store i64 99, i64* %_1128
  %_raw_array1124 = call i64* @oat_alloc_array(i64 3)
  %_array1125 = bitcast i64* %_raw_array1124 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1154 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1125, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1143, { i64, [0 x i64] }** %_1154
  %_1152 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1125, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1135, { i64, [0 x i64] }** %_1152
  %_1150 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1125, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1127, { i64, [0 x i64] }** %_1150
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1125, { i64, [0 x { i64, [0 x i64] }*] }** %_1123
  store i64 1, i64* %_1156
  %_1158 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_1158, { i64, [0 x i64] }** %_1157
  %_raw_array1160 = call i64* @oat_alloc_array(i64 4)
  %_array1161 = bitcast i64* %_raw_array1160 to { i64, [0 x i64] }*
  %_1168 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1161, i32 0, i32 1, i32 3
  store i64 1, i64* %_1168
  %_1166 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1161, i32 0, i32 1, i32 2
  store i64 99, i64* %_1166
  %_1164 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1161, i32 0, i32 1, i32 1
  store i64 99, i64* %_1164
  %_1162 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1161, i32 0, i32 1, i32 0
  store i64 99, i64* %_1162
  store { i64, [0 x i64] }* %_array1161, { i64, [0 x i64] }** %_1159
  %_id_c1170 = load i64, i64* %_1156
  %_id_i1171 = load i64, i64* @i
  %_bop1172 = add i64 %_id_c1170, %_id_i1171
  store i64 %_bop1172, i64* %_1156
  %_id_c1173 = load i64, i64* %_1156
  %_id_arr11174 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1114
  %_index_pointer1175 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr11174, i32 0, i32 1, i32 1
  %_index_value1176 = load i64, i64* %_index_pointer1175
  %_bop1177 = add i64 %_id_c1173, %_index_value1176
  store i64 %_bop1177, i64* %_1156
  %_id_c1178 = load i64, i64* %_1156
  %_id_arr21179 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1123
  %_index_pointer1180 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr21179, i32 0, i32 1, i32 1
  %_index_value1181 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1180
  %_index_pointer1182 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1181, i32 0, i32 1, i32 1
  %_index_value1183 = load i64, i64* %_index_pointer1182
  %_bop1184 = add i64 %_id_c1178, %_index_value1183
  store i64 %_bop1184, i64* %_1156
  %_id_c1185 = load i64, i64* %_1156
  %_id_arr31186 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1159
  %_index_pointer1187 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr31186, i32 0, i32 1, i32 3
  %_index_value1188 = load i64, i64* %_index_pointer1187
  %_bop1189 = add i64 %_id_c1185, %_index_value1188
  store i64 %_bop1189, i64* %_1156
  %_id_c1190 = load i64, i64* %_1156
  %_id_arr31191 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1159
  %_1192 = call i64 @f({ i64, [0 x i64] }* %_id_arr31191)
  %_bop1193 = add i64 %_id_c1190, %_1192
  store i64 %_bop1193, i64* %_1156
  %_id_c1194 = load i64, i64* %_1156
  %_id_arr41195 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1157
  %_index_pointer1196 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr41195, i32 0, i32 1, i32 1
  %_index_value1197 = load i64, i64* %_index_pointer1196
  %_bop1198 = add i64 %_id_c1194, %_index_value1197
  store i64 %_bop1198, i64* %_1156
  %_id_c1199 = load i64, i64* %_1156
  ret i64 %_id_c1199
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
