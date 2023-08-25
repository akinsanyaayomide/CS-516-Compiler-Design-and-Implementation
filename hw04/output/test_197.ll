; generated from: hw4programs/life.oat
target triple = "x86_64-apple-macosx10.13.0"
@len = global i64 4

define i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j, i64 %count) {
  %_board4666 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i4667 = alloca i64
  %_j4668 = alloca i64
  %_count4669 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_board4666
  store i64 %i, i64* %_i4667
  store i64 %j, i64* %_j4668
  store i64 %count, i64* %_count4669
  br label %_start4693
_start4693:
  %_id_len4680 = load i64, i64* @len
  %_id_j4679 = load i64, i64* %_j4668
  %_4681 = icmp slt i64 %_id_j4679, %_id_len4680
  %_id_len4676 = load i64, i64* @len
  %_id_i4675 = load i64, i64* %_i4667
  %_4677 = icmp slt i64 %_id_i4675, %_id_len4676
  %_id_j4672 = load i64, i64* %_j4668
  %_4673 = icmp sge i64 %_id_j4672, 0
  %_id_i4670 = load i64, i64* %_i4667
  %_4671 = icmp sge i64 %_id_i4670, 0
  %_4674 = and i1 %_4671, %_4673
  %_4678 = and i1 %_4674, %_4677
  %_4682 = and i1 %_4678, %_4681
  br i1 %_4682, label %_then4694, label %_else4695
_then4694:
  %_id_board4684 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4666
  %_id_i4685 = load i64, i64* %_i4667
  %_index_pointer4686 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_board4684, i32 0, i32 1, i64 %_id_i4685
  %_index_value4687 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer4686
  %_id_j4688 = load i64, i64* %_j4668
  %_index_pointer4689 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value4687, i32 0, i32 1, i64 %_id_j4688
  %_index_value4690 = load i64, i64* %_index_pointer4689
  %_id_count4683 = load i64, i64* %_count4669
  %_4691 = add i64 %_id_count4683, %_index_value4690
  ret i64 %_4691
_else4695:
  %_id_count4692 = load i64, i64* %_count4669
  ret i64 %_id_count4692
}

define i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j) {
  %_board4578 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i4579 = alloca i64
  %_j4580 = alloca i64
  %_4581 = alloca i64
  %_4589 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_board4578
  store i64 %i, i64* %_i4579
  store i64 %j, i64* %_j4580
  %_id_board4582 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4578
  %_id_i4583 = load i64, i64* %_i4579
  %_index_pointer4584 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_board4582, i32 0, i32 1, i64 %_id_i4583
  %_index_value4585 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer4584
  %_id_j4586 = load i64, i64* %_j4580
  %_index_pointer4587 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value4585, i32 0, i32 1, i64 %_id_j4586
  %_index_value4588 = load i64, i64* %_index_pointer4587
  store i64 %_index_value4588, i64* %_4581
  store i64 0, i64* %_4589
  %_id_board4590 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4578
  %_id_i4591 = load i64, i64* %_i4579
  %_4592 = sub i64 %_id_i4591, 1
  %_id_j4593 = load i64, i64* %_j4580
  %_4594 = sub i64 %_id_j4593, 1
  %_id_count4595 = load i64, i64* %_4589
  %_4596 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4590, i64 %_4592, i64 %_4594, i64 %_id_count4595)
  store i64 %_4596, i64* %_4589
  %_id_board4597 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4578
  %_id_i4598 = load i64, i64* %_i4579
  %_4599 = sub i64 %_id_i4598, 1
  %_id_j4600 = load i64, i64* %_j4580
  %_id_count4601 = load i64, i64* %_4589
  %_4602 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4597, i64 %_4599, i64 %_id_j4600, i64 %_id_count4601)
  store i64 %_4602, i64* %_4589
  %_id_board4603 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4578
  %_id_i4604 = load i64, i64* %_i4579
  %_4605 = sub i64 %_id_i4604, 1
  %_id_j4606 = load i64, i64* %_j4580
  %_4607 = add i64 %_id_j4606, 1
  %_id_count4608 = load i64, i64* %_4589
  %_4609 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4603, i64 %_4605, i64 %_4607, i64 %_id_count4608)
  store i64 %_4609, i64* %_4589
  %_id_board4610 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4578
  %_id_i4611 = load i64, i64* %_i4579
  %_id_j4612 = load i64, i64* %_j4580
  %_4613 = sub i64 %_id_j4612, 1
  %_id_count4614 = load i64, i64* %_4589
  %_4615 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4610, i64 %_id_i4611, i64 %_4613, i64 %_id_count4614)
  store i64 %_4615, i64* %_4589
  %_id_board4616 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4578
  %_id_i4617 = load i64, i64* %_i4579
  %_id_j4618 = load i64, i64* %_j4580
  %_4619 = add i64 %_id_j4618, 1
  %_id_count4620 = load i64, i64* %_4589
  %_4621 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4616, i64 %_id_i4617, i64 %_4619, i64 %_id_count4620)
  store i64 %_4621, i64* %_4589
  %_id_board4622 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4578
  %_id_i4623 = load i64, i64* %_i4579
  %_4624 = add i64 %_id_i4623, 1
  %_id_j4625 = load i64, i64* %_j4580
  %_4626 = sub i64 %_id_j4625, 1
  %_id_count4627 = load i64, i64* %_4589
  %_4628 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4622, i64 %_4624, i64 %_4626, i64 %_id_count4627)
  store i64 %_4628, i64* %_4589
  %_id_board4629 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4578
  %_id_i4630 = load i64, i64* %_i4579
  %_4631 = add i64 %_id_i4630, 1
  %_id_j4632 = load i64, i64* %_j4580
  %_id_count4633 = load i64, i64* %_4589
  %_4634 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4629, i64 %_4631, i64 %_id_j4632, i64 %_id_count4633)
  store i64 %_4634, i64* %_4589
  %_id_board4635 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4578
  %_id_i4636 = load i64, i64* %_i4579
  %_4637 = add i64 %_id_i4636, 1
  %_id_j4638 = load i64, i64* %_j4580
  %_4639 = add i64 %_id_j4638, 1
  %_id_count4640 = load i64, i64* %_4589
  %_4641 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4635, i64 %_4637, i64 %_4639, i64 %_id_count4640)
  store i64 %_4641, i64* %_4589
  br label %_start4656
_start4656:
  %_id_alive4642 = load i64, i64* %_4581
  %_4643 = icmp eq i64 %_id_alive4642, 1
  br i1 %_4643, label %_then4657, label %_else4658
_then4657:
  br label %_start4652
_start4652:
  %_id_count4644 = load i64, i64* %_4589
  %_4645 = icmp slt i64 %_id_count4644, 2
  br i1 %_4645, label %_then4653, label %_else4654
_then4653:
  ret i64 0
_else4654:
  br label %_start4648
_start4648:
  %_id_count4646 = load i64, i64* %_4589
  %_4647 = icmp slt i64 %_id_count4646, 4
  br i1 %_4647, label %_then4649, label %_else4650
_then4649:
  ret i64 1
_else4650:
  br label %_post4651
_post4651:
  br label %_post4655
_post4655:
  ret i64 0
_else4658:
  br label %_post4659
_post4659:
  br label %_start4662
_start4662:
  %_id_count4660 = load i64, i64* %_4589
  %_4661 = icmp eq i64 %_id_count4660, 3
  br i1 %_4661, label %_then4663, label %_else4664
_then4663:
  ret i64 1
_else4664:
  ret i64 0
_post4665:
  ret i64 0
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4417 = alloca i64
  %_argv4418 = alloca { i64, [0 x i8*] }*
  %_4419 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_4470 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_4521 = alloca i64
  %_4529 = alloca i64
  %_4552 = alloca i64
  %_4556 = alloca i64
  store i64 %argc, i64* %_argc4417
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4418
  %_raw_array4452 = call i64* @oat_alloc_array(i64 4)
  %_array4453 = bitcast i64* %_raw_array4452 to { i64, [0 x i64] }*
  %_4460 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4453, i32 0, i32 1, i32 3
  store i64 0, i64* %_4460
  %_4458 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4453, i32 0, i32 1, i32 2
  store i64 0, i64* %_4458
  %_4456 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4453, i32 0, i32 1, i32 1
  store i64 0, i64* %_4456
  %_4454 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4453, i32 0, i32 1, i32 0
  store i64 0, i64* %_4454
  %_raw_array4442 = call i64* @oat_alloc_array(i64 4)
  %_array4443 = bitcast i64* %_raw_array4442 to { i64, [0 x i64] }*
  %_4450 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4443, i32 0, i32 1, i32 3
  store i64 0, i64* %_4450
  %_4448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4443, i32 0, i32 1, i32 2
  store i64 1, i64* %_4448
  %_4446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4443, i32 0, i32 1, i32 1
  store i64 1, i64* %_4446
  %_4444 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4443, i32 0, i32 1, i32 0
  store i64 1, i64* %_4444
  %_raw_array4432 = call i64* @oat_alloc_array(i64 4)
  %_array4433 = bitcast i64* %_raw_array4432 to { i64, [0 x i64] }*
  %_4440 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4433, i32 0, i32 1, i32 3
  store i64 1, i64* %_4440
  %_4438 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4433, i32 0, i32 1, i32 2
  store i64 1, i64* %_4438
  %_4436 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4433, i32 0, i32 1, i32 1
  store i64 1, i64* %_4436
  %_4434 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4433, i32 0, i32 1, i32 0
  store i64 0, i64* %_4434
  %_raw_array4422 = call i64* @oat_alloc_array(i64 4)
  %_array4423 = bitcast i64* %_raw_array4422 to { i64, [0 x i64] }*
  %_4430 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4423, i32 0, i32 1, i32 3
  store i64 0, i64* %_4430
  %_4428 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4423, i32 0, i32 1, i32 2
  store i64 0, i64* %_4428
  %_4426 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4423, i32 0, i32 1, i32 1
  store i64 0, i64* %_4426
  %_4424 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4423, i32 0, i32 1, i32 0
  store i64 0, i64* %_4424
  %_raw_array4420 = call i64* @oat_alloc_array(i64 4)
  %_array4421 = bitcast i64* %_raw_array4420 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_4468 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4421, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4453, { i64, [0 x i64] }** %_4468
  %_4466 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4421, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4443, { i64, [0 x i64] }** %_4466
  %_4464 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4421, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4433, { i64, [0 x i64] }** %_4464
  %_4462 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4421, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4423, { i64, [0 x i64] }** %_4462
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4421, { i64, [0 x { i64, [0 x i64] }*] }** %_4419
  %_raw_array4503 = call i64* @oat_alloc_array(i64 4)
  %_array4504 = bitcast i64* %_raw_array4503 to { i64, [0 x i64] }*
  %_4511 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4504, i32 0, i32 1, i32 3
  store i64 0, i64* %_4511
  %_4509 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4504, i32 0, i32 1, i32 2
  store i64 0, i64* %_4509
  %_4507 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4504, i32 0, i32 1, i32 1
  store i64 0, i64* %_4507
  %_4505 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4504, i32 0, i32 1, i32 0
  store i64 0, i64* %_4505
  %_raw_array4493 = call i64* @oat_alloc_array(i64 4)
  %_array4494 = bitcast i64* %_raw_array4493 to { i64, [0 x i64] }*
  %_4501 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4494, i32 0, i32 1, i32 3
  store i64 0, i64* %_4501
  %_4499 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4494, i32 0, i32 1, i32 2
  store i64 0, i64* %_4499
  %_4497 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4494, i32 0, i32 1, i32 1
  store i64 0, i64* %_4497
  %_4495 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4494, i32 0, i32 1, i32 0
  store i64 0, i64* %_4495
  %_raw_array4483 = call i64* @oat_alloc_array(i64 4)
  %_array4484 = bitcast i64* %_raw_array4483 to { i64, [0 x i64] }*
  %_4491 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4484, i32 0, i32 1, i32 3
  store i64 0, i64* %_4491
  %_4489 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4484, i32 0, i32 1, i32 2
  store i64 0, i64* %_4489
  %_4487 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4484, i32 0, i32 1, i32 1
  store i64 0, i64* %_4487
  %_4485 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4484, i32 0, i32 1, i32 0
  store i64 0, i64* %_4485
  %_raw_array4473 = call i64* @oat_alloc_array(i64 4)
  %_array4474 = bitcast i64* %_raw_array4473 to { i64, [0 x i64] }*
  %_4481 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4474, i32 0, i32 1, i32 3
  store i64 0, i64* %_4481
  %_4479 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4474, i32 0, i32 1, i32 2
  store i64 0, i64* %_4479
  %_4477 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4474, i32 0, i32 1, i32 1
  store i64 0, i64* %_4477
  %_4475 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4474, i32 0, i32 1, i32 0
  store i64 0, i64* %_4475
  %_raw_array4471 = call i64* @oat_alloc_array(i64 4)
  %_array4472 = bitcast i64* %_raw_array4471 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_4519 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4472, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4504, { i64, [0 x i64] }** %_4519
  %_4517 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4472, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4494, { i64, [0 x i64] }** %_4517
  %_4515 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4472, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4484, { i64, [0 x i64] }** %_4515
  %_4513 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4472, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4474, { i64, [0 x i64] }** %_4513
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4472, { i64, [0 x { i64, [0 x i64] }*] }** %_4470
  store i64 0, i64* %_4521
  br label %_start4549
_start4549:
  %_id_i4522 = load i64, i64* %_4521
  %_4523 = icmp slt i64 %_id_i4522, 4
  br i1 %_4523, label %_body4550, label %_else4551
_body4550:
  %_raw_array4524 = call i64* @oat_alloc_array(i64 4)
  %_array4525 = bitcast i64* %_raw_array4524 to { i64, [0 x i64] }*
  %_id_new_board4526 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4470
  %_id_i4527 = load i64, i64* %_4521
  %_4528 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_new_board4526, i32 0, i32 1, i64 %_id_i4527
  store { i64, [0 x i64] }* %_array4525, { i64, [0 x i64] }** %_4528
  store i64 0, i64* %_4529
  br label %_start4544
_start4544:
  %_id_j4530 = load i64, i64* %_4529
  %_4531 = icmp slt i64 %_id_j4530, 4
  br i1 %_4531, label %_body4545, label %_else4546
_body4545:
  %_id_board4532 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4419
  %_id_i4533 = load i64, i64* %_4521
  %_id_j4534 = load i64, i64* %_4529
  %_4535 = call i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_id_board4532, i64 %_id_i4533, i64 %_id_j4534)
  %_id_new_board4536 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4470
  %_id_i4537 = load i64, i64* %_4521
  %_index_pointer4538 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_new_board4536, i32 0, i32 1, i64 %_id_i4537
  %_index_value4539 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer4538
  %_id_j4540 = load i64, i64* %_4529
  %_4541 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value4539, i32 0, i32 1, i64 %_id_j4540
  store i64 %_4535, i64* %_4541
  %_id_j4542 = load i64, i64* %_4529
  %_4543 = add i64 %_id_j4542, 1
  store i64 %_4543, i64* %_4529
  br label %_start4544
_else4546:
  %_id_i4547 = load i64, i64* %_4521
  %_4548 = add i64 %_id_i4547, 1
  store i64 %_4548, i64* %_4521
  br label %_start4549
_else4551:
  store i64 0, i64* %_4552
  br label %_start4575
_start4575:
  %_id_len4554 = load i64, i64* @len
  %_id_i4553 = load i64, i64* %_4552
  %_4555 = icmp slt i64 %_id_i4553, %_id_len4554
  br i1 %_4555, label %_body4576, label %_else4577
_body4576:
  store i64 0, i64* %_4556
  br label %_start4570
_start4570:
  %_id_len4558 = load i64, i64* @len
  %_id_j4557 = load i64, i64* %_4556
  %_4559 = icmp slt i64 %_id_j4557, %_id_len4558
  br i1 %_4559, label %_body4571, label %_else4572
_body4571:
  %_id_new_board4560 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4470
  %_id_i4561 = load i64, i64* %_4552
  %_index_pointer4562 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_new_board4560, i32 0, i32 1, i64 %_id_i4561
  %_index_value4563 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer4562
  %_id_j4564 = load i64, i64* %_4556
  %_index_pointer4565 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value4563, i32 0, i32 1, i64 %_id_j4564
  %_index_value4566 = load i64, i64* %_index_pointer4565
  call void @print_int(i64 %_index_value4566)
  %_id_j4568 = load i64, i64* %_4556
  %_4569 = add i64 %_id_j4568, 1
  store i64 %_4569, i64* %_4556
  br label %_start4570
_else4572:
  %_id_i4573 = load i64, i64* %_4552
  %_4574 = add i64 %_id_i4573, 1
  store i64 %_4574, i64* %_4552
  br label %_start4575
_else4577:
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
