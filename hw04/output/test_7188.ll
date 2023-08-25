; generated from: hw4programs/run11.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 1

define i64 @f({ i64, [0 x i64] }* %arr) {
  %_arr1212 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1212
  %_id_arr1213 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1212
  %_index_pointer1215 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1213, i32 0, i32 1, i32 3
  %_index_value1214 = load i64, i64* %_index_pointer1215
  ret i64 %_index_value1214
}

define { i64, [0 x i64] }* @g() {
  %_arr1210 = alloca { i64, [0 x i64] }*
  %_raw_array1200 = call i64* @oat_alloc_array(i64 4)
  %_array1201 = bitcast i64* %_raw_array1200 to { i64, [0 x i64] }*
  %_1208 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1201, i32 0, i32 1, i32 3
  store i64 99, i64* %_1208
  %_1206 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1201, i32 0, i32 1, i32 2
  store i64 99, i64* %_1206
  %_1204 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1201, i32 0, i32 1, i32 1
  store i64 1, i64* %_1204
  %_1202 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1201, i32 0, i32 1, i32 0
  store i64 99, i64* %_1202
  store { i64, [0 x i64] }* %_array1201, { i64, [0 x i64] }** %_arr1210
  %_id_arr1211 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1210
  ret { i64, [0 x i64] }* %_id_arr1211
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1112 = alloca i64
  %_argv1113 = alloca { i64, [0 x i8*] }*
  %_arr11122 = alloca { i64, [0 x i64] }*
  %_arr21155 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_c1156 = alloca i64
  %_arr41158 = alloca { i64, [0 x i64] }*
  %_arr31169 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1112
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1113
  %_raw_array1114 = call i64* @oat_alloc_array(i64 3)
  %_array1115 = bitcast i64* %_raw_array1114 to { i64, [0 x i64] }*
  %_1120 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1115, i32 0, i32 1, i32 2
  store i64 99, i64* %_1120
  %_1118 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1115, i32 0, i32 1, i32 1
  store i64 1, i64* %_1118
  %_1116 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1115, i32 0, i32 1, i32 0
  store i64 99, i64* %_1116
  store { i64, [0 x i64] }* %_array1115, { i64, [0 x i64] }** %_arr11122
  %_raw_array1141 = call i64* @oat_alloc_array(i64 3)
  %_array1142 = bitcast i64* %_raw_array1141 to { i64, [0 x i64] }*
  %_1147 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1142, i32 0, i32 1, i32 2
  store i64 99, i64* %_1147
  %_1145 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1142, i32 0, i32 1, i32 1
  store i64 99, i64* %_1145
  %_1143 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1142, i32 0, i32 1, i32 0
  store i64 99, i64* %_1143
  %_raw_array1133 = call i64* @oat_alloc_array(i64 3)
  %_array1134 = bitcast i64* %_raw_array1133 to { i64, [0 x i64] }*
  %_1139 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1134, i32 0, i32 1, i32 2
  store i64 99, i64* %_1139
  %_1137 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1134, i32 0, i32 1, i32 1
  store i64 1, i64* %_1137
  %_1135 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1134, i32 0, i32 1, i32 0
  store i64 99, i64* %_1135
  %_raw_array1125 = call i64* @oat_alloc_array(i64 3)
  %_array1126 = bitcast i64* %_raw_array1125 to { i64, [0 x i64] }*
  %_1131 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1126, i32 0, i32 1, i32 2
  store i64 99, i64* %_1131
  %_1129 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1126, i32 0, i32 1, i32 1
  store i64 99, i64* %_1129
  %_1127 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1126, i32 0, i32 1, i32 0
  store i64 99, i64* %_1127
  %_raw_array1123 = call i64* @oat_alloc_array(i64 3)
  %_array1124 = bitcast i64* %_raw_array1123 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1153 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1124, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1142, { i64, [0 x i64] }** %_1153
  %_1151 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1124, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1134, { i64, [0 x i64] }** %_1151
  %_1149 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1124, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1126, { i64, [0 x i64] }** %_1149
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1124, { i64, [0 x { i64, [0 x i64] }*] }** %_arr21155
  store i64 1, i64* %_c1156
  %_1157 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_1157, { i64, [0 x i64] }** %_arr41158
  %_raw_array1159 = call i64* @oat_alloc_array(i64 4)
  %_array1160 = bitcast i64* %_raw_array1159 to { i64, [0 x i64] }*
  %_1167 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1160, i32 0, i32 1, i32 3
  store i64 1, i64* %_1167
  %_1165 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1160, i32 0, i32 1, i32 2
  store i64 99, i64* %_1165
  %_1163 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1160, i32 0, i32 1, i32 1
  store i64 99, i64* %_1163
  %_1161 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1160, i32 0, i32 1, i32 0
  store i64 99, i64* %_1161
  store { i64, [0 x i64] }* %_array1160, { i64, [0 x i64] }** %_arr31169
  %_id_c1170 = load i64, i64* %_c1156
  %_id_i1171 = load i64, i64* @i
  %_bop1172 = add i64 %_id_c1170, %_id_i1171
  store i64 %_bop1172, i64* %_c1156
  %_id_c1173 = load i64, i64* %_c1156
  %_id_arr11174 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr11122
  %_index_pointer1176 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr11174, i32 0, i32 1, i32 1
  %_index_value1175 = load i64, i64* %_index_pointer1176
  %_bop1177 = add i64 %_id_c1173, %_index_value1175
  store i64 %_bop1177, i64* %_c1156
  %_id_c1178 = load i64, i64* %_c1156
  %_id_arr21179 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr21155
  %_index_pointer1181 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr21179, i32 0, i32 1, i32 1
  %_index_value1180 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1181
  %_index_pointer1183 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1180, i32 0, i32 1, i32 1
  %_index_value1182 = load i64, i64* %_index_pointer1183
  %_bop1184 = add i64 %_id_c1178, %_index_value1182
  store i64 %_bop1184, i64* %_c1156
  %_id_c1185 = load i64, i64* %_c1156
  %_id_arr31186 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr31169
  %_index_pointer1188 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr31186, i32 0, i32 1, i32 3
  %_index_value1187 = load i64, i64* %_index_pointer1188
  %_bop1189 = add i64 %_id_c1185, %_index_value1187
  store i64 %_bop1189, i64* %_c1156
  %_id_c1190 = load i64, i64* %_c1156
  %_id_arr31191 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr31169
  %_1192 = call i64 @f({ i64, [0 x i64] }* %_id_arr31191)
  %_bop1193 = add i64 %_id_c1190, %_1192
  store i64 %_bop1193, i64* %_c1156
  %_id_c1194 = load i64, i64* %_c1156
  %_id_arr41195 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr41158
  %_index_pointer1197 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr41195, i32 0, i32 1, i32 1
  %_index_value1196 = load i64, i64* %_index_pointer1197
  %_bop1198 = add i64 %_id_c1194, %_index_value1196
  store i64 %_bop1198, i64* %_c1156
  %_id_c1199 = load i64, i64* %_c1156
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
