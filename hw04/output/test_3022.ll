; generated from: hw4programs/run14.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f({ i64, [0 x i64] }* %a) {
  %_a1257 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a1257
  %_id_a1258 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1257
  %_index_pointer1259 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a1258, i32 0, i32 1, i32 1
  %_index_value1260 = load i64, i64* %_index_pointer1259
  ret i64 %_index_value1260
}

define i64 @g(i64 %x) {
  %_x1238 = alloca i64
  %_1239 = alloca { i64, [0 x i64] }*
  %_1242 = alloca i64
  store i64 %x, i64* %_x1238
  %_raw_array1240 = call i64* @oat_alloc_array(i64 3)
  %_array1241 = bitcast i64* %_raw_array1240 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1241, { i64, [0 x i64] }** %_1239
  store i64 0, i64* %_1242
  br label %_cond1252
_cond1252:
  %_id_i1243 = load i64, i64* %_1242
  %_1244 = icmp slt i64 %_id_i1243, 3
  br i1 %_1244, label %_if1251, label %_merge1253
_if1251:
  %_id_x1245 = load i64, i64* %_x1238
  %_id_arr1246 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1239
  %_id_i1247 = load i64, i64* %_1242
  %_1248 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1246, i32 0, i32 1, i64 %_id_i1247
  store i64 %_id_x1245, i64* %_1248
  %_id_i1249 = load i64, i64* %_1242
  %_1250 = add i64 %_id_i1249, 1
  store i64 %_1250, i64* %_1242
  br label %_cond1252
_merge1253:
  %_id_arr1254 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1239
  %_index_pointer1255 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1254, i32 0, i32 1, i32 1
  %_index_value1256 = load i64, i64* %_index_pointer1255
  ret i64 %_index_value1256
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1176 = alloca i64
  %_argv1177 = alloca { i64, [0 x i8*] }*
  %_1178 = alloca { i64, [0 x i64] }*
  %_1181 = alloca i64
  %_1193 = alloca { i64, [0 x i64] }*
  %_1196 = alloca i64
  %_1210 = alloca { i64, [0 x i64] }*
  %_1213 = alloca i64
  store i64 %argc, i64* %_argc1176
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1177
  %_raw_array1179 = call i64* @oat_alloc_array(i64 3)
  %_array1180 = bitcast i64* %_raw_array1179 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1180, { i64, [0 x i64] }** %_1178
  store i64 0, i64* %_1181
  br label %_cond1191
_cond1191:
  %_id_i1182 = load i64, i64* %_1181
  %_1183 = icmp slt i64 %_id_i1182, 3
  br i1 %_1183, label %_if1190, label %_merge1192
_if1190:
  %_id_i1184 = load i64, i64* %_1181
  %_id_a1185 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1178
  %_id_i1186 = load i64, i64* %_1181
  %_1187 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a1185, i32 0, i32 1, i64 %_id_i1186
  store i64 %_id_i1184, i64* %_1187
  %_id_i1188 = load i64, i64* %_1181
  %_1189 = add i64 %_id_i1188, 1
  store i64 %_1189, i64* %_1181
  br label %_cond1191
_merge1192:
  %_raw_array1194 = call i64* @oat_alloc_array(i64 4)
  %_array1195 = bitcast i64* %_raw_array1194 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1195, { i64, [0 x i64] }** %_1193
  store i64 0, i64* %_1196
  br label %_cond1208
_cond1208:
  %_id_i1197 = load i64, i64* %_1196
  %_1198 = icmp slt i64 %_id_i1197, 4
  br i1 %_1198, label %_if1207, label %_merge1209
_if1207:
  %_id_i1200 = load i64, i64* %_1196
  %_id_i1199 = load i64, i64* %_1196
  %_1201 = mul i64 %_id_i1199, %_id_i1200
  %_id_arr1202 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1193
  %_id_i1203 = load i64, i64* %_1196
  %_1204 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1202, i32 0, i32 1, i64 %_id_i1203
  store i64 %_1201, i64* %_1204
  %_id_i1205 = load i64, i64* %_1196
  %_1206 = add i64 %_id_i1205, 1
  store i64 %_1206, i64* %_1196
  br label %_cond1208
_merge1209:
  %_raw_array1211 = call i64* @oat_alloc_array(i64 3)
  %_array1212 = bitcast i64* %_raw_array1211 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1212, { i64, [0 x i64] }** %_1210
  store i64 0, i64* %_1213
  br label %_cond1224
_cond1224:
  %_id_i1214 = load i64, i64* %_1213
  %_1215 = icmp slt i64 %_id_i1214, 3
  br i1 %_1215, label %_if1223, label %_merge1225
_if1223:
  %_id_i1216 = load i64, i64* %_1213
  %_1217 = mul i64 2, %_id_i1216
  %_id_arr01218 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1210
  %_id_i1219 = load i64, i64* %_1213
  %_1220 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr01218, i32 0, i32 1, i64 %_id_i1219
  store i64 %_1217, i64* %_1220
  %_id_i1221 = load i64, i64* %_1213
  %_1222 = add i64 %_id_i1221, 1
  store i64 %_1222, i64* %_1213
  br label %_cond1224
_merge1225:
  %_1236 = call i64 @g(i64 4)
  %_id_arr01233 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1210
  %_1234 = call i64 @f({ i64, [0 x i64] }* %_id_arr01233)
  %_id_a1229 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1178
  %_index_pointer1230 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a1229, i32 0, i32 1, i32 1
  %_index_value1231 = load i64, i64* %_index_pointer1230
  %_id_arr1226 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1193
  %_index_pointer1227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1226, i32 0, i32 1, i32 3
  %_index_value1228 = load i64, i64* %_index_pointer1227
  %_1232 = add i64 %_index_value1228, %_index_value1231
  %_1235 = add i64 %_1232, %_1234
  %_1237 = add i64 %_1235, %_1236
  ret i64 %_1237
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
