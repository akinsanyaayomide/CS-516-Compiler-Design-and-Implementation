; generated from: hw4programs/qsort.oat
target triple = "x86_64-apple-macosx10.13.0"
define void @quick_sort({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_a2600 = alloca { i64, [0 x i64] }*
  %_l2601 = alloca i64
  %_r2602 = alloca i64
  %_2603 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2600
  store i64 %l, i64* %_l2601
  store i64 %r, i64* %_r2602
  store i64 0, i64* %_2603
  br label %_start2621
_start2621:
  %_id_r2605 = load i64, i64* %_r2602
  %_id_l2604 = load i64, i64* %_l2601
  %_2606 = icmp slt i64 %_id_l2604, %_id_r2605
  br i1 %_2606, label %_then2622, label %_else2623
_then2622:
  %_id_a2607 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2600
  %_id_l2608 = load i64, i64* %_l2601
  %_id_r2609 = load i64, i64* %_r2602
  %_2610 = call i64 @partition({ i64, [0 x i64] }* %_id_a2607, i64 %_id_l2608, i64 %_id_r2609)
  store i64 %_2610, i64* %_2603
  %_id_a2611 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2600
  %_id_l2612 = load i64, i64* %_l2601
  %_id_j2613 = load i64, i64* %_2603
  %_2614 = sub i64 %_id_j2613, 1
  call void @quick_sort({ i64, [0 x i64] }* %_id_a2611, i64 %_id_l2612, i64 %_2614)
  %_id_a2616 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2600
  %_id_j2617 = load i64, i64* %_2603
  %_2618 = add i64 %_id_j2617, 1
  %_id_r2619 = load i64, i64* %_r2602
  call void @quick_sort({ i64, [0 x i64] }* %_id_a2616, i64 %_2618, i64 %_id_r2619)
  br label %_post2624
_else2623:
  br label %_post2624
_post2624:
  ret void
}

define i64 @partition({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_a2506 = alloca { i64, [0 x i64] }*
  %_l2507 = alloca i64
  %_r2508 = alloca i64
  %_2509 = alloca i64
  %_2514 = alloca i64
  %_2516 = alloca i64
  %_2519 = alloca i64
  %_2520 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2506
  store i64 %l, i64* %_l2507
  store i64 %r, i64* %_r2508
  %_id_a2510 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2506
  %_id_l2511 = load i64, i64* %_l2507
  %_index_pointer2512 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2510, i32 0, i32 1, i64 %_id_l2511
  %_index_value2513 = load i64, i64* %_index_pointer2512
  store i64 %_index_value2513, i64* %_2509
  %_id_l2515 = load i64, i64* %_l2507
  store i64 %_id_l2515, i64* %_2514
  %_id_r2517 = load i64, i64* %_r2508
  %_2518 = add i64 %_id_r2517, 1
  store i64 %_2518, i64* %_2516
  store i64 0, i64* %_2519
  store i64 0, i64* %_2520
  br label %_start2581
_start2581:
  %_id_done2521 = load i64, i64* %_2520
  %_2522 = icmp eq i64 %_id_done2521, 0
  br i1 %_2522, label %_body2582, label %_else2583
_body2582:
  %_id_i2523 = load i64, i64* %_2514
  %_2524 = add i64 %_id_i2523, 1
  store i64 %_2524, i64* %_2514
  br label %_start2537
_start2537:
  %_id_r2532 = load i64, i64* %_r2508
  %_id_i2531 = load i64, i64* %_2514
  %_2533 = icmp sle i64 %_id_i2531, %_id_r2532
  %_id_pivot2529 = load i64, i64* %_2509
  %_id_a2525 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2506
  %_id_i2526 = load i64, i64* %_2514
  %_index_pointer2527 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2525, i32 0, i32 1, i64 %_id_i2526
  %_index_value2528 = load i64, i64* %_index_pointer2527
  %_2530 = icmp sle i64 %_index_value2528, %_id_pivot2529
  %_2534 = and i1 %_2530, %_2533
  br i1 %_2534, label %_body2538, label %_else2539
_body2538:
  %_id_i2535 = load i64, i64* %_2514
  %_2536 = add i64 %_id_i2535, 1
  store i64 %_2536, i64* %_2514
  br label %_start2537
_else2539:
  %_id_j2540 = load i64, i64* %_2516
  %_2541 = sub i64 %_id_j2540, 1
  store i64 %_2541, i64* %_2516
  br label %_start2550
_start2550:
  %_id_pivot2546 = load i64, i64* %_2509
  %_id_a2542 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2506
  %_id_j2543 = load i64, i64* %_2516
  %_index_pointer2544 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2542, i32 0, i32 1, i64 %_id_j2543
  %_index_value2545 = load i64, i64* %_index_pointer2544
  %_2547 = icmp sgt i64 %_index_value2545, %_id_pivot2546
  br i1 %_2547, label %_body2551, label %_else2552
_body2551:
  %_id_j2548 = load i64, i64* %_2516
  %_2549 = sub i64 %_id_j2548, 1
  store i64 %_2549, i64* %_2516
  br label %_start2550
_else2552:
  br label %_start2556
_start2556:
  %_id_j2554 = load i64, i64* %_2516
  %_id_i2553 = load i64, i64* %_2514
  %_2555 = icmp sge i64 %_id_i2553, %_id_j2554
  br i1 %_2555, label %_then2557, label %_else2558
_then2557:
  store i64 1, i64* %_2520
  br label %_post2559
_else2558:
  br label %_post2559
_post2559:
  br label %_start2577
_start2577:
  %_id_done2560 = load i64, i64* %_2520
  %_2561 = icmp eq i64 %_id_done2560, 0
  br i1 %_2561, label %_then2578, label %_else2579
_then2578:
  %_id_a2562 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2506
  %_id_i2563 = load i64, i64* %_2514
  %_index_pointer2564 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2562, i32 0, i32 1, i64 %_id_i2563
  %_index_value2565 = load i64, i64* %_index_pointer2564
  store i64 %_index_value2565, i64* %_2519
  %_id_a2566 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2506
  %_id_j2567 = load i64, i64* %_2516
  %_index_pointer2568 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2566, i32 0, i32 1, i64 %_id_j2567
  %_index_value2569 = load i64, i64* %_index_pointer2568
  %_id_a2570 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2506
  %_id_i2571 = load i64, i64* %_2514
  %_2572 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2570, i32 0, i32 1, i64 %_id_i2571
  store i64 %_index_value2569, i64* %_2572
  %_id_t2573 = load i64, i64* %_2519
  %_id_a2574 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2506
  %_id_j2575 = load i64, i64* %_2516
  %_2576 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2574, i32 0, i32 1, i64 %_id_j2575
  store i64 %_id_t2573, i64* %_2576
  br label %_post2580
_else2579:
  br label %_post2580
_post2580:
  br label %_start2581
_else2583:
  %_id_a2584 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2506
  %_id_l2585 = load i64, i64* %_l2507
  %_index_pointer2586 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2584, i32 0, i32 1, i64 %_id_l2585
  %_index_value2587 = load i64, i64* %_index_pointer2586
  store i64 %_index_value2587, i64* %_2519
  %_id_a2588 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2506
  %_id_j2589 = load i64, i64* %_2516
  %_index_pointer2590 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2588, i32 0, i32 1, i64 %_id_j2589
  %_index_value2591 = load i64, i64* %_index_pointer2590
  %_id_a2592 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2506
  %_id_l2593 = load i64, i64* %_l2507
  %_2594 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2592, i32 0, i32 1, i64 %_id_l2593
  store i64 %_index_value2591, i64* %_2594
  %_id_t2595 = load i64, i64* %_2519
  %_id_a2596 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2506
  %_id_j2597 = load i64, i64* %_2516
  %_2598 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a2596, i32 0, i32 1, i64 %_id_j2597
  store i64 %_id_t2595, i64* %_2598
  %_id_j2599 = load i64, i64* %_2516
  ret i64 %_id_j2599
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2475 = alloca i64
  %_argv2476 = alloca { i64, [0 x i8*] }*
  %_2477 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2475
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2476
  %_raw_array2478 = call i64* @oat_alloc_array(i64 9)
  %_array2479 = bitcast i64* %_raw_array2478 to { i64, [0 x i64] }*
  %_2496 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2479, i32 0, i32 1, i32 8
  store i64 109, i64* %_2496
  %_2494 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2479, i32 0, i32 1, i32 7
  store i64 111, i64* %_2494
  %_2492 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2479, i32 0, i32 1, i32 6
  store i64 104, i64* %_2492
  %_2490 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2479, i32 0, i32 1, i32 5
  store i64 115, i64* %_2490
  %_2488 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2479, i32 0, i32 1, i32 4
  store i64 123, i64* %_2488
  %_2486 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2479, i32 0, i32 1, i32 3
  store i64 102, i64* %_2486
  %_2484 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2479, i32 0, i32 1, i32 2
  store i64 121, i64* %_2484
  %_2482 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2479, i32 0, i32 1, i32 1
  store i64 112, i64* %_2482
  %_2480 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2479, i32 0, i32 1, i32 0
  store i64 107, i64* %_2480
  store { i64, [0 x i64] }* %_array2479, { i64, [0 x i64] }** %_2477
  %_id_a2498 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2477
  %_2499 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a2498)
  call void @print_string(i8* %_2499)
  %_id_a2501 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2477
  call void @quick_sort({ i64, [0 x i64] }* %_id_a2501, i64 0, i64 8)
  %_id_a2503 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2477
  %_2504 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_a2503)
  call void @print_string(i8* %_2504)
  ret i64 255
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
