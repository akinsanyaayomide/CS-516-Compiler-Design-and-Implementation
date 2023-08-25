; generated from: hw4programs/run14.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f({ i64, [0 x i64] }* %a) {
  %_a1256 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a1256
  %_id_a1257 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1256
  %_index_pointer1258 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a1257, i32 0, i32 1, i32 1
  %_index_value1259 = load i64, i64* %_index_pointer1258
  ret i64 %_index_value1259
}

define i64 @g(i64 %x) {
  %_x1237 = alloca i64
  %_1238 = alloca { i64, [0 x i64] }*
  %_1241 = alloca i64
  store i64 %x, i64* %_x1237
  %_raw_array1239 = call i64* @oat_alloc_array(i64 3)
  %_array1240 = bitcast i64* %_raw_array1239 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1240, { i64, [0 x i64] }** %_1238
  store i64 0, i64* %_1241
  br label %_start1250
_start1250:
  %_id_i1242 = load i64, i64* %_1241
  %_1243 = icmp slt i64 %_id_i1242, 3
  br i1 %_1243, label %_body1251, label %_else1252
_body1251:
  %_id_x1244 = load i64, i64* %_x1237
  %_id_arr1245 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1238
  %_id_i1246 = load i64, i64* %_1241
  %_1247 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1245, i32 0, i32 1, i64 %_id_i1246
  store i64 %_id_x1244, i64* %_1247
  %_id_i1248 = load i64, i64* %_1241
  %_1249 = add i64 %_id_i1248, 1
  store i64 %_1249, i64* %_1241
  br label %_start1250
_else1252:
  %_id_arr1253 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1238
  %_index_pointer1254 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1253, i32 0, i32 1, i32 1
  %_index_value1255 = load i64, i64* %_index_pointer1254
  ret i64 %_index_value1255
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1175 = alloca i64
  %_argv1176 = alloca { i64, [0 x i8*] }*
  %_1177 = alloca { i64, [0 x i64] }*
  %_1180 = alloca i64
  %_1192 = alloca { i64, [0 x i64] }*
  %_1195 = alloca i64
  %_1209 = alloca { i64, [0 x i64] }*
  %_1212 = alloca i64
  store i64 %argc, i64* %_argc1175
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1176
  %_raw_array1178 = call i64* @oat_alloc_array(i64 3)
  %_array1179 = bitcast i64* %_raw_array1178 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1179, { i64, [0 x i64] }** %_1177
  store i64 0, i64* %_1180
  br label %_start1189
_start1189:
  %_id_i1181 = load i64, i64* %_1180
  %_1182 = icmp slt i64 %_id_i1181, 3
  br i1 %_1182, label %_body1190, label %_else1191
_body1190:
  %_id_i1183 = load i64, i64* %_1180
  %_id_a1184 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1177
  %_id_i1185 = load i64, i64* %_1180
  %_1186 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a1184, i32 0, i32 1, i64 %_id_i1185
  store i64 %_id_i1183, i64* %_1186
  %_id_i1187 = load i64, i64* %_1180
  %_1188 = add i64 %_id_i1187, 1
  store i64 %_1188, i64* %_1180
  br label %_start1189
_else1191:
  %_raw_array1193 = call i64* @oat_alloc_array(i64 4)
  %_array1194 = bitcast i64* %_raw_array1193 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1194, { i64, [0 x i64] }** %_1192
  store i64 0, i64* %_1195
  br label %_start1206
_start1206:
  %_id_i1196 = load i64, i64* %_1195
  %_1197 = icmp slt i64 %_id_i1196, 4
  br i1 %_1197, label %_body1207, label %_else1208
_body1207:
  %_id_i1199 = load i64, i64* %_1195
  %_id_i1198 = load i64, i64* %_1195
  %_1200 = mul i64 %_id_i1198, %_id_i1199
  %_id_arr1201 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1192
  %_id_i1202 = load i64, i64* %_1195
  %_1203 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1201, i32 0, i32 1, i64 %_id_i1202
  store i64 %_1200, i64* %_1203
  %_id_i1204 = load i64, i64* %_1195
  %_1205 = add i64 %_id_i1204, 1
  store i64 %_1205, i64* %_1195
  br label %_start1206
_else1208:
  %_raw_array1210 = call i64* @oat_alloc_array(i64 3)
  %_array1211 = bitcast i64* %_raw_array1210 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1211, { i64, [0 x i64] }** %_1209
  store i64 0, i64* %_1212
  br label %_start1222
_start1222:
  %_id_i1213 = load i64, i64* %_1212
  %_1214 = icmp slt i64 %_id_i1213, 3
  br i1 %_1214, label %_body1223, label %_else1224
_body1223:
  %_id_i1215 = load i64, i64* %_1212
  %_1216 = mul i64 2, %_id_i1215
  %_id_arr01217 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1209
  %_id_i1218 = load i64, i64* %_1212
  %_1219 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr01217, i32 0, i32 1, i64 %_id_i1218
  store i64 %_1216, i64* %_1219
  %_id_i1220 = load i64, i64* %_1212
  %_1221 = add i64 %_id_i1220, 1
  store i64 %_1221, i64* %_1212
  br label %_start1222
_else1224:
  %_1235 = call i64 @g(i64 4)
  %_id_arr01232 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1209
  %_1233 = call i64 @f({ i64, [0 x i64] }* %_id_arr01232)
  %_id_a1228 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1177
  %_index_pointer1229 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a1228, i32 0, i32 1, i32 1
  %_index_value1230 = load i64, i64* %_index_pointer1229
  %_id_arr1225 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1192
  %_index_pointer1226 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1225, i32 0, i32 1, i32 3
  %_index_value1227 = load i64, i64* %_index_pointer1226
  %_1231 = add i64 %_index_value1227, %_index_value1230
  %_1234 = add i64 %_1231, %_1233
  %_1236 = add i64 %_1234, %_1235
  ret i64 %_1236
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
