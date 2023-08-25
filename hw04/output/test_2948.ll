; generated from: hw4programs/run15.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %a) {
  %_a1481 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a, { i64, [0 x { i64, [0 x i64] }*] }** %_a1481
  %_id_a1482 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1481
  %_index_pointer1483 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a1482, i32 0, i32 1, i32 1
  %_index_value1484 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1483
  %_index_pointer1485 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1484, i32 0, i32 1, i32 1
  %_index_value1486 = load i64, i64* %_index_pointer1485
  ret i64 %_index_value1486
}

define i64 @g(i64 %x) {
  %_x1433 = alloca i64
  %_1434 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %x, i64* %_x1433
  %_id_x1463 = load i64, i64* %_x1433
  %_id_x1462 = load i64, i64* %_x1433
  %_id_x1461 = load i64, i64* %_x1433
  %_raw_array1459 = call i64* @oat_alloc_array(i64 3)
  %_array1460 = bitcast i64* %_raw_array1459 to { i64, [0 x i64] }*
  %_1468 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1460, i32 0, i32 1, i32 2
  store i64 %_id_x1463, i64* %_1468
  %_1466 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1460, i32 0, i32 1, i32 1
  store i64 %_id_x1462, i64* %_1466
  %_1464 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1460, i32 0, i32 1, i32 0
  store i64 %_id_x1461, i64* %_1464
  %_id_x1452 = load i64, i64* %_x1433
  %_id_x1451 = load i64, i64* %_x1433
  %_id_x1450 = load i64, i64* %_x1433
  %_raw_array1448 = call i64* @oat_alloc_array(i64 3)
  %_array1449 = bitcast i64* %_raw_array1448 to { i64, [0 x i64] }*
  %_1457 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1449, i32 0, i32 1, i32 2
  store i64 %_id_x1452, i64* %_1457
  %_1455 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1449, i32 0, i32 1, i32 1
  store i64 %_id_x1451, i64* %_1455
  %_1453 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1449, i32 0, i32 1, i32 0
  store i64 %_id_x1450, i64* %_1453
  %_id_x1441 = load i64, i64* %_x1433
  %_id_x1440 = load i64, i64* %_x1433
  %_id_x1439 = load i64, i64* %_x1433
  %_raw_array1437 = call i64* @oat_alloc_array(i64 3)
  %_array1438 = bitcast i64* %_raw_array1437 to { i64, [0 x i64] }*
  %_1446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1438, i32 0, i32 1, i32 2
  store i64 %_id_x1441, i64* %_1446
  %_1444 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1438, i32 0, i32 1, i32 1
  store i64 %_id_x1440, i64* %_1444
  %_1442 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1438, i32 0, i32 1, i32 0
  store i64 %_id_x1439, i64* %_1442
  %_raw_array1435 = call i64* @oat_alloc_array(i64 3)
  %_array1436 = bitcast i64* %_raw_array1435 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1474 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1436, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1460, { i64, [0 x i64] }** %_1474
  %_1472 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1436, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1449, { i64, [0 x i64] }** %_1472
  %_1470 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1436, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1438, { i64, [0 x i64] }** %_1470
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1436, { i64, [0 x { i64, [0 x i64] }*] }** %_1434
  %_id_arr1476 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1434
  %_index_pointer1477 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr1476, i32 0, i32 1, i32 1
  %_index_value1478 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1477
  %_index_pointer1479 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1478, i32 0, i32 1, i32 1
  %_index_value1480 = load i64, i64* %_index_pointer1479
  ret i64 %_index_value1480
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1261 = alloca i64
  %_argv1262 = alloca { i64, [0 x i8*] }*
  %_1263 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1296 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1375 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1261
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1262
  %_raw_array1282 = call i64* @oat_alloc_array(i64 3)
  %_array1283 = bitcast i64* %_raw_array1282 to { i64, [0 x i64] }*
  %_1288 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1283, i32 0, i32 1, i32 2
  store i64 2, i64* %_1288
  %_1286 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1283, i32 0, i32 1, i32 1
  store i64 1, i64* %_1286
  %_1284 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1283, i32 0, i32 1, i32 0
  store i64 0, i64* %_1284
  %_raw_array1274 = call i64* @oat_alloc_array(i64 3)
  %_array1275 = bitcast i64* %_raw_array1274 to { i64, [0 x i64] }*
  %_1280 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1275, i32 0, i32 1, i32 2
  store i64 2, i64* %_1280
  %_1278 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1275, i32 0, i32 1, i32 1
  store i64 1, i64* %_1278
  %_1276 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1275, i32 0, i32 1, i32 0
  store i64 0, i64* %_1276
  %_raw_array1266 = call i64* @oat_alloc_array(i64 3)
  %_array1267 = bitcast i64* %_raw_array1266 to { i64, [0 x i64] }*
  %_1272 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1267, i32 0, i32 1, i32 2
  store i64 2, i64* %_1272
  %_1270 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1267, i32 0, i32 1, i32 1
  store i64 1, i64* %_1270
  %_1268 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1267, i32 0, i32 1, i32 0
  store i64 0, i64* %_1268
  %_raw_array1264 = call i64* @oat_alloc_array(i64 3)
  %_array1265 = bitcast i64* %_raw_array1264 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1294 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1265, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1283, { i64, [0 x i64] }** %_1294
  %_1292 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1265, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1275, { i64, [0 x i64] }** %_1292
  %_1290 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1265, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1267, { i64, [0 x i64] }** %_1290
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1265, { i64, [0 x { i64, [0 x i64] }*] }** %_1263
  %_1356 = mul i64 3, 4
  %_1355 = mul i64 3, 3
  %_1354 = mul i64 3, 2
  %_1353 = mul i64 3, 1
  %_1352 = mul i64 3, 0
  %_raw_array1350 = call i64* @oat_alloc_array(i64 5)
  %_array1351 = bitcast i64* %_raw_array1350 to { i64, [0 x i64] }*
  %_1365 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1351, i32 0, i32 1, i32 4
  store i64 %_1356, i64* %_1365
  %_1363 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1351, i32 0, i32 1, i32 3
  store i64 %_1355, i64* %_1363
  %_1361 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1351, i32 0, i32 1, i32 2
  store i64 %_1354, i64* %_1361
  %_1359 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1351, i32 0, i32 1, i32 1
  store i64 %_1353, i64* %_1359
  %_1357 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1351, i32 0, i32 1, i32 0
  store i64 %_1352, i64* %_1357
  %_1339 = mul i64 2, 4
  %_1338 = mul i64 2, 3
  %_1337 = mul i64 2, 2
  %_1336 = mul i64 2, 1
  %_1335 = mul i64 2, 0
  %_raw_array1333 = call i64* @oat_alloc_array(i64 5)
  %_array1334 = bitcast i64* %_raw_array1333 to { i64, [0 x i64] }*
  %_1348 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1334, i32 0, i32 1, i32 4
  store i64 %_1339, i64* %_1348
  %_1346 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1334, i32 0, i32 1, i32 3
  store i64 %_1338, i64* %_1346
  %_1344 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1334, i32 0, i32 1, i32 2
  store i64 %_1337, i64* %_1344
  %_1342 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1334, i32 0, i32 1, i32 1
  store i64 %_1336, i64* %_1342
  %_1340 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1334, i32 0, i32 1, i32 0
  store i64 %_1335, i64* %_1340
  %_1322 = mul i64 1, 4
  %_1321 = mul i64 1, 3
  %_1320 = mul i64 1, 2
  %_1319 = mul i64 1, 1
  %_1318 = mul i64 1, 0
  %_raw_array1316 = call i64* @oat_alloc_array(i64 5)
  %_array1317 = bitcast i64* %_raw_array1316 to { i64, [0 x i64] }*
  %_1331 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1317, i32 0, i32 1, i32 4
  store i64 %_1322, i64* %_1331
  %_1329 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1317, i32 0, i32 1, i32 3
  store i64 %_1321, i64* %_1329
  %_1327 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1317, i32 0, i32 1, i32 2
  store i64 %_1320, i64* %_1327
  %_1325 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1317, i32 0, i32 1, i32 1
  store i64 %_1319, i64* %_1325
  %_1323 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1317, i32 0, i32 1, i32 0
  store i64 %_1318, i64* %_1323
  %_1305 = mul i64 0, 4
  %_1304 = mul i64 0, 3
  %_1303 = mul i64 0, 2
  %_1302 = mul i64 0, 1
  %_1301 = mul i64 0, 0
  %_raw_array1299 = call i64* @oat_alloc_array(i64 5)
  %_array1300 = bitcast i64* %_raw_array1299 to { i64, [0 x i64] }*
  %_1314 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1300, i32 0, i32 1, i32 4
  store i64 %_1305, i64* %_1314
  %_1312 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1300, i32 0, i32 1, i32 3
  store i64 %_1304, i64* %_1312
  %_1310 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1300, i32 0, i32 1, i32 2
  store i64 %_1303, i64* %_1310
  %_1308 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1300, i32 0, i32 1, i32 1
  store i64 %_1302, i64* %_1308
  %_1306 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1300, i32 0, i32 1, i32 0
  store i64 %_1301, i64* %_1306
  %_raw_array1297 = call i64* @oat_alloc_array(i64 4)
  %_array1298 = bitcast i64* %_raw_array1297 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1373 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1298, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array1351, { i64, [0 x i64] }** %_1373
  %_1371 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1298, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1334, { i64, [0 x i64] }** %_1371
  %_1369 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1298, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1317, { i64, [0 x i64] }** %_1369
  %_1367 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1298, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1300, { i64, [0 x i64] }** %_1367
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1298, { i64, [0 x { i64, [0 x i64] }*] }** %_1296
  %_1404 = mul i64 2, 2
  %_1403 = mul i64 2, 1
  %_1402 = mul i64 2, 0
  %_raw_array1400 = call i64* @oat_alloc_array(i64 3)
  %_array1401 = bitcast i64* %_raw_array1400 to { i64, [0 x i64] }*
  %_1409 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1401, i32 0, i32 1, i32 2
  store i64 %_1404, i64* %_1409
  %_1407 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1401, i32 0, i32 1, i32 1
  store i64 %_1403, i64* %_1407
  %_1405 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1401, i32 0, i32 1, i32 0
  store i64 %_1402, i64* %_1405
  %_1393 = mul i64 1, 2
  %_1392 = mul i64 1, 1
  %_1391 = mul i64 1, 0
  %_raw_array1389 = call i64* @oat_alloc_array(i64 3)
  %_array1390 = bitcast i64* %_raw_array1389 to { i64, [0 x i64] }*
  %_1398 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1390, i32 0, i32 1, i32 2
  store i64 %_1393, i64* %_1398
  %_1396 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1390, i32 0, i32 1, i32 1
  store i64 %_1392, i64* %_1396
  %_1394 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1390, i32 0, i32 1, i32 0
  store i64 %_1391, i64* %_1394
  %_1382 = mul i64 0, 2
  %_1381 = mul i64 0, 1
  %_1380 = mul i64 0, 0
  %_raw_array1378 = call i64* @oat_alloc_array(i64 3)
  %_array1379 = bitcast i64* %_raw_array1378 to { i64, [0 x i64] }*
  %_1387 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1379, i32 0, i32 1, i32 2
  store i64 %_1382, i64* %_1387
  %_1385 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1379, i32 0, i32 1, i32 1
  store i64 %_1381, i64* %_1385
  %_1383 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1379, i32 0, i32 1, i32 0
  store i64 %_1380, i64* %_1383
  %_raw_array1376 = call i64* @oat_alloc_array(i64 3)
  %_array1377 = bitcast i64* %_raw_array1376 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1415 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1377, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1401, { i64, [0 x i64] }** %_1415
  %_1413 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1377, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1390, { i64, [0 x i64] }** %_1413
  %_1411 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1377, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1379, { i64, [0 x i64] }** %_1411
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1377, { i64, [0 x { i64, [0 x i64] }*] }** %_1375
  %_1431 = call i64 @g(i64 4)
  %_id_arr01428 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1375
  %_1429 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_id_arr01428)
  %_id_a1422 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1263
  %_index_pointer1423 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a1422, i32 0, i32 1, i32 1
  %_index_value1424 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1423
  %_index_pointer1425 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1424, i32 0, i32 1, i32 2
  %_index_value1426 = load i64, i64* %_index_pointer1425
  %_id_arr1417 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1296
  %_index_pointer1418 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr1417, i32 0, i32 1, i32 3
  %_index_value1419 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1418
  %_index_pointer1420 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1419, i32 0, i32 1, i32 4
  %_index_value1421 = load i64, i64* %_index_pointer1420
  %_1427 = add i64 %_index_value1421, %_index_value1426
  %_1430 = add i64 %_1427, %_1429
  %_1432 = add i64 %_1430, %_1431
  ret i64 %_1432
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
