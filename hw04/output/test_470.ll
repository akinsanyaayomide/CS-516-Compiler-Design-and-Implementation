; generated from: hw4programs/run14.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f({ i64, [0 x i64] }* %a) {
  %_a1301 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a1301
  %_id_a1302 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1301
  %_index_pointer1303 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a1302, i32 0, i32 1, i32 1
  %_index_value1304 = load i64, i64* %_index_pointer1303
  ret i64 %_index_value1304
}

define i64 @g(i64 %x) {
  %_x1282 = alloca i64
  %_1283 = alloca { i64, [0 x i64] }*
  %_1286 = alloca i64
  store i64 %x, i64* %_x1282
  %_raw_array1284 = call i64* @oat_alloc_array(i64 3)
  %_array1285 = bitcast i64* %_raw_array1284 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1285, { i64, [0 x i64] }** %_1283
  store i64 0, i64* %_1286
  br label %_start1295
_start1295:
  %_id_i1287 = load i64, i64* %_1286
  %_1288 = icmp slt i64 %_id_i1287, 3
  br i1 %_1288, label %_body1296, label %_else1297
_body1296:
  %_id_x1289 = load i64, i64* %_x1282
  %_id_arr1290 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1283
  %_id_i1291 = load i64, i64* %_1286
  %_1292 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1290, i32 0, i32 1, i64 %_id_i1291
  store i64 %_id_x1289, i64* %_1292
  %_id_i1293 = load i64, i64* %_1286
  %_1294 = add i64 %_id_i1293, 1
  store i64 %_1294, i64* %_1286
  br label %_start1295
_else1297:
  %_id_arr1298 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1283
  %_index_pointer1299 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1298, i32 0, i32 1, i32 1
  %_index_value1300 = load i64, i64* %_index_pointer1299
  ret i64 %_index_value1300
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1220 = alloca i64
  %_argv1221 = alloca { i64, [0 x i8*] }*
  %_1222 = alloca { i64, [0 x i64] }*
  %_1225 = alloca i64
  %_1237 = alloca { i64, [0 x i64] }*
  %_1240 = alloca i64
  %_1254 = alloca { i64, [0 x i64] }*
  %_1257 = alloca i64
  store i64 %argc, i64* %_argc1220
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1221
  %_raw_array1223 = call i64* @oat_alloc_array(i64 3)
  %_array1224 = bitcast i64* %_raw_array1223 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1224, { i64, [0 x i64] }** %_1222
  store i64 0, i64* %_1225
  br label %_start1234
_start1234:
  %_id_i1226 = load i64, i64* %_1225
  %_1227 = icmp slt i64 %_id_i1226, 3
  br i1 %_1227, label %_body1235, label %_else1236
_body1235:
  %_id_i1228 = load i64, i64* %_1225
  %_id_a1229 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1222
  %_id_i1230 = load i64, i64* %_1225
  %_1231 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a1229, i32 0, i32 1, i64 %_id_i1230
  store i64 %_id_i1228, i64* %_1231
  %_id_i1232 = load i64, i64* %_1225
  %_1233 = add i64 %_id_i1232, 1
  store i64 %_1233, i64* %_1225
  br label %_start1234
_else1236:
  %_raw_array1238 = call i64* @oat_alloc_array(i64 4)
  %_array1239 = bitcast i64* %_raw_array1238 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1239, { i64, [0 x i64] }** %_1237
  store i64 0, i64* %_1240
  br label %_start1251
_start1251:
  %_id_i1241 = load i64, i64* %_1240
  %_1242 = icmp slt i64 %_id_i1241, 4
  br i1 %_1242, label %_body1252, label %_else1253
_body1252:
  %_id_i1244 = load i64, i64* %_1240
  %_id_i1243 = load i64, i64* %_1240
  %_1245 = mul i64 %_id_i1243, %_id_i1244
  %_id_arr1246 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1237
  %_id_i1247 = load i64, i64* %_1240
  %_1248 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1246, i32 0, i32 1, i64 %_id_i1247
  store i64 %_1245, i64* %_1248
  %_id_i1249 = load i64, i64* %_1240
  %_1250 = add i64 %_id_i1249, 1
  store i64 %_1250, i64* %_1240
  br label %_start1251
_else1253:
  %_raw_array1255 = call i64* @oat_alloc_array(i64 3)
  %_array1256 = bitcast i64* %_raw_array1255 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1256, { i64, [0 x i64] }** %_1254
  store i64 0, i64* %_1257
  br label %_start1267
_start1267:
  %_id_i1258 = load i64, i64* %_1257
  %_1259 = icmp slt i64 %_id_i1258, 3
  br i1 %_1259, label %_body1268, label %_else1269
_body1268:
  %_id_i1260 = load i64, i64* %_1257
  %_1261 = mul i64 2, %_id_i1260
  %_id_arr01262 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1254
  %_id_i1263 = load i64, i64* %_1257
  %_1264 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr01262, i32 0, i32 1, i64 %_id_i1263
  store i64 %_1261, i64* %_1264
  %_id_i1265 = load i64, i64* %_1257
  %_1266 = add i64 %_id_i1265, 1
  store i64 %_1266, i64* %_1257
  br label %_start1267
_else1269:
  %_1280 = call i64 @g(i64 4)
  %_id_arr01277 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1254
  %_1278 = call i64 @f({ i64, [0 x i64] }* %_id_arr01277)
  %_id_a1273 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1222
  %_index_pointer1274 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a1273, i32 0, i32 1, i32 1
  %_index_value1275 = load i64, i64* %_index_pointer1274
  %_id_arr1270 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1237
  %_index_pointer1271 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1270, i32 0, i32 1, i32 3
  %_index_value1272 = load i64, i64* %_index_pointer1271
  %_1276 = add i64 %_index_value1272, %_index_value1275
  %_1279 = add i64 %_1276, %_1278
  %_1281 = add i64 %_1279, %_1280
  ret i64 %_1281
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
