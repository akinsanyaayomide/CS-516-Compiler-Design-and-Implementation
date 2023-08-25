; generated from: hw4programs/binary_gcd.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_x2378 = alloca i64
  %_y2379 = alloca i64
  store i64 %x, i64* %_x2378
  store i64 %y, i64* %_y2379
  br label %_start2384
_start2384:
  %_id_y2381 = load i64, i64* %_y2379
  %_id_x2380 = load i64, i64* %_x2378
  %_2382 = icmp eq i64 %_id_x2380, %_id_y2381
  br i1 %_2382, label %_then2385, label %_else2386
_then2385:
  %_id_x2383 = load i64, i64* %_x2378
  ret i64 %_id_x2383
_else2386:
  br label %_post2387
_post2387:
  br label %_start2391
_start2391:
  %_id_x2388 = load i64, i64* %_x2378
  %_2389 = icmp eq i64 %_id_x2388, 0
  br i1 %_2389, label %_then2392, label %_else2393
_then2392:
  %_id_y2390 = load i64, i64* %_y2379
  ret i64 %_id_y2390
_else2393:
  br label %_post2394
_post2394:
  br label %_start2398
_start2398:
  %_id_y2395 = load i64, i64* %_y2379
  %_2396 = icmp eq i64 %_id_y2395, 0
  br i1 %_2396, label %_then2399, label %_else2400
_then2399:
  %_id_x2397 = load i64, i64* %_x2378
  ret i64 %_id_x2397
_else2400:
  br label %_post2401
_post2401:
  br label %_start2423
_start2423:
  %_id_x2402 = load i64, i64* %_x2378
  %_unop2403 = xor i64 %_id_x2402, -1
  %_2404 = and i64 %_unop2403, 1
  %_2405 = icmp eq i64 %_2404, 1
  br i1 %_2405, label %_then2424, label %_else2425
_then2424:
  br label %_start2419
_start2419:
  %_id_y2406 = load i64, i64* %_y2379
  %_2407 = and i64 %_id_y2406, 1
  %_2408 = icmp eq i64 %_2407, 1
  br i1 %_2408, label %_then2420, label %_else2421
_then2420:
  %_id_x2409 = load i64, i64* %_x2378
  %_2410 = lshr i64 %_id_x2409, 1
  %_id_y2411 = load i64, i64* %_y2379
  %_2412 = call i64 @binary_gcd(i64 %_2410, i64 %_id_y2411)
  ret i64 %_2412
_else2421:
  %_id_x2413 = load i64, i64* %_x2378
  %_2414 = lshr i64 %_id_x2413, 1
  %_id_y2415 = load i64, i64* %_y2379
  %_2416 = lshr i64 %_id_y2415, 1
  %_2417 = call i64 @binary_gcd(i64 %_2414, i64 %_2416)
  %_2418 = shl i64 %_2417, 1
  ret i64 %_2418
_post2422:
  br label %_post2426
_else2425:
  br label %_post2426
_post2426:
  br label %_start2435
_start2435:
  %_id_y2427 = load i64, i64* %_y2379
  %_unop2428 = xor i64 %_id_y2427, -1
  %_2429 = and i64 %_unop2428, 1
  %_2430 = icmp eq i64 %_2429, 1
  br i1 %_2430, label %_then2436, label %_else2437
_then2436:
  %_id_x2431 = load i64, i64* %_x2378
  %_id_y2432 = load i64, i64* %_y2379
  %_2433 = lshr i64 %_id_y2432, 1
  %_2434 = call i64 @binary_gcd(i64 %_id_x2431, i64 %_2433)
  ret i64 %_2434
_else2437:
  br label %_post2438
_post2438:
  br label %_start2448
_start2448:
  %_id_y2440 = load i64, i64* %_y2379
  %_id_x2439 = load i64, i64* %_x2378
  %_2441 = icmp sgt i64 %_id_x2439, %_id_y2440
  br i1 %_2441, label %_then2449, label %_else2450
_then2449:
  %_id_y2443 = load i64, i64* %_y2379
  %_id_x2442 = load i64, i64* %_x2378
  %_2444 = sub i64 %_id_x2442, %_id_y2443
  %_2445 = lshr i64 %_2444, 1
  %_id_y2446 = load i64, i64* %_y2379
  %_2447 = call i64 @binary_gcd(i64 %_2445, i64 %_id_y2446)
  ret i64 %_2447
_else2450:
  br label %_post2451
_post2451:
  %_id_x2453 = load i64, i64* %_x2378
  %_id_y2452 = load i64, i64* %_y2379
  %_2454 = sub i64 %_id_y2452, %_id_x2453
  %_2455 = lshr i64 %_2454, 1
  %_id_x2456 = load i64, i64* %_x2378
  %_2457 = call i64 @binary_gcd(i64 %_2455, i64 %_id_x2456)
  ret i64 %_2457
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2371 = alloca i64
  %_argv2372 = alloca { i64, [0 x i8*] }*
  %_2373 = alloca i64
  %_2374 = alloca i64
  store i64 %argc, i64* %_argc2371
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2372
  store i64 21, i64* %_2373
  store i64 15, i64* %_2374
  %_id_x2375 = load i64, i64* %_2373
  %_id_y2376 = load i64, i64* %_2374
  %_2377 = call i64 @binary_gcd(i64 %_id_x2375, i64 %_id_y2376)
  ret i64 %_2377
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
