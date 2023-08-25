; generated from: hw4programs/run11.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 1

define i64 @f({ i64, [0 x i64] }* %arr) {
  %_arr1363 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1363
  %_id_arr1364 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1363
  %_index_pointer1366 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1364, i32 0, i32 1, i32 3
  %_index_value1365 = load i64, i64* %_index_pointer1366
  ret i64 %_index_value1365
}

define { i64, [0 x i64] }* @g() {
  %_1347 = alloca { i64, [0 x i64] }*
  %_raw_array1348 = call i64* @oat_alloc_array(i64 4)
  %_array1349 = bitcast i64* %_raw_array1348 to { i64, [0 x i64] }*
  %_1361 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1349, i32 0, i32 1, i32 3
  store i64 99, i64* %_1359
  %_1358 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1349, i32 0, i32 1, i32 2
  store i64 99, i64* %_1356
  %_1355 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1349, i32 0, i32 1, i32 1
  store i64 1, i64* %_1353
  %_1352 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1349, i32 0, i32 1, i32 0
  store i64 99, i64* %_1350
  store { i64, [0 x i64] }* %_array1349, { i64, [0 x i64] }** %_1347
  %_id_arr1362 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1347
  ret { i64, [0 x i64] }* %_id_arr1362
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1240 = alloca i64
  %_argv1241 = alloca { i64, [0 x i8*] }*
  %_1242 = alloca { i64, [0 x i64] }*
  %_1254 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1299 = alloca i64
  %_1300 = alloca { i64, [0 x i64] }*
  %_1302 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1240
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1241
  %_raw_array1243 = call i64* @oat_alloc_array(i64 3)
  %_array1244 = bitcast i64* %_raw_array1243 to { i64, [0 x i64] }*
  %_1253 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1244, i32 0, i32 1, i32 2
  store i64 99, i64* %_1251
  %_1250 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1244, i32 0, i32 1, i32 1
  store i64 1, i64* %_1248
  %_1247 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1244, i32 0, i32 1, i32 0
  store i64 99, i64* %_1245
  store { i64, [0 x i64] }* %_array1244, { i64, [0 x i64] }** %_1242
  %_raw_array1279 = call i64* @oat_alloc_array(i64 3)
  %_array1280 = bitcast i64* %_raw_array1279 to { i64, [0 x i64] }*
  %_1289 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1280, i32 0, i32 1, i32 2
  store i64 99, i64* %_1287
  %_1286 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1280, i32 0, i32 1, i32 1
  store i64 99, i64* %_1284
  %_1283 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1280, i32 0, i32 1, i32 0
  store i64 99, i64* %_1281
  %_raw_array1268 = call i64* @oat_alloc_array(i64 3)
  %_array1269 = bitcast i64* %_raw_array1268 to { i64, [0 x i64] }*
  %_1278 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1269, i32 0, i32 1, i32 2
  store i64 99, i64* %_1276
  %_1275 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1269, i32 0, i32 1, i32 1
  store i64 1, i64* %_1273
  %_1272 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1269, i32 0, i32 1, i32 0
  store i64 99, i64* %_1270
  %_raw_array1257 = call i64* @oat_alloc_array(i64 3)
  %_array1258 = bitcast i64* %_raw_array1257 to { i64, [0 x i64] }*
  %_1267 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1258, i32 0, i32 1, i32 2
  store i64 99, i64* %_1265
  %_1264 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1258, i32 0, i32 1, i32 1
  store i64 99, i64* %_1262
  %_1261 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1258, i32 0, i32 1, i32 0
  store i64 99, i64* %_1259
  %_raw_array1255 = call i64* @oat_alloc_array(i64 3)
  %_array1256 = bitcast i64* %_raw_array1255 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1298 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1256, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1280, { i64, [0 x i64] }** %_1296
  %_1295 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1256, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1269, { i64, [0 x i64] }** %_1293
  %_1292 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1256, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1258, { i64, [0 x i64] }** %_1290
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1256, { i64, [0 x { i64, [0 x i64] }*] }** %_1254
  store i64 1, i64* %_1299
  %_1301 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_1301, { i64, [0 x i64] }** %_1300
  %_raw_array1303 = call i64* @oat_alloc_array(i64 4)
  %_array1304 = bitcast i64* %_raw_array1303 to { i64, [0 x i64] }*
  %_1316 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1304, i32 0, i32 1, i32 3
  store i64 1, i64* %_1314
  %_1313 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1304, i32 0, i32 1, i32 2
  store i64 99, i64* %_1311
  %_1310 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1304, i32 0, i32 1, i32 1
  store i64 99, i64* %_1308
  %_1307 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1304, i32 0, i32 1, i32 0
  store i64 99, i64* %_1305
  store { i64, [0 x i64] }* %_array1304, { i64, [0 x i64] }** %_1302
  %_id_c1317 = load i64, i64* %_1299
  %_id_i1318 = load i64, i64* @i
  %_bop1319 = add i64 %_id_c1317, %_id_i1318
  store i64 %_bop1319, i64* %_1299
  %_id_c1320 = load i64, i64* %_1299
  %_id_arr11321 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1242
  %_index_pointer1323 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr11321, i32 0, i32 1, i32 1
  %_index_value1322 = load i64, i64* %_index_pointer1323
  %_bop1324 = add i64 %_id_c1320, %_index_value1322
  store i64 %_bop1324, i64* %_1299
  %_id_c1325 = load i64, i64* %_1299
  %_id_arr21326 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1254
  %_index_pointer1328 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr21326, i32 0, i32 1, i32 1
  %_index_value1327 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1328
  %_index_pointer1330 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1327, i32 0, i32 1, i32 1
  %_index_value1329 = load i64, i64* %_index_pointer1330
  %_bop1331 = add i64 %_id_c1325, %_index_value1329
  store i64 %_bop1331, i64* %_1299
  %_id_c1332 = load i64, i64* %_1299
  %_id_arr31333 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1302
  %_index_pointer1335 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr31333, i32 0, i32 1, i32 3
  %_index_value1334 = load i64, i64* %_index_pointer1335
  %_bop1336 = add i64 %_id_c1332, %_index_value1334
  store i64 %_bop1336, i64* %_1299
  %_id_c1337 = load i64, i64* %_1299
  %_id_arr31338 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1302
  %_1339 = call i64 @f({ i64, [0 x i64] }* %_id_arr31338)
  %_bop1340 = add i64 %_id_c1337, %_1339
  store i64 %_bop1340, i64* %_1299
  %_id_c1341 = load i64, i64* %_1299
  %_id_arr41342 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1300
  %_index_pointer1344 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr41342, i32 0, i32 1, i32 1
  %_index_value1343 = load i64, i64* %_index_pointer1344
  %_bop1345 = add i64 %_id_c1341, %_index_value1343
  store i64 %_bop1345, i64* %_1299
  %_id_c1346 = load i64, i64* %_1299
  ret i64 %_id_c1346
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
