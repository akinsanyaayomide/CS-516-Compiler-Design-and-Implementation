; generated from: hw4programs/josh_joyce_test.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr1 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr2 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }

define i64 @arrcheck({ i64, [0 x i64] }* %ar1, { i64, [0 x i64] }* %ar2, i64 %len) {
  %_ar14633 = alloca { i64, [0 x i64] }*
  %_ar24634 = alloca { i64, [0 x i64] }*
  %_len4635 = alloca i64
  %_4636 = alloca i64
  %_4637 = alloca i64
  store { i64, [0 x i64] }* %ar1, { i64, [0 x i64] }** %_ar14633
  store { i64, [0 x i64] }* %ar2, { i64, [0 x i64] }** %_ar24634
  store i64 %len, i64* %_len4635
  store i64 0, i64* %_4636
  store i64 0, i64* %_4637
  br label %_cond4657
_cond4657:
  %_id_i4638 = load i64, i64* %_4637
  %_id_len4639 = load i64, i64* %_len4635
  %_bop4640 = icmp slt i64 %_id_i4638, %_id_len4639
  br i1 %_bop4640, label %_if4656, label %_merge4658
_if4656:
  br label %_begin_if4650
_begin_if4650:
  %_id_ar14641 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar14633
  %_id_i4642 = load i64, i64* %_4637
  %_index_pointer4643 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_ar14641, i32 0, i32 1, i64 %_id_i4642
  %_index_value4644 = load i64, i64* %_index_pointer4643
  %_id_ar24645 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar24634
  %_id_i4646 = load i64, i64* %_4637
  %_index_pointer4647 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_ar24645, i32 0, i32 1, i64 %_id_i4646
  %_index_value4648 = load i64, i64* %_index_pointer4647
  %_bop4649 = icmp ne i64 %_index_value4644, %_index_value4648
  br i1 %_bop4649, label %_then_branch4651, label %_else_branch4652
_then_branch4651:
  store i64 1, i64* %_4636
  br label %_end_if4653
_else_branch4652:
  br label %_end_if4653
_end_if4653:
  %_id_i4654 = load i64, i64* %_4637
  %_bop4655 = add i64 %_id_i4654, 1
  store i64 %_bop4655, i64* %_4637
  br label %_cond4657
_merge4658:
  %_id_val4659 = load i64, i64* %_4636
  ret i64 %_id_val4659
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4621 = alloca i64
  %_argv4622 = alloca { i64, [0 x i8*] }*
  %_4623 = alloca i64
  store i64 %argc, i64* %_argc4621
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4622
  store i64 1, i64* %_4623
  br label %_begin_if4628
_begin_if4628:
  %_id_arr14624 = bitcast { i64, [4 x i64] }* @arr1 to { i64, [0 x i64] }*
  %_id_arr24625 = bitcast { i64, [4 x i64] }* @arr2 to { i64, [0 x i64] }*
  %_4626 = call i64 @arrcheck({ i64, [0 x i64] }* %_id_arr14624, { i64, [0 x i64] }* %_id_arr24625, i64 4)
  %_bop4627 = icmp eq i64 %_4626, 1
  br i1 %_bop4627, label %_then_branch4629, label %_else_branch4630
_then_branch4629:
  store i64 0, i64* %_4623
  br label %_end_if4631
_else_branch4630:
  br label %_end_if4631
_end_if4631:
  %_id_val4632 = load i64, i64* %_4623
  ret i64 %_id_val4632
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
