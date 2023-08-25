; generated from: hw4programs/run15.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %a) {
  %_a1525 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a, { i64, [0 x { i64, [0 x i64] }*] }** %_a1525
  %_id_a1526 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1525
  %_index_pointer1527 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a1526, i32 0, i32 1, i32 1
  %_index_value1528 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1527
  %_index_pointer1529 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1528, i32 0, i32 1, i32 1
  %_index_value1530 = load i64, i64* %_index_pointer1529
  ret i64 %_index_value1530
}

define i64 @g(i64 %x) {
  %_x1477 = alloca i64
  %_1478 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %x, i64* %_x1477
  %_id_x1507 = load i64, i64* %_x1477
  %_id_x1506 = load i64, i64* %_x1477
  %_id_x1505 = load i64, i64* %_x1477
  %_raw_array1503 = call i64* @oat_alloc_array(i64 3)
  %_array1504 = bitcast i64* %_raw_array1503 to { i64, [0 x i64] }*
  %_1512 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1504, i32 0, i32 1, i32 2
  store i64 %_id_x1507, i64* %_1512
  %_1510 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1504, i32 0, i32 1, i32 1
  store i64 %_id_x1506, i64* %_1510
  %_1508 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1504, i32 0, i32 1, i32 0
  store i64 %_id_x1505, i64* %_1508
  %_id_x1496 = load i64, i64* %_x1477
  %_id_x1495 = load i64, i64* %_x1477
  %_id_x1494 = load i64, i64* %_x1477
  %_raw_array1492 = call i64* @oat_alloc_array(i64 3)
  %_array1493 = bitcast i64* %_raw_array1492 to { i64, [0 x i64] }*
  %_1501 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1493, i32 0, i32 1, i32 2
  store i64 %_id_x1496, i64* %_1501
  %_1499 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1493, i32 0, i32 1, i32 1
  store i64 %_id_x1495, i64* %_1499
  %_1497 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1493, i32 0, i32 1, i32 0
  store i64 %_id_x1494, i64* %_1497
  %_id_x1485 = load i64, i64* %_x1477
  %_id_x1484 = load i64, i64* %_x1477
  %_id_x1483 = load i64, i64* %_x1477
  %_raw_array1481 = call i64* @oat_alloc_array(i64 3)
  %_array1482 = bitcast i64* %_raw_array1481 to { i64, [0 x i64] }*
  %_1490 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1482, i32 0, i32 1, i32 2
  store i64 %_id_x1485, i64* %_1490
  %_1488 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1482, i32 0, i32 1, i32 1
  store i64 %_id_x1484, i64* %_1488
  %_1486 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1482, i32 0, i32 1, i32 0
  store i64 %_id_x1483, i64* %_1486
  %_raw_array1479 = call i64* @oat_alloc_array(i64 3)
  %_array1480 = bitcast i64* %_raw_array1479 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1518 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1480, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1504, { i64, [0 x i64] }** %_1518
  %_1516 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1480, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1493, { i64, [0 x i64] }** %_1516
  %_1514 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1480, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1482, { i64, [0 x i64] }** %_1514
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1480, { i64, [0 x { i64, [0 x i64] }*] }** %_1478
  %_id_arr1520 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1478
  %_index_pointer1521 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr1520, i32 0, i32 1, i32 1
  %_index_value1522 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1521
  %_index_pointer1523 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1522, i32 0, i32 1, i32 1
  %_index_value1524 = load i64, i64* %_index_pointer1523
  ret i64 %_index_value1524
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1305 = alloca i64
  %_argv1306 = alloca { i64, [0 x i8*] }*
  %_1307 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1340 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1419 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1305
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1306
  %_raw_array1326 = call i64* @oat_alloc_array(i64 3)
  %_array1327 = bitcast i64* %_raw_array1326 to { i64, [0 x i64] }*
  %_1332 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1327, i32 0, i32 1, i32 2
  store i64 2, i64* %_1332
  %_1330 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1327, i32 0, i32 1, i32 1
  store i64 1, i64* %_1330
  %_1328 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1327, i32 0, i32 1, i32 0
  store i64 0, i64* %_1328
  %_raw_array1318 = call i64* @oat_alloc_array(i64 3)
  %_array1319 = bitcast i64* %_raw_array1318 to { i64, [0 x i64] }*
  %_1324 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1319, i32 0, i32 1, i32 2
  store i64 2, i64* %_1324
  %_1322 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1319, i32 0, i32 1, i32 1
  store i64 1, i64* %_1322
  %_1320 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1319, i32 0, i32 1, i32 0
  store i64 0, i64* %_1320
  %_raw_array1310 = call i64* @oat_alloc_array(i64 3)
  %_array1311 = bitcast i64* %_raw_array1310 to { i64, [0 x i64] }*
  %_1316 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1311, i32 0, i32 1, i32 2
  store i64 2, i64* %_1316
  %_1314 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1311, i32 0, i32 1, i32 1
  store i64 1, i64* %_1314
  %_1312 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1311, i32 0, i32 1, i32 0
  store i64 0, i64* %_1312
  %_raw_array1308 = call i64* @oat_alloc_array(i64 3)
  %_array1309 = bitcast i64* %_raw_array1308 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1338 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1309, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1327, { i64, [0 x i64] }** %_1338
  %_1336 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1309, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1319, { i64, [0 x i64] }** %_1336
  %_1334 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1309, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1311, { i64, [0 x i64] }** %_1334
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1309, { i64, [0 x { i64, [0 x i64] }*] }** %_1307
  %_1400 = mul i64 3, 4
  %_1399 = mul i64 3, 3
  %_1398 = mul i64 3, 2
  %_1397 = mul i64 3, 1
  %_1396 = mul i64 3, 0
  %_raw_array1394 = call i64* @oat_alloc_array(i64 5)
  %_array1395 = bitcast i64* %_raw_array1394 to { i64, [0 x i64] }*
  %_1409 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1395, i32 0, i32 1, i32 4
  store i64 %_1400, i64* %_1409
  %_1407 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1395, i32 0, i32 1, i32 3
  store i64 %_1399, i64* %_1407
  %_1405 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1395, i32 0, i32 1, i32 2
  store i64 %_1398, i64* %_1405
  %_1403 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1395, i32 0, i32 1, i32 1
  store i64 %_1397, i64* %_1403
  %_1401 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1395, i32 0, i32 1, i32 0
  store i64 %_1396, i64* %_1401
  %_1383 = mul i64 2, 4
  %_1382 = mul i64 2, 3
  %_1381 = mul i64 2, 2
  %_1380 = mul i64 2, 1
  %_1379 = mul i64 2, 0
  %_raw_array1377 = call i64* @oat_alloc_array(i64 5)
  %_array1378 = bitcast i64* %_raw_array1377 to { i64, [0 x i64] }*
  %_1392 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1378, i32 0, i32 1, i32 4
  store i64 %_1383, i64* %_1392
  %_1390 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1378, i32 0, i32 1, i32 3
  store i64 %_1382, i64* %_1390
  %_1388 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1378, i32 0, i32 1, i32 2
  store i64 %_1381, i64* %_1388
  %_1386 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1378, i32 0, i32 1, i32 1
  store i64 %_1380, i64* %_1386
  %_1384 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1378, i32 0, i32 1, i32 0
  store i64 %_1379, i64* %_1384
  %_1366 = mul i64 1, 4
  %_1365 = mul i64 1, 3
  %_1364 = mul i64 1, 2
  %_1363 = mul i64 1, 1
  %_1362 = mul i64 1, 0
  %_raw_array1360 = call i64* @oat_alloc_array(i64 5)
  %_array1361 = bitcast i64* %_raw_array1360 to { i64, [0 x i64] }*
  %_1375 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1361, i32 0, i32 1, i32 4
  store i64 %_1366, i64* %_1375
  %_1373 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1361, i32 0, i32 1, i32 3
  store i64 %_1365, i64* %_1373
  %_1371 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1361, i32 0, i32 1, i32 2
  store i64 %_1364, i64* %_1371
  %_1369 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1361, i32 0, i32 1, i32 1
  store i64 %_1363, i64* %_1369
  %_1367 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1361, i32 0, i32 1, i32 0
  store i64 %_1362, i64* %_1367
  %_1349 = mul i64 0, 4
  %_1348 = mul i64 0, 3
  %_1347 = mul i64 0, 2
  %_1346 = mul i64 0, 1
  %_1345 = mul i64 0, 0
  %_raw_array1343 = call i64* @oat_alloc_array(i64 5)
  %_array1344 = bitcast i64* %_raw_array1343 to { i64, [0 x i64] }*
  %_1358 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1344, i32 0, i32 1, i32 4
  store i64 %_1349, i64* %_1358
  %_1356 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1344, i32 0, i32 1, i32 3
  store i64 %_1348, i64* %_1356
  %_1354 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1344, i32 0, i32 1, i32 2
  store i64 %_1347, i64* %_1354
  %_1352 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1344, i32 0, i32 1, i32 1
  store i64 %_1346, i64* %_1352
  %_1350 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1344, i32 0, i32 1, i32 0
  store i64 %_1345, i64* %_1350
  %_raw_array1341 = call i64* @oat_alloc_array(i64 4)
  %_array1342 = bitcast i64* %_raw_array1341 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1417 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1342, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array1395, { i64, [0 x i64] }** %_1417
  %_1415 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1342, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1378, { i64, [0 x i64] }** %_1415
  %_1413 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1342, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1361, { i64, [0 x i64] }** %_1413
  %_1411 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1342, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1344, { i64, [0 x i64] }** %_1411
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1342, { i64, [0 x { i64, [0 x i64] }*] }** %_1340
  %_1448 = mul i64 2, 2
  %_1447 = mul i64 2, 1
  %_1446 = mul i64 2, 0
  %_raw_array1444 = call i64* @oat_alloc_array(i64 3)
  %_array1445 = bitcast i64* %_raw_array1444 to { i64, [0 x i64] }*
  %_1453 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1445, i32 0, i32 1, i32 2
  store i64 %_1448, i64* %_1453
  %_1451 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1445, i32 0, i32 1, i32 1
  store i64 %_1447, i64* %_1451
  %_1449 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1445, i32 0, i32 1, i32 0
  store i64 %_1446, i64* %_1449
  %_1437 = mul i64 1, 2
  %_1436 = mul i64 1, 1
  %_1435 = mul i64 1, 0
  %_raw_array1433 = call i64* @oat_alloc_array(i64 3)
  %_array1434 = bitcast i64* %_raw_array1433 to { i64, [0 x i64] }*
  %_1442 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1434, i32 0, i32 1, i32 2
  store i64 %_1437, i64* %_1442
  %_1440 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1434, i32 0, i32 1, i32 1
  store i64 %_1436, i64* %_1440
  %_1438 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1434, i32 0, i32 1, i32 0
  store i64 %_1435, i64* %_1438
  %_1426 = mul i64 0, 2
  %_1425 = mul i64 0, 1
  %_1424 = mul i64 0, 0
  %_raw_array1422 = call i64* @oat_alloc_array(i64 3)
  %_array1423 = bitcast i64* %_raw_array1422 to { i64, [0 x i64] }*
  %_1431 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1423, i32 0, i32 1, i32 2
  store i64 %_1426, i64* %_1431
  %_1429 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1423, i32 0, i32 1, i32 1
  store i64 %_1425, i64* %_1429
  %_1427 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1423, i32 0, i32 1, i32 0
  store i64 %_1424, i64* %_1427
  %_raw_array1420 = call i64* @oat_alloc_array(i64 3)
  %_array1421 = bitcast i64* %_raw_array1420 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1459 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1421, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1445, { i64, [0 x i64] }** %_1459
  %_1457 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1421, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1434, { i64, [0 x i64] }** %_1457
  %_1455 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1421, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1423, { i64, [0 x i64] }** %_1455
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1421, { i64, [0 x { i64, [0 x i64] }*] }** %_1419
  %_1475 = call i64 @g(i64 4)
  %_id_arr01472 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1419
  %_1473 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_id_arr01472)
  %_id_a1466 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1307
  %_index_pointer1467 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a1466, i32 0, i32 1, i32 1
  %_index_value1468 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1467
  %_index_pointer1469 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1468, i32 0, i32 1, i32 2
  %_index_value1470 = load i64, i64* %_index_pointer1469
  %_id_arr1461 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1340
  %_index_pointer1462 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr1461, i32 0, i32 1, i32 3
  %_index_value1463 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1462
  %_index_pointer1464 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1463, i32 0, i32 1, i32 4
  %_index_value1465 = load i64, i64* %_index_pointer1464
  %_1471 = add i64 %_index_value1465, %_index_value1470
  %_1474 = add i64 %_1471, %_1473
  %_1476 = add i64 %_1474, %_1475
  ret i64 %_1476
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
