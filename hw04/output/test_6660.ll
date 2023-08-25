; generated from: hw4programs/run15.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %a) {
  %_a1521 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a, { i64, [0 x { i64, [0 x i64] }*] }** %_a1521
  %_id_a1522 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1521
  %_index_pointer1524 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a1522, i32 0, i32 1, i32 1
  %_index_value1523 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1524
  %_index_pointer1526 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1523, i32 0, i32 1, i32 1
  %_index_value1525 = load i64, i64* %_index_pointer1526
  ret i64 %_index_value1525
}

define i64 @g(i64 %x) {
  %_x1473 = alloca i64
  %_arr1515 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %x, i64* %_x1473
  %_id_x1502 = load i64, i64* %_x1473
  %_id_x1501 = load i64, i64* %_x1473
  %_id_x1500 = load i64, i64* %_x1473
  %_raw_array1498 = call i64* @oat_alloc_array(i64 3)
  %_array1499 = bitcast i64* %_raw_array1498 to { i64, [0 x i64] }*
  %_1507 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1499, i32 0, i32 1, i32 2
  store i64 %_id_x1502, i64* %_1507
  %_1505 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1499, i32 0, i32 1, i32 1
  store i64 %_id_x1501, i64* %_1505
  %_1503 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1499, i32 0, i32 1, i32 0
  store i64 %_id_x1500, i64* %_1503
  %_id_x1491 = load i64, i64* %_x1473
  %_id_x1490 = load i64, i64* %_x1473
  %_id_x1489 = load i64, i64* %_x1473
  %_raw_array1487 = call i64* @oat_alloc_array(i64 3)
  %_array1488 = bitcast i64* %_raw_array1487 to { i64, [0 x i64] }*
  %_1496 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1488, i32 0, i32 1, i32 2
  store i64 %_id_x1491, i64* %_1496
  %_1494 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1488, i32 0, i32 1, i32 1
  store i64 %_id_x1490, i64* %_1494
  %_1492 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1488, i32 0, i32 1, i32 0
  store i64 %_id_x1489, i64* %_1492
  %_id_x1480 = load i64, i64* %_x1473
  %_id_x1479 = load i64, i64* %_x1473
  %_id_x1478 = load i64, i64* %_x1473
  %_raw_array1476 = call i64* @oat_alloc_array(i64 3)
  %_array1477 = bitcast i64* %_raw_array1476 to { i64, [0 x i64] }*
  %_1485 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1477, i32 0, i32 1, i32 2
  store i64 %_id_x1480, i64* %_1485
  %_1483 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1477, i32 0, i32 1, i32 1
  store i64 %_id_x1479, i64* %_1483
  %_1481 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1477, i32 0, i32 1, i32 0
  store i64 %_id_x1478, i64* %_1481
  %_raw_array1474 = call i64* @oat_alloc_array(i64 3)
  %_array1475 = bitcast i64* %_raw_array1474 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1513 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1475, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1499, { i64, [0 x i64] }** %_1513
  %_1511 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1475, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1488, { i64, [0 x i64] }** %_1511
  %_1509 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1475, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1477, { i64, [0 x i64] }** %_1509
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1475, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1515
  %_id_arr1516 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1515
  %_index_pointer1518 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr1516, i32 0, i32 1, i32 1
  %_index_value1517 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1518
  %_index_pointer1520 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1517, i32 0, i32 1, i32 1
  %_index_value1519 = load i64, i64* %_index_pointer1520
  ret i64 %_index_value1519
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1301 = alloca i64
  %_argv1302 = alloca { i64, [0 x i8*] }*
  %_a1335 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1414 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr01456 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1301
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1302
  %_raw_array1321 = call i64* @oat_alloc_array(i64 3)
  %_array1322 = bitcast i64* %_raw_array1321 to { i64, [0 x i64] }*
  %_1327 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1322, i32 0, i32 1, i32 2
  store i64 2, i64* %_1327
  %_1325 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1322, i32 0, i32 1, i32 1
  store i64 1, i64* %_1325
  %_1323 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1322, i32 0, i32 1, i32 0
  store i64 0, i64* %_1323
  %_raw_array1313 = call i64* @oat_alloc_array(i64 3)
  %_array1314 = bitcast i64* %_raw_array1313 to { i64, [0 x i64] }*
  %_1319 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1314, i32 0, i32 1, i32 2
  store i64 2, i64* %_1319
  %_1317 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1314, i32 0, i32 1, i32 1
  store i64 1, i64* %_1317
  %_1315 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1314, i32 0, i32 1, i32 0
  store i64 0, i64* %_1315
  %_raw_array1305 = call i64* @oat_alloc_array(i64 3)
  %_array1306 = bitcast i64* %_raw_array1305 to { i64, [0 x i64] }*
  %_1311 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1306, i32 0, i32 1, i32 2
  store i64 2, i64* %_1311
  %_1309 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1306, i32 0, i32 1, i32 1
  store i64 1, i64* %_1309
  %_1307 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1306, i32 0, i32 1, i32 0
  store i64 0, i64* %_1307
  %_raw_array1303 = call i64* @oat_alloc_array(i64 3)
  %_array1304 = bitcast i64* %_raw_array1303 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1333 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1304, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1322, { i64, [0 x i64] }** %_1333
  %_1331 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1304, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1314, { i64, [0 x i64] }** %_1331
  %_1329 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1304, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1306, { i64, [0 x i64] }** %_1329
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1304, { i64, [0 x { i64, [0 x i64] }*] }** %_a1335
  %_bop1395 = mul i64 3, 4
  %_bop1394 = mul i64 3, 3
  %_bop1393 = mul i64 3, 2
  %_bop1392 = mul i64 3, 1
  %_bop1391 = mul i64 3, 0
  %_raw_array1389 = call i64* @oat_alloc_array(i64 5)
  %_array1390 = bitcast i64* %_raw_array1389 to { i64, [0 x i64] }*
  %_1404 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1390, i32 0, i32 1, i32 4
  store i64 %_bop1395, i64* %_1404
  %_1402 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1390, i32 0, i32 1, i32 3
  store i64 %_bop1394, i64* %_1402
  %_1400 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1390, i32 0, i32 1, i32 2
  store i64 %_bop1393, i64* %_1400
  %_1398 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1390, i32 0, i32 1, i32 1
  store i64 %_bop1392, i64* %_1398
  %_1396 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1390, i32 0, i32 1, i32 0
  store i64 %_bop1391, i64* %_1396
  %_bop1378 = mul i64 2, 4
  %_bop1377 = mul i64 2, 3
  %_bop1376 = mul i64 2, 2
  %_bop1375 = mul i64 2, 1
  %_bop1374 = mul i64 2, 0
  %_raw_array1372 = call i64* @oat_alloc_array(i64 5)
  %_array1373 = bitcast i64* %_raw_array1372 to { i64, [0 x i64] }*
  %_1387 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1373, i32 0, i32 1, i32 4
  store i64 %_bop1378, i64* %_1387
  %_1385 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1373, i32 0, i32 1, i32 3
  store i64 %_bop1377, i64* %_1385
  %_1383 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1373, i32 0, i32 1, i32 2
  store i64 %_bop1376, i64* %_1383
  %_1381 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1373, i32 0, i32 1, i32 1
  store i64 %_bop1375, i64* %_1381
  %_1379 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1373, i32 0, i32 1, i32 0
  store i64 %_bop1374, i64* %_1379
  %_bop1361 = mul i64 1, 4
  %_bop1360 = mul i64 1, 3
  %_bop1359 = mul i64 1, 2
  %_bop1358 = mul i64 1, 1
  %_bop1357 = mul i64 1, 0
  %_raw_array1355 = call i64* @oat_alloc_array(i64 5)
  %_array1356 = bitcast i64* %_raw_array1355 to { i64, [0 x i64] }*
  %_1370 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1356, i32 0, i32 1, i32 4
  store i64 %_bop1361, i64* %_1370
  %_1368 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1356, i32 0, i32 1, i32 3
  store i64 %_bop1360, i64* %_1368
  %_1366 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1356, i32 0, i32 1, i32 2
  store i64 %_bop1359, i64* %_1366
  %_1364 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1356, i32 0, i32 1, i32 1
  store i64 %_bop1358, i64* %_1364
  %_1362 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1356, i32 0, i32 1, i32 0
  store i64 %_bop1357, i64* %_1362
  %_bop1344 = mul i64 0, 4
  %_bop1343 = mul i64 0, 3
  %_bop1342 = mul i64 0, 2
  %_bop1341 = mul i64 0, 1
  %_bop1340 = mul i64 0, 0
  %_raw_array1338 = call i64* @oat_alloc_array(i64 5)
  %_array1339 = bitcast i64* %_raw_array1338 to { i64, [0 x i64] }*
  %_1353 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1339, i32 0, i32 1, i32 4
  store i64 %_bop1344, i64* %_1353
  %_1351 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1339, i32 0, i32 1, i32 3
  store i64 %_bop1343, i64* %_1351
  %_1349 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1339, i32 0, i32 1, i32 2
  store i64 %_bop1342, i64* %_1349
  %_1347 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1339, i32 0, i32 1, i32 1
  store i64 %_bop1341, i64* %_1347
  %_1345 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1339, i32 0, i32 1, i32 0
  store i64 %_bop1340, i64* %_1345
  %_raw_array1336 = call i64* @oat_alloc_array(i64 4)
  %_array1337 = bitcast i64* %_raw_array1336 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1412 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1337, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array1390, { i64, [0 x i64] }** %_1412
  %_1410 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1337, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1373, { i64, [0 x i64] }** %_1410
  %_1408 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1337, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1356, { i64, [0 x i64] }** %_1408
  %_1406 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1337, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1339, { i64, [0 x i64] }** %_1406
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1337, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1414
  %_bop1443 = mul i64 2, 2
  %_bop1442 = mul i64 2, 1
  %_bop1441 = mul i64 2, 0
  %_raw_array1439 = call i64* @oat_alloc_array(i64 3)
  %_array1440 = bitcast i64* %_raw_array1439 to { i64, [0 x i64] }*
  %_1448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1440, i32 0, i32 1, i32 2
  store i64 %_bop1443, i64* %_1448
  %_1446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1440, i32 0, i32 1, i32 1
  store i64 %_bop1442, i64* %_1446
  %_1444 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1440, i32 0, i32 1, i32 0
  store i64 %_bop1441, i64* %_1444
  %_bop1432 = mul i64 1, 2
  %_bop1431 = mul i64 1, 1
  %_bop1430 = mul i64 1, 0
  %_raw_array1428 = call i64* @oat_alloc_array(i64 3)
  %_array1429 = bitcast i64* %_raw_array1428 to { i64, [0 x i64] }*
  %_1437 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1429, i32 0, i32 1, i32 2
  store i64 %_bop1432, i64* %_1437
  %_1435 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1429, i32 0, i32 1, i32 1
  store i64 %_bop1431, i64* %_1435
  %_1433 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1429, i32 0, i32 1, i32 0
  store i64 %_bop1430, i64* %_1433
  %_bop1421 = mul i64 0, 2
  %_bop1420 = mul i64 0, 1
  %_bop1419 = mul i64 0, 0
  %_raw_array1417 = call i64* @oat_alloc_array(i64 3)
  %_array1418 = bitcast i64* %_raw_array1417 to { i64, [0 x i64] }*
  %_1426 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1418, i32 0, i32 1, i32 2
  store i64 %_bop1421, i64* %_1426
  %_1424 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1418, i32 0, i32 1, i32 1
  store i64 %_bop1420, i64* %_1424
  %_1422 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1418, i32 0, i32 1, i32 0
  store i64 %_bop1419, i64* %_1422
  %_raw_array1415 = call i64* @oat_alloc_array(i64 3)
  %_array1416 = bitcast i64* %_raw_array1415 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1454 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1416, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1440, { i64, [0 x i64] }** %_1454
  %_1452 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1416, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1429, { i64, [0 x i64] }** %_1452
  %_1450 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1416, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1418, { i64, [0 x i64] }** %_1450
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1416, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01456
  %_id_arr1457 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1414
  %_index_pointer1459 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr1457, i32 0, i32 1, i32 3
  %_index_value1458 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1459
  %_index_pointer1461 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1458, i32 0, i32 1, i32 4
  %_index_value1460 = load i64, i64* %_index_pointer1461
  %_id_a1462 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1335
  %_index_pointer1464 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a1462, i32 0, i32 1, i32 1
  %_index_value1463 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1464
  %_index_pointer1466 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1463, i32 0, i32 1, i32 2
  %_index_value1465 = load i64, i64* %_index_pointer1466
  %_bop1467 = add i64 %_index_value1460, %_index_value1465
  %_id_arr01468 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01456
  %_1469 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_id_arr01468)
  %_bop1470 = add i64 %_bop1467, %_1469
  %_1471 = call i64 @g(i64 4)
  %_bop1472 = add i64 %_bop1470, %_1471
  ret i64 %_bop1472
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
