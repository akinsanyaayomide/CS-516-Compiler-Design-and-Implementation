; generated from: hw4programs/run14.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f({ i64, [0 x i64] }* %a) {
  %_a1297 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a1297
  %_id_a1298 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1297
  %_index_pointer1299 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a1298, i32 0, i32 1, i32 1
  %_index_value1300 = load i64, i64* %_index_pointer1299
  ret i64 %_index_value1300
}

define i64 @g(i64 %x) {
  %_x1278 = alloca i64
  %_1279 = alloca { i64, [0 x i64] }*
  %_1282 = alloca i64
  store i64 %x, i64* %_x1278
  %_raw_array1280 = call i64* @oat_alloc_array(i64 3)
  %_array1281 = bitcast i64* %_raw_array1280 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1281, { i64, [0 x i64] }** %_1279
  store i64 0, i64* %_1282
  br label %_start1291
_start1291:
  %_id_i1283 = load i64, i64* %_1282
  %_1284 = icmp slt i64 %_id_i1283, 3
  br i1 %_1284, label %_body1292, label %_else1293
_body1292:
  %_id_x1285 = load i64, i64* %_x1278
  %_id_arr1286 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1279
  %_id_i1287 = load i64, i64* %_1282
  %_1288 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1286, i32 0, i32 1, i64 %_id_i1287
  store i64 %_id_x1285, i64* %_1288
  %_id_i1289 = load i64, i64* %_1282
  %_1290 = add i64 %_id_i1289, 1
  store i64 %_1290, i64* %_1282
  br label %_start1291
_else1293:
  %_id_arr1294 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1279
  %_index_pointer1295 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1294, i32 0, i32 1, i32 1
  %_index_value1296 = load i64, i64* %_index_pointer1295
  ret i64 %_index_value1296
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1216 = alloca i64
  %_argv1217 = alloca { i64, [0 x i8*] }*
  %_1218 = alloca { i64, [0 x i64] }*
  %_1221 = alloca i64
  %_1233 = alloca { i64, [0 x i64] }*
  %_1236 = alloca i64
  %_1250 = alloca { i64, [0 x i64] }*
  %_1253 = alloca i64
  store i64 %argc, i64* %_argc1216
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1217
  %_raw_array1219 = call i64* @oat_alloc_array(i64 3)
  %_array1220 = bitcast i64* %_raw_array1219 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1220, { i64, [0 x i64] }** %_1218
  store i64 0, i64* %_1221
  br label %_start1230
_start1230:
  %_id_i1222 = load i64, i64* %_1221
  %_1223 = icmp slt i64 %_id_i1222, 3
  br i1 %_1223, label %_body1231, label %_else1232
_body1231:
  %_id_i1224 = load i64, i64* %_1221
  %_id_a1225 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1218
  %_id_i1226 = load i64, i64* %_1221
  %_1227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a1225, i32 0, i32 1, i64 %_id_i1226
  store i64 %_id_i1224, i64* %_1227
  %_id_i1228 = load i64, i64* %_1221
  %_1229 = add i64 %_id_i1228, 1
  store i64 %_1229, i64* %_1221
  br label %_start1230
_else1232:
  %_raw_array1234 = call i64* @oat_alloc_array(i64 4)
  %_array1235 = bitcast i64* %_raw_array1234 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1235, { i64, [0 x i64] }** %_1233
  store i64 0, i64* %_1236
  br label %_start1247
_start1247:
  %_id_i1237 = load i64, i64* %_1236
  %_1238 = icmp slt i64 %_id_i1237, 4
  br i1 %_1238, label %_body1248, label %_else1249
_body1248:
  %_id_i1240 = load i64, i64* %_1236
  %_id_i1239 = load i64, i64* %_1236
  %_1241 = mul i64 %_id_i1239, %_id_i1240
  %_id_arr1242 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1233
  %_id_i1243 = load i64, i64* %_1236
  %_1244 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1242, i32 0, i32 1, i64 %_id_i1243
  store i64 %_1241, i64* %_1244
  %_id_i1245 = load i64, i64* %_1236
  %_1246 = add i64 %_id_i1245, 1
  store i64 %_1246, i64* %_1236
  br label %_start1247
_else1249:
  %_raw_array1251 = call i64* @oat_alloc_array(i64 3)
  %_array1252 = bitcast i64* %_raw_array1251 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1252, { i64, [0 x i64] }** %_1250
  store i64 0, i64* %_1253
  br label %_start1263
_start1263:
  %_id_i1254 = load i64, i64* %_1253
  %_1255 = icmp slt i64 %_id_i1254, 3
  br i1 %_1255, label %_body1264, label %_else1265
_body1264:
  %_id_i1256 = load i64, i64* %_1253
  %_1257 = mul i64 2, %_id_i1256
  %_id_arr01258 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1250
  %_id_i1259 = load i64, i64* %_1253
  %_1260 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr01258, i32 0, i32 1, i64 %_id_i1259
  store i64 %_1257, i64* %_1260
  %_id_i1261 = load i64, i64* %_1253
  %_1262 = add i64 %_id_i1261, 1
  store i64 %_1262, i64* %_1253
  br label %_start1263
_else1265:
  %_1276 = call i64 @g(i64 4)
  %_id_arr01273 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1250
  %_1274 = call i64 @f({ i64, [0 x i64] }* %_id_arr01273)
  %_id_a1269 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1218
  %_index_pointer1270 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a1269, i32 0, i32 1, i32 1
  %_index_value1271 = load i64, i64* %_index_pointer1270
  %_id_arr1266 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1233
  %_index_pointer1267 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1266, i32 0, i32 1, i32 3
  %_index_value1268 = load i64, i64* %_index_pointer1267
  %_1272 = add i64 %_index_value1268, %_index_value1271
  %_1275 = add i64 %_1272, %_1274
  %_1277 = add i64 %_1275, %_1276
  ret i64 %_1277
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
