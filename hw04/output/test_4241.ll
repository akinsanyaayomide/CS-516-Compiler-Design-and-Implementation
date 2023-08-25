; generated from: hw4programs/run14.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f({ i64, [0 x i64] }* %a) {
  %_a1448 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a1448
  %_id_a1449 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1448
  %_index_pointer1451 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a1449, i32 0, i32 1, i32 1
  %_index_value1450 = load i64, i64* %_index_pointer1451
  ret i64 %_index_value1450
}

define i64 @g(i64 %x) {
  %_x1429 = alloca i64
  %_1430 = alloca { i64, [0 x i64] }*
  %_1433 = alloca i64
  store i64 %x, i64* %_x1429
  %_raw_array1431 = call i64* @oat_alloc_array(i64 3)
  %_array1432 = bitcast i64* %_raw_array1431 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1432, { i64, [0 x i64] }** %_1430
  store i64 0, i64* %_1433
  br label %_cond1443
_cond1443:
  %_id_i1434 = load i64, i64* %_1433
  %_bop1435 = icmp slt i64 %_id_i1434, 3
  br i1 %_bop1435, label %_if1442, label %_merge1444
_if1442:
  %_id_x1436 = load i64, i64* %_x1429
  %_id_arr1437 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1430
  %_id_i1438 = load i64, i64* %_1433
  %_1439 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1437, i32 0, i32 1, i64 %_id_i1438
  store i64 %_id_x1436, i64* %_1439
  %_id_i1440 = load i64, i64* %_1433
  %_bop1441 = add i64 %_id_i1440, 1
  store i64 %_bop1441, i64* %_1433
  br label %_cond1443
_merge1444:
  %_id_arr1445 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1430
  %_index_pointer1447 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1445, i32 0, i32 1, i32 1
  %_index_value1446 = load i64, i64* %_index_pointer1447
  ret i64 %_index_value1446
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1367 = alloca i64
  %_argv1368 = alloca { i64, [0 x i8*] }*
  %_1369 = alloca { i64, [0 x i64] }*
  %_1372 = alloca i64
  %_1384 = alloca { i64, [0 x i64] }*
  %_1387 = alloca i64
  %_1401 = alloca { i64, [0 x i64] }*
  %_1404 = alloca i64
  store i64 %argc, i64* %_argc1367
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1368
  %_raw_array1370 = call i64* @oat_alloc_array(i64 3)
  %_array1371 = bitcast i64* %_raw_array1370 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1371, { i64, [0 x i64] }** %_1369
  store i64 0, i64* %_1372
  br label %_cond1382
_cond1382:
  %_id_i1373 = load i64, i64* %_1372
  %_bop1374 = icmp slt i64 %_id_i1373, 3
  br i1 %_bop1374, label %_if1381, label %_merge1383
_if1381:
  %_id_i1375 = load i64, i64* %_1372
  %_id_a1376 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1369
  %_id_i1377 = load i64, i64* %_1372
  %_1378 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a1376, i32 0, i32 1, i64 %_id_i1377
  store i64 %_id_i1375, i64* %_1378
  %_id_i1379 = load i64, i64* %_1372
  %_bop1380 = add i64 %_id_i1379, 1
  store i64 %_bop1380, i64* %_1372
  br label %_cond1382
_merge1383:
  %_raw_array1385 = call i64* @oat_alloc_array(i64 4)
  %_array1386 = bitcast i64* %_raw_array1385 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1386, { i64, [0 x i64] }** %_1384
  store i64 0, i64* %_1387
  br label %_cond1399
_cond1399:
  %_id_i1388 = load i64, i64* %_1387
  %_bop1389 = icmp slt i64 %_id_i1388, 4
  br i1 %_bop1389, label %_if1398, label %_merge1400
_if1398:
  %_id_i1390 = load i64, i64* %_1387
  %_id_i1391 = load i64, i64* %_1387
  %_bop1392 = mul i64 %_id_i1390, %_id_i1391
  %_id_arr1393 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1384
  %_id_i1394 = load i64, i64* %_1387
  %_1395 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1393, i32 0, i32 1, i64 %_id_i1394
  store i64 %_bop1392, i64* %_1395
  %_id_i1396 = load i64, i64* %_1387
  %_bop1397 = add i64 %_id_i1396, 1
  store i64 %_bop1397, i64* %_1387
  br label %_cond1399
_merge1400:
  %_raw_array1402 = call i64* @oat_alloc_array(i64 3)
  %_array1403 = bitcast i64* %_raw_array1402 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1403, { i64, [0 x i64] }** %_1401
  store i64 0, i64* %_1404
  br label %_cond1415
_cond1415:
  %_id_i1405 = load i64, i64* %_1404
  %_bop1406 = icmp slt i64 %_id_i1405, 3
  br i1 %_bop1406, label %_if1414, label %_merge1416
_if1414:
  %_id_i1407 = load i64, i64* %_1404
  %_bop1408 = mul i64 2, %_id_i1407
  %_id_arr01409 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1401
  %_id_i1410 = load i64, i64* %_1404
  %_1411 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr01409, i32 0, i32 1, i64 %_id_i1410
  store i64 %_bop1408, i64* %_1411
  %_id_i1412 = load i64, i64* %_1404
  %_bop1413 = add i64 %_id_i1412, 1
  store i64 %_bop1413, i64* %_1404
  br label %_cond1415
_merge1416:
  %_id_arr1417 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1384
  %_index_pointer1419 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1417, i32 0, i32 1, i32 3
  %_index_value1418 = load i64, i64* %_index_pointer1419
  %_id_a1420 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1369
  %_index_pointer1422 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a1420, i32 0, i32 1, i32 1
  %_index_value1421 = load i64, i64* %_index_pointer1422
  %_bop1423 = add i64 %_index_value1418, %_index_value1421
  %_id_arr01424 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1401
  %_1425 = call i64 @f({ i64, [0 x i64] }* %_id_arr01424)
  %_bop1426 = add i64 %_bop1423, %_1425
  %_1427 = call i64 @g(i64 4)
  %_bop1428 = add i64 %_bop1426, %_1427
  ret i64 %_bop1428
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
