; generated from: hw4programs/josh_joyce_test.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr1 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr2 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }

define i64 @arrcheck({ i64, [0 x i64] }* %ar1, { i64, [0 x i64] }* %ar2, i64 %len) {
  %_ar14640 = alloca { i64, [0 x i64] }*
  %_ar24641 = alloca { i64, [0 x i64] }*
  %_len4642 = alloca i64
  %_4643 = alloca i64
  %_4644 = alloca i64
  store { i64, [0 x i64] }* %ar1, { i64, [0 x i64] }** %_ar14640
  store { i64, [0 x i64] }* %ar2, { i64, [0 x i64] }** %_ar24641
  store i64 %len, i64* %_len4642
  store i64 0, i64* %_4643
  store i64 0, i64* %_4644
  br label %_start4663
_start4663:
  %_id_len4646 = load i64, i64* %_len4642
  %_id_i4645 = load i64, i64* %_4644
  %_4647 = icmp slt i64 %_id_i4645, %_id_len4646
  br i1 %_4647, label %_body4664, label %_else4665
_body4664:
  br label %_start4657
_start4657:
  %_id_ar24652 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar24641
  %_id_i4653 = load i64, i64* %_4644
  %_index_pointer4654 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_ar24652, i32 0, i32 1, i64 %_id_i4653
  %_index_value4655 = load i64, i64* %_index_pointer4654
  %_id_ar14648 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar14640
  %_id_i4649 = load i64, i64* %_4644
  %_index_pointer4650 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_ar14648, i32 0, i32 1, i64 %_id_i4649
  %_index_value4651 = load i64, i64* %_index_pointer4650
  %_4656 = icmp ne i64 %_index_value4651, %_index_value4655
  br i1 %_4656, label %_then4658, label %_else4659
_then4658:
  store i64 1, i64* %_4643
  br label %_post4660
_else4659:
  br label %_post4660
_post4660:
  %_id_i4661 = load i64, i64* %_4644
  %_4662 = add i64 %_id_i4661, 1
  store i64 %_4662, i64* %_4644
  br label %_start4663
_else4665:
  %_id_val4666 = load i64, i64* %_4643
  ret i64 %_id_val4666
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4628 = alloca i64
  %_argv4629 = alloca { i64, [0 x i8*] }*
  %_4630 = alloca i64
  store i64 %argc, i64* %_argc4628
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4629
  store i64 1, i64* %_4630
  br label %_start4635
_start4635:
  %_id_arr14631 = bitcast { i64, [4 x i64] }* @arr1 to { i64, [0 x i64] }*
  %_id_arr24632 = bitcast { i64, [4 x i64] }* @arr2 to { i64, [0 x i64] }*
  %_4633 = call i64 @arrcheck({ i64, [0 x i64] }* %_id_arr14631, { i64, [0 x i64] }* %_id_arr24632, i64 4)
  %_4634 = icmp eq i64 %_4633, 1
  br i1 %_4634, label %_then4636, label %_else4637
_then4636:
  store i64 0, i64* %_4630
  br label %_post4638
_else4637:
  br label %_post4638
_post4638:
  %_id_val4639 = load i64, i64* %_4630
  ret i64 %_id_val4639
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
