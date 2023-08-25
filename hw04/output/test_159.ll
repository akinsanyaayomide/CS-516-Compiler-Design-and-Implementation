; generated from: hw4programs/run16.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1486 = alloca i64
  %_argv1487 = alloca { i64, [0 x i8*] }*
  %_1488 = alloca i64
  %_1489 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1549 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1486
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1487
  store i64 10, i64* %_1488
  %_id_x1534 = load i64, i64* %_1488
  %_1535 = add i64 %_id_x1534, 2
  %_1536 = add i64 %_1535, 2
  %_id_x1531 = load i64, i64* %_1488
  %_1532 = add i64 %_id_x1531, 2
  %_1533 = add i64 %_1532, 1
  %_id_x1528 = load i64, i64* %_1488
  %_1529 = add i64 %_id_x1528, 2
  %_1530 = add i64 %_1529, 0
  %_raw_array1526 = call i64* @oat_alloc_array(i64 3)
  %_array1527 = bitcast i64* %_raw_array1526 to { i64, [0 x i64] }*
  %_1541 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1527, i32 0, i32 1, i32 2
  store i64 %_1536, i64* %_1541
  %_1539 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1527, i32 0, i32 1, i32 1
  store i64 %_1533, i64* %_1539
  %_1537 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1527, i32 0, i32 1, i32 0
  store i64 %_1530, i64* %_1537
  %_id_x1517 = load i64, i64* %_1488
  %_1518 = add i64 %_id_x1517, 1
  %_1519 = add i64 %_1518, 2
  %_id_x1514 = load i64, i64* %_1488
  %_1515 = add i64 %_id_x1514, 1
  %_1516 = add i64 %_1515, 1
  %_id_x1511 = load i64, i64* %_1488
  %_1512 = add i64 %_id_x1511, 1
  %_1513 = add i64 %_1512, 0
  %_raw_array1509 = call i64* @oat_alloc_array(i64 3)
  %_array1510 = bitcast i64* %_raw_array1509 to { i64, [0 x i64] }*
  %_1524 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1510, i32 0, i32 1, i32 2
  store i64 %_1519, i64* %_1524
  %_1522 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1510, i32 0, i32 1, i32 1
  store i64 %_1516, i64* %_1522
  %_1520 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1510, i32 0, i32 1, i32 0
  store i64 %_1513, i64* %_1520
  %_id_x1500 = load i64, i64* %_1488
  %_1501 = add i64 %_id_x1500, 0
  %_1502 = add i64 %_1501, 2
  %_id_x1497 = load i64, i64* %_1488
  %_1498 = add i64 %_id_x1497, 0
  %_1499 = add i64 %_1498, 1
  %_id_x1494 = load i64, i64* %_1488
  %_1495 = add i64 %_id_x1494, 0
  %_1496 = add i64 %_1495, 0
  %_raw_array1492 = call i64* @oat_alloc_array(i64 3)
  %_array1493 = bitcast i64* %_raw_array1492 to { i64, [0 x i64] }*
  %_1507 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1493, i32 0, i32 1, i32 2
  store i64 %_1502, i64* %_1507
  %_1505 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1493, i32 0, i32 1, i32 1
  store i64 %_1499, i64* %_1505
  %_1503 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1493, i32 0, i32 1, i32 0
  store i64 %_1496, i64* %_1503
  %_raw_array1490 = call i64* @oat_alloc_array(i64 3)
  %_array1491 = bitcast i64* %_raw_array1490 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1547 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1491, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1527, { i64, [0 x i64] }** %_1547
  %_1545 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1491, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1510, { i64, [0 x i64] }** %_1545
  %_1543 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1491, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1493, { i64, [0 x i64] }** %_1543
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1491, { i64, [0 x { i64, [0 x i64] }*] }** %_1489
  %_id_a1550 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1489
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a1550, { i64, [0 x { i64, [0 x i64] }*] }** %_1549
  %_id_b1551 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1549
  %_index_pointer1552 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_b1551, i32 0, i32 1, i32 2
  %_index_value1553 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1552
  %_index_pointer1554 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1553, i32 0, i32 1, i32 1
  %_index_value1555 = load i64, i64* %_index_pointer1554
  ret i64 %_index_value1555
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
