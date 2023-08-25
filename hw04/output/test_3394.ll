; generated from: hw4programs/run15.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %a) {
  %_a1521 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a, { i64, [0 x { i64, [0 x i64] }*] }** %_a1521
  %_id_a1522 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1521
  %_index_pointer1523 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a1522, i32 0, i32 1, i32 1
  %_index_value1524 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1523
  %_index_pointer1525 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1524, i32 0, i32 1, i32 1
  %_index_value1526 = load i64, i64* %_index_pointer1525
  ret i64 %_index_value1526
}

define i64 @g(i64 %x) {
  %_x1473 = alloca i64
  %_1474 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %x, i64* %_x1473
  %_id_x1503 = load i64, i64* %_x1473
  %_id_x1502 = load i64, i64* %_x1473
  %_id_x1501 = load i64, i64* %_x1473
  %_raw_array1499 = call i64* @oat_alloc_array(i64 3)
  %_array1500 = bitcast i64* %_raw_array1499 to { i64, [0 x i64] }*
  %_1508 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1500, i32 0, i32 1, i32 2
  store i64 %_id_x1503, i64* %_1508
  %_1506 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1500, i32 0, i32 1, i32 1
  store i64 %_id_x1502, i64* %_1506
  %_1504 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1500, i32 0, i32 1, i32 0
  store i64 %_id_x1501, i64* %_1504
  %_id_x1492 = load i64, i64* %_x1473
  %_id_x1491 = load i64, i64* %_x1473
  %_id_x1490 = load i64, i64* %_x1473
  %_raw_array1488 = call i64* @oat_alloc_array(i64 3)
  %_array1489 = bitcast i64* %_raw_array1488 to { i64, [0 x i64] }*
  %_1497 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1489, i32 0, i32 1, i32 2
  store i64 %_id_x1492, i64* %_1497
  %_1495 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1489, i32 0, i32 1, i32 1
  store i64 %_id_x1491, i64* %_1495
  %_1493 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1489, i32 0, i32 1, i32 0
  store i64 %_id_x1490, i64* %_1493
  %_id_x1481 = load i64, i64* %_x1473
  %_id_x1480 = load i64, i64* %_x1473
  %_id_x1479 = load i64, i64* %_x1473
  %_raw_array1477 = call i64* @oat_alloc_array(i64 3)
  %_array1478 = bitcast i64* %_raw_array1477 to { i64, [0 x i64] }*
  %_1486 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1478, i32 0, i32 1, i32 2
  store i64 %_id_x1481, i64* %_1486
  %_1484 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1478, i32 0, i32 1, i32 1
  store i64 %_id_x1480, i64* %_1484
  %_1482 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1478, i32 0, i32 1, i32 0
  store i64 %_id_x1479, i64* %_1482
  %_raw_array1475 = call i64* @oat_alloc_array(i64 3)
  %_array1476 = bitcast i64* %_raw_array1475 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1514 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1476, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1500, { i64, [0 x i64] }** %_1514
  %_1512 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1476, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1489, { i64, [0 x i64] }** %_1512
  %_1510 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1476, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1478, { i64, [0 x i64] }** %_1510
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1476, { i64, [0 x { i64, [0 x i64] }*] }** %_1474
  %_id_arr1516 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1474
  %_index_pointer1517 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr1516, i32 0, i32 1, i32 1
  %_index_value1518 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1517
  %_index_pointer1519 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1518, i32 0, i32 1, i32 1
  %_index_value1520 = load i64, i64* %_index_pointer1519
  ret i64 %_index_value1520
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1301 = alloca i64
  %_argv1302 = alloca { i64, [0 x i8*] }*
  %_1303 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1336 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1415 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1301
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1302
  %_raw_array1322 = call i64* @oat_alloc_array(i64 3)
  %_array1323 = bitcast i64* %_raw_array1322 to { i64, [0 x i64] }*
  %_1328 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1323, i32 0, i32 1, i32 2
  store i64 2, i64* %_1328
  %_1326 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1323, i32 0, i32 1, i32 1
  store i64 1, i64* %_1326
  %_1324 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1323, i32 0, i32 1, i32 0
  store i64 0, i64* %_1324
  %_raw_array1314 = call i64* @oat_alloc_array(i64 3)
  %_array1315 = bitcast i64* %_raw_array1314 to { i64, [0 x i64] }*
  %_1320 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1315, i32 0, i32 1, i32 2
  store i64 2, i64* %_1320
  %_1318 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1315, i32 0, i32 1, i32 1
  store i64 1, i64* %_1318
  %_1316 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1315, i32 0, i32 1, i32 0
  store i64 0, i64* %_1316
  %_raw_array1306 = call i64* @oat_alloc_array(i64 3)
  %_array1307 = bitcast i64* %_raw_array1306 to { i64, [0 x i64] }*
  %_1312 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1307, i32 0, i32 1, i32 2
  store i64 2, i64* %_1312
  %_1310 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1307, i32 0, i32 1, i32 1
  store i64 1, i64* %_1310
  %_1308 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1307, i32 0, i32 1, i32 0
  store i64 0, i64* %_1308
  %_raw_array1304 = call i64* @oat_alloc_array(i64 3)
  %_array1305 = bitcast i64* %_raw_array1304 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1334 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1305, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1323, { i64, [0 x i64] }** %_1334
  %_1332 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1305, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1315, { i64, [0 x i64] }** %_1332
  %_1330 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1305, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1307, { i64, [0 x i64] }** %_1330
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1305, { i64, [0 x { i64, [0 x i64] }*] }** %_1303
  %_1396 = mul i64 3, 4
  %_1395 = mul i64 3, 3
  %_1394 = mul i64 3, 2
  %_1393 = mul i64 3, 1
  %_1392 = mul i64 3, 0
  %_raw_array1390 = call i64* @oat_alloc_array(i64 5)
  %_array1391 = bitcast i64* %_raw_array1390 to { i64, [0 x i64] }*
  %_1405 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1391, i32 0, i32 1, i32 4
  store i64 %_1396, i64* %_1405
  %_1403 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1391, i32 0, i32 1, i32 3
  store i64 %_1395, i64* %_1403
  %_1401 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1391, i32 0, i32 1, i32 2
  store i64 %_1394, i64* %_1401
  %_1399 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1391, i32 0, i32 1, i32 1
  store i64 %_1393, i64* %_1399
  %_1397 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1391, i32 0, i32 1, i32 0
  store i64 %_1392, i64* %_1397
  %_1379 = mul i64 2, 4
  %_1378 = mul i64 2, 3
  %_1377 = mul i64 2, 2
  %_1376 = mul i64 2, 1
  %_1375 = mul i64 2, 0
  %_raw_array1373 = call i64* @oat_alloc_array(i64 5)
  %_array1374 = bitcast i64* %_raw_array1373 to { i64, [0 x i64] }*
  %_1388 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1374, i32 0, i32 1, i32 4
  store i64 %_1379, i64* %_1388
  %_1386 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1374, i32 0, i32 1, i32 3
  store i64 %_1378, i64* %_1386
  %_1384 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1374, i32 0, i32 1, i32 2
  store i64 %_1377, i64* %_1384
  %_1382 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1374, i32 0, i32 1, i32 1
  store i64 %_1376, i64* %_1382
  %_1380 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1374, i32 0, i32 1, i32 0
  store i64 %_1375, i64* %_1380
  %_1362 = mul i64 1, 4
  %_1361 = mul i64 1, 3
  %_1360 = mul i64 1, 2
  %_1359 = mul i64 1, 1
  %_1358 = mul i64 1, 0
  %_raw_array1356 = call i64* @oat_alloc_array(i64 5)
  %_array1357 = bitcast i64* %_raw_array1356 to { i64, [0 x i64] }*
  %_1371 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1357, i32 0, i32 1, i32 4
  store i64 %_1362, i64* %_1371
  %_1369 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1357, i32 0, i32 1, i32 3
  store i64 %_1361, i64* %_1369
  %_1367 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1357, i32 0, i32 1, i32 2
  store i64 %_1360, i64* %_1367
  %_1365 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1357, i32 0, i32 1, i32 1
  store i64 %_1359, i64* %_1365
  %_1363 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1357, i32 0, i32 1, i32 0
  store i64 %_1358, i64* %_1363
  %_1345 = mul i64 0, 4
  %_1344 = mul i64 0, 3
  %_1343 = mul i64 0, 2
  %_1342 = mul i64 0, 1
  %_1341 = mul i64 0, 0
  %_raw_array1339 = call i64* @oat_alloc_array(i64 5)
  %_array1340 = bitcast i64* %_raw_array1339 to { i64, [0 x i64] }*
  %_1354 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1340, i32 0, i32 1, i32 4
  store i64 %_1345, i64* %_1354
  %_1352 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1340, i32 0, i32 1, i32 3
  store i64 %_1344, i64* %_1352
  %_1350 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1340, i32 0, i32 1, i32 2
  store i64 %_1343, i64* %_1350
  %_1348 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1340, i32 0, i32 1, i32 1
  store i64 %_1342, i64* %_1348
  %_1346 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1340, i32 0, i32 1, i32 0
  store i64 %_1341, i64* %_1346
  %_raw_array1337 = call i64* @oat_alloc_array(i64 4)
  %_array1338 = bitcast i64* %_raw_array1337 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1413 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1338, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array1391, { i64, [0 x i64] }** %_1413
  %_1411 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1338, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1374, { i64, [0 x i64] }** %_1411
  %_1409 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1338, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1357, { i64, [0 x i64] }** %_1409
  %_1407 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1338, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1340, { i64, [0 x i64] }** %_1407
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1338, { i64, [0 x { i64, [0 x i64] }*] }** %_1336
  %_1444 = mul i64 2, 2
  %_1443 = mul i64 2, 1
  %_1442 = mul i64 2, 0
  %_raw_array1440 = call i64* @oat_alloc_array(i64 3)
  %_array1441 = bitcast i64* %_raw_array1440 to { i64, [0 x i64] }*
  %_1449 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1441, i32 0, i32 1, i32 2
  store i64 %_1444, i64* %_1449
  %_1447 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1441, i32 0, i32 1, i32 1
  store i64 %_1443, i64* %_1447
  %_1445 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1441, i32 0, i32 1, i32 0
  store i64 %_1442, i64* %_1445
  %_1433 = mul i64 1, 2
  %_1432 = mul i64 1, 1
  %_1431 = mul i64 1, 0
  %_raw_array1429 = call i64* @oat_alloc_array(i64 3)
  %_array1430 = bitcast i64* %_raw_array1429 to { i64, [0 x i64] }*
  %_1438 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1430, i32 0, i32 1, i32 2
  store i64 %_1433, i64* %_1438
  %_1436 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1430, i32 0, i32 1, i32 1
  store i64 %_1432, i64* %_1436
  %_1434 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1430, i32 0, i32 1, i32 0
  store i64 %_1431, i64* %_1434
  %_1422 = mul i64 0, 2
  %_1421 = mul i64 0, 1
  %_1420 = mul i64 0, 0
  %_raw_array1418 = call i64* @oat_alloc_array(i64 3)
  %_array1419 = bitcast i64* %_raw_array1418 to { i64, [0 x i64] }*
  %_1427 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1419, i32 0, i32 1, i32 2
  store i64 %_1422, i64* %_1427
  %_1425 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1419, i32 0, i32 1, i32 1
  store i64 %_1421, i64* %_1425
  %_1423 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1419, i32 0, i32 1, i32 0
  store i64 %_1420, i64* %_1423
  %_raw_array1416 = call i64* @oat_alloc_array(i64 3)
  %_array1417 = bitcast i64* %_raw_array1416 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1455 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1417, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1441, { i64, [0 x i64] }** %_1455
  %_1453 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1417, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1430, { i64, [0 x i64] }** %_1453
  %_1451 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1417, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1419, { i64, [0 x i64] }** %_1451
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1417, { i64, [0 x { i64, [0 x i64] }*] }** %_1415
  %_1471 = call i64 @g(i64 4)
  %_id_arr01468 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1415
  %_1469 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_id_arr01468)
  %_id_a1462 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1303
  %_index_pointer1463 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_a1462, i32 0, i32 1, i32 1
  %_index_value1464 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1463
  %_index_pointer1465 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1464, i32 0, i32 1, i32 2
  %_index_value1466 = load i64, i64* %_index_pointer1465
  %_id_arr1457 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1336
  %_index_pointer1458 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_arr1457, i32 0, i32 1, i32 3
  %_index_value1459 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1458
  %_index_pointer1460 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1459, i32 0, i32 1, i32 4
  %_index_value1461 = load i64, i64* %_index_pointer1460
  %_1467 = add i64 %_index_value1461, %_index_value1466
  %_1470 = add i64 %_1467, %_1469
  %_1472 = add i64 %_1470, %_1471
  ret i64 %_1472
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
