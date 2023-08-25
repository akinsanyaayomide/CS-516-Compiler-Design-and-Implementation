; generated from: hw4programs/run15.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %a) {
  %_a1480 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a, { i64, [0 x { i64, [0 x i64] }*] }** %_a1480
  %_id_a1481 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1480
  %_index_pointer1482 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a1481, i32 0, i32 1, i32 1
  %_index_value1483 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1482
  %_index_pointer1484 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1483, i32 0, i32 1, i32 1
  %_index_value1485 = load i64, i64* %_index_pointer1484
  ret i64 %_index_value1485
}

define i64 @g(i64 %x) {
  %_x1432 = alloca i64
  %_1433 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %x, i64* %_x1432
  %_id_x1462 = load i64, i64* %_x1432
  %_id_x1461 = load i64, i64* %_x1432
  %_id_x1460 = load i64, i64* %_x1432
  %_raw_array1458 = call i64* @oat_alloc_array(i64 3)
  %_array1459 = bitcast i64* %_raw_array1458 to { i64, [0 x i64] }*
  %_1467 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1459, i32 0, i32 1, i32 2
  store i64 %_id_x1462, i64* %_1467
  %_1465 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1459, i32 0, i32 1, i32 1
  store i64 %_id_x1461, i64* %_1465
  %_1463 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1459, i32 0, i32 1, i32 0
  store i64 %_id_x1460, i64* %_1463
  %_id_x1451 = load i64, i64* %_x1432
  %_id_x1450 = load i64, i64* %_x1432
  %_id_x1449 = load i64, i64* %_x1432
  %_raw_array1447 = call i64* @oat_alloc_array(i64 3)
  %_array1448 = bitcast i64* %_raw_array1447 to { i64, [0 x i64] }*
  %_1456 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1448, i32 0, i32 1, i32 2
  store i64 %_id_x1451, i64* %_1456
  %_1454 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1448, i32 0, i32 1, i32 1
  store i64 %_id_x1450, i64* %_1454
  %_1452 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1448, i32 0, i32 1, i32 0
  store i64 %_id_x1449, i64* %_1452
  %_id_x1440 = load i64, i64* %_x1432
  %_id_x1439 = load i64, i64* %_x1432
  %_id_x1438 = load i64, i64* %_x1432
  %_raw_array1436 = call i64* @oat_alloc_array(i64 3)
  %_array1437 = bitcast i64* %_raw_array1436 to { i64, [0 x i64] }*
  %_1445 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1437, i32 0, i32 1, i32 2
  store i64 %_id_x1440, i64* %_1445
  %_1443 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1437, i32 0, i32 1, i32 1
  store i64 %_id_x1439, i64* %_1443
  %_1441 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1437, i32 0, i32 1, i32 0
  store i64 %_id_x1438, i64* %_1441
  %_raw_array1434 = call i64* @oat_alloc_array(i64 3)
  %_array1435 = bitcast i64* %_raw_array1434 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1473 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1435, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1459, { i64, [0 x i64] }** %_1473
  %_1471 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1435, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1448, { i64, [0 x i64] }** %_1471
  %_1469 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1435, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1437, { i64, [0 x i64] }** %_1469
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1435, { i64, [0 x { i64, [0 x i64] }*] }** %_1433
  %_id_arr1475 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1433
  %_index_pointer1476 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr1475, i32 0, i32 1, i32 1
  %_index_value1477 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1476
  %_index_pointer1478 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1477, i32 0, i32 1, i32 1
  %_index_value1479 = load i64, i64* %_index_pointer1478
  ret i64 %_index_value1479
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1260 = alloca i64
  %_argv1261 = alloca { i64, [0 x i8*] }*
  %_1262 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1295 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1374 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1260
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1261
  %_raw_array1281 = call i64* @oat_alloc_array(i64 3)
  %_array1282 = bitcast i64* %_raw_array1281 to { i64, [0 x i64] }*
  %_1287 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1282, i32 0, i32 1, i32 2
  store i64 2, i64* %_1287
  %_1285 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1282, i32 0, i32 1, i32 1
  store i64 1, i64* %_1285
  %_1283 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1282, i32 0, i32 1, i32 0
  store i64 0, i64* %_1283
  %_raw_array1273 = call i64* @oat_alloc_array(i64 3)
  %_array1274 = bitcast i64* %_raw_array1273 to { i64, [0 x i64] }*
  %_1279 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1274, i32 0, i32 1, i32 2
  store i64 2, i64* %_1279
  %_1277 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1274, i32 0, i32 1, i32 1
  store i64 1, i64* %_1277
  %_1275 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1274, i32 0, i32 1, i32 0
  store i64 0, i64* %_1275
  %_raw_array1265 = call i64* @oat_alloc_array(i64 3)
  %_array1266 = bitcast i64* %_raw_array1265 to { i64, [0 x i64] }*
  %_1271 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1266, i32 0, i32 1, i32 2
  store i64 2, i64* %_1271
  %_1269 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1266, i32 0, i32 1, i32 1
  store i64 1, i64* %_1269
  %_1267 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1266, i32 0, i32 1, i32 0
  store i64 0, i64* %_1267
  %_raw_array1263 = call i64* @oat_alloc_array(i64 3)
  %_array1264 = bitcast i64* %_raw_array1263 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1293 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1264, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1282, { i64, [0 x i64] }** %_1293
  %_1291 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1264, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1274, { i64, [0 x i64] }** %_1291
  %_1289 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1264, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1266, { i64, [0 x i64] }** %_1289
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1264, { i64, [0 x { i64, [0 x i64] }*] }** %_1262
  %_1355 = mul i64 3, 4
  %_1354 = mul i64 3, 3
  %_1353 = mul i64 3, 2
  %_1352 = mul i64 3, 1
  %_1351 = mul i64 3, 0
  %_raw_array1349 = call i64* @oat_alloc_array(i64 5)
  %_array1350 = bitcast i64* %_raw_array1349 to { i64, [0 x i64] }*
  %_1364 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1350, i32 0, i32 1, i32 4
  store i64 %_1355, i64* %_1364
  %_1362 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1350, i32 0, i32 1, i32 3
  store i64 %_1354, i64* %_1362
  %_1360 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1350, i32 0, i32 1, i32 2
  store i64 %_1353, i64* %_1360
  %_1358 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1350, i32 0, i32 1, i32 1
  store i64 %_1352, i64* %_1358
  %_1356 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1350, i32 0, i32 1, i32 0
  store i64 %_1351, i64* %_1356
  %_1338 = mul i64 2, 4
  %_1337 = mul i64 2, 3
  %_1336 = mul i64 2, 2
  %_1335 = mul i64 2, 1
  %_1334 = mul i64 2, 0
  %_raw_array1332 = call i64* @oat_alloc_array(i64 5)
  %_array1333 = bitcast i64* %_raw_array1332 to { i64, [0 x i64] }*
  %_1347 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1333, i32 0, i32 1, i32 4
  store i64 %_1338, i64* %_1347
  %_1345 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1333, i32 0, i32 1, i32 3
  store i64 %_1337, i64* %_1345
  %_1343 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1333, i32 0, i32 1, i32 2
  store i64 %_1336, i64* %_1343
  %_1341 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1333, i32 0, i32 1, i32 1
  store i64 %_1335, i64* %_1341
  %_1339 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1333, i32 0, i32 1, i32 0
  store i64 %_1334, i64* %_1339
  %_1321 = mul i64 1, 4
  %_1320 = mul i64 1, 3
  %_1319 = mul i64 1, 2
  %_1318 = mul i64 1, 1
  %_1317 = mul i64 1, 0
  %_raw_array1315 = call i64* @oat_alloc_array(i64 5)
  %_array1316 = bitcast i64* %_raw_array1315 to { i64, [0 x i64] }*
  %_1330 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1316, i32 0, i32 1, i32 4
  store i64 %_1321, i64* %_1330
  %_1328 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1316, i32 0, i32 1, i32 3
  store i64 %_1320, i64* %_1328
  %_1326 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1316, i32 0, i32 1, i32 2
  store i64 %_1319, i64* %_1326
  %_1324 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1316, i32 0, i32 1, i32 1
  store i64 %_1318, i64* %_1324
  %_1322 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1316, i32 0, i32 1, i32 0
  store i64 %_1317, i64* %_1322
  %_1304 = mul i64 0, 4
  %_1303 = mul i64 0, 3
  %_1302 = mul i64 0, 2
  %_1301 = mul i64 0, 1
  %_1300 = mul i64 0, 0
  %_raw_array1298 = call i64* @oat_alloc_array(i64 5)
  %_array1299 = bitcast i64* %_raw_array1298 to { i64, [0 x i64] }*
  %_1313 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1299, i32 0, i32 1, i32 4
  store i64 %_1304, i64* %_1313
  %_1311 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1299, i32 0, i32 1, i32 3
  store i64 %_1303, i64* %_1311
  %_1309 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1299, i32 0, i32 1, i32 2
  store i64 %_1302, i64* %_1309
  %_1307 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1299, i32 0, i32 1, i32 1
  store i64 %_1301, i64* %_1307
  %_1305 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1299, i32 0, i32 1, i32 0
  store i64 %_1300, i64* %_1305
  %_raw_array1296 = call i64* @oat_alloc_array(i64 4)
  %_array1297 = bitcast i64* %_raw_array1296 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1372 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1297, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array1350, { i64, [0 x i64] }** %_1372
  %_1370 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1297, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1333, { i64, [0 x i64] }** %_1370
  %_1368 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1297, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1316, { i64, [0 x i64] }** %_1368
  %_1366 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1297, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1299, { i64, [0 x i64] }** %_1366
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1297, { i64, [0 x { i64, [0 x i64] }*] }** %_1295
  %_1403 = mul i64 2, 2
  %_1402 = mul i64 2, 1
  %_1401 = mul i64 2, 0
  %_raw_array1399 = call i64* @oat_alloc_array(i64 3)
  %_array1400 = bitcast i64* %_raw_array1399 to { i64, [0 x i64] }*
  %_1408 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1400, i32 0, i32 1, i32 2
  store i64 %_1403, i64* %_1408
  %_1406 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1400, i32 0, i32 1, i32 1
  store i64 %_1402, i64* %_1406
  %_1404 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1400, i32 0, i32 1, i32 0
  store i64 %_1401, i64* %_1404
  %_1392 = mul i64 1, 2
  %_1391 = mul i64 1, 1
  %_1390 = mul i64 1, 0
  %_raw_array1388 = call i64* @oat_alloc_array(i64 3)
  %_array1389 = bitcast i64* %_raw_array1388 to { i64, [0 x i64] }*
  %_1397 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1389, i32 0, i32 1, i32 2
  store i64 %_1392, i64* %_1397
  %_1395 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1389, i32 0, i32 1, i32 1
  store i64 %_1391, i64* %_1395
  %_1393 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1389, i32 0, i32 1, i32 0
  store i64 %_1390, i64* %_1393
  %_1381 = mul i64 0, 2
  %_1380 = mul i64 0, 1
  %_1379 = mul i64 0, 0
  %_raw_array1377 = call i64* @oat_alloc_array(i64 3)
  %_array1378 = bitcast i64* %_raw_array1377 to { i64, [0 x i64] }*
  %_1386 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1378, i32 0, i32 1, i32 2
  store i64 %_1381, i64* %_1386
  %_1384 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1378, i32 0, i32 1, i32 1
  store i64 %_1380, i64* %_1384
  %_1382 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1378, i32 0, i32 1, i32 0
  store i64 %_1379, i64* %_1382
  %_raw_array1375 = call i64* @oat_alloc_array(i64 3)
  %_array1376 = bitcast i64* %_raw_array1375 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1414 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1376, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1400, { i64, [0 x i64] }** %_1414
  %_1412 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1376, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1389, { i64, [0 x i64] }** %_1412
  %_1410 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1376, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1378, { i64, [0 x i64] }** %_1410
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1376, { i64, [0 x { i64, [0 x i64] }*] }** %_1374
  %_1430 = call i64 @g(i64 4)
  %_id_arr01427 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1374
  %_1428 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_id_arr01427)
  %_id_a1421 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1262
  %_index_pointer1422 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a1421, i32 0, i32 1, i32 1
  %_index_value1423 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1422
  %_index_pointer1424 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1423, i32 0, i32 1, i32 2
  %_index_value1425 = load i64, i64* %_index_pointer1424
  %_id_arr1416 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1295
  %_index_pointer1417 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr1416, i32 0, i32 1, i32 3
  %_index_value1418 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1417
  %_index_pointer1419 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1418, i32 0, i32 1, i32 4
  %_index_value1420 = load i64, i64* %_index_pointer1419
  %_1426 = add i64 %_index_value1420, %_index_value1425
  %_1429 = add i64 %_1426, %_1428
  %_1431 = add i64 %_1429, %_1430
  ret i64 %_1431
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
