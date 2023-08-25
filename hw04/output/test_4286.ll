; generated from: hw4programs/lcs.oat
target triple = "x86_64-apple-macosx10.13.0"
@buf = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_string5512 = global [1 x i8] c"\00"
@_string5494 = global [7 x i8] c"TOMATO\00"
@_string5497 = global [8 x i8] c"ORATING\00"

define i8* @lcs(i64 %i, i64 %j, i8* %a, i8* %b) {
  %_i5503 = alloca i64
  %_j5504 = alloca i64
  %_a5505 = alloca i8*
  %_b5506 = alloca i8*
  %_5518 = alloca { i64, [0 x i64] }*
  %_5521 = alloca { i64, [0 x i64] }*
  %_5524 = alloca i64
  %_5529 = alloca i64
  %_5537 = alloca i8*
  %_5551 = alloca i8*
  %_5561 = alloca i8*
  %_5568 = alloca i8*
  %_5575 = alloca i64
  %_5578 = alloca i64
  store i64 %i, i64* %_i5503
  store i64 %j, i64* %_j5504
  store i8* %a, i8** %_a5505
  store i8* %b, i8** %_b5506
  br label %_begin_if5514
_begin_if5514:
  %_id_i5507 = load i64, i64* %_i5503
  %_bop5508 = icmp slt i64 %_id_i5507, 0
  %_id_j5509 = load i64, i64* %_j5504
  %_bop5510 = icmp slt i64 %_id_j5509, 0
  %_bop5511 = or i1 %_bop5508, %_bop5510
  br i1 %_bop5511, label %_then_branch5515, label %_else_branch5516
_then_branch5515:
  %_string15513 = getelementptr [1 x i8], [1 x i8]* @_string5512, i32 0, i32 0
  ret i8* %_string15513
_else_branch5516:
  br label %_end_if5517
_end_if5517:
  %_id_a5519 = load i8*, i8** %_a5505
  %_5520 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_a5519)
  store { i64, [0 x i64] }* %_5520, { i64, [0 x i64] }** %_5518
  %_id_b5522 = load i8*, i8** %_b5506
  %_5523 = call { i64, [0 x i64] }* @array_of_string(i8* %_id_b5522)
  store { i64, [0 x i64] }* %_5523, { i64, [0 x i64] }** %_5521
  %_id_a_chars5525 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5518
  %_id_i5526 = load i64, i64* %_i5503
  %_index_pointer5528 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a_chars5525, i32 0, i32 1, i64 %_id_i5526
  %_index_value5527 = load i64, i64* %_index_pointer5528
  store i64 %_index_value5527, i64* %_5524
  %_id_b_chars5530 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5521
  %_id_j5531 = load i64, i64* %_j5504
  %_index_pointer5533 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b_chars5530, i32 0, i32 1, i64 %_id_j5531
  %_index_value5532 = load i64, i64* %_index_pointer5533
  store i64 %_index_value5532, i64* %_5529
  br label %_begin_if5557
_begin_if5557:
  %_id_last_char_a5534 = load i64, i64* %_5524
  %_id_last_char_b5535 = load i64, i64* %_5529
  %_bop5536 = icmp eq i64 %_id_last_char_a5534, %_id_last_char_b5535
  br i1 %_bop5536, label %_then_branch5558, label %_else_branch5559
_then_branch5558:
  %_id_i5538 = load i64, i64* %_i5503
  %_bop5539 = sub i64 %_id_i5538, 1
  %_id_j5540 = load i64, i64* %_j5504
  %_bop5541 = sub i64 %_id_j5540, 1
  %_id_a5542 = load i8*, i8** %_a5505
  %_id_b5543 = load i8*, i8** %_b5506
  %_5544 = call i8* @lcs(i64 %_bop5539, i64 %_bop5541, i8* %_id_a5542, i8* %_id_b5543)
  store i8* %_5544, i8** %_5537
  %_id_a_chars5545 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5518
  %_id_i5546 = load i64, i64* %_i5503
  %_index_pointer5548 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a_chars5545, i32 0, i32 1, i64 %_id_i5546
  %_index_value5547 = load i64, i64* %_index_pointer5548
  %_id_buf5549 = bitcast { i64, [1 x i64] }* @buf to { i64, [0 x i64] }*
  %_5550 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_buf5549, i32 0, i32 1, i32 0
  store i64 %_index_value5547, i64* %_5550
  %_id_buf5552 = bitcast { i64, [1 x i64] }* @buf to { i64, [0 x i64] }*
  %_5553 = call i8* @string_of_array({ i64, [0 x i64] }* %_id_buf5552)
  store i8* %_5553, i8** %_5551
  %_id_prev_lcs5554 = load i8*, i8** %_5537
  %_id_next_char5555 = load i8*, i8** %_5551
  %_5556 = call i8* @string_cat(i8* %_id_prev_lcs5554, i8* %_id_next_char5555)
  ret i8* %_5556
_else_branch5559:
  br label %_end_if5560
_end_if5560:
  %_id_i5562 = load i64, i64* %_i5503
  %_id_j5563 = load i64, i64* %_j5504
  %_bop5564 = sub i64 %_id_j5563, 1
  %_id_a5565 = load i8*, i8** %_a5505
  %_id_b5566 = load i8*, i8** %_b5506
  %_5567 = call i8* @lcs(i64 %_id_i5562, i64 %_bop5564, i8* %_id_a5565, i8* %_id_b5566)
  store i8* %_5567, i8** %_5561
  %_id_i5569 = load i64, i64* %_i5503
  %_bop5570 = sub i64 %_id_i5569, 1
  %_id_j5571 = load i64, i64* %_j5504
  %_id_a5572 = load i8*, i8** %_a5505
  %_id_b5573 = load i8*, i8** %_b5506
  %_5574 = call i8* @lcs(i64 %_bop5570, i64 %_id_j5571, i8* %_id_a5572, i8* %_id_b5573)
  store i8* %_5574, i8** %_5568
  %_id_left_lcs5576 = load i8*, i8** %_5561
  %_5577 = call i64 @length_of_string(i8* %_id_left_lcs5576)
  store i64 %_5577, i64* %_5575
  %_id_right_lcs5579 = load i8*, i8** %_5568
  %_5580 = call i64 @length_of_string(i8* %_id_right_lcs5579)
  store i64 %_5580, i64* %_5578
  br label %_begin_if5586
_begin_if5586:
  %_id_left_len5581 = load i64, i64* %_5575
  %_id_right_len5582 = load i64, i64* %_5578
  %_bop5583 = icmp slt i64 %_id_left_len5581, %_id_right_len5582
  br i1 %_bop5583, label %_then_branch5587, label %_else_branch5588
_then_branch5587:
  %_id_right_lcs5584 = load i8*, i8** %_5568
  ret i8* %_id_right_lcs5584
_else_branch5588:
  %_id_left_lcs5585 = load i8*, i8** %_5561
  ret i8* %_id_left_lcs5585
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5491 = alloca i64
  %_argv5492 = alloca { i64, [0 x i8*] }*
  %_5493 = alloca i8*
  %_5496 = alloca i8*
  store i64 %argc, i64* %_argc5491
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5492
  %_string15495 = getelementptr [7 x i8], [7 x i8]* @_string5494, i32 0, i32 0
  store i8* %_string15495, i8** %_5493
  %_string15498 = getelementptr [8 x i8], [8 x i8]* @_string5497, i32 0, i32 0
  store i8* %_string15498, i8** %_5496
  %_id_tomato5499 = load i8*, i8** %_5493
  %_id_orating5500 = load i8*, i8** %_5496
  %_5501 = call i8* @lcs(i64 5, i64 6, i8* %_id_tomato5499, i8* %_id_orating5500)
  call void @print_string(i8* %_5501)
  ret i64 0
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
