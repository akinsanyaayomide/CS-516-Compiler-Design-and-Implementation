; generated from: hw4programs/run47.oat
target triple = "x86_64-apple-macosx10.13.0"
@a = global i64 1

define i64 @f() {
  %_id_a2697 = load i64, i64* @a
  %_bop2698 = add i64 %_id_a2697, 1
  store i64 %_bop2698, i64* @a
  %_id_a2699 = load i64, i64* @a
  ret i64 %_id_a2699
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2678 = alloca i64
  %_argv2679 = alloca { i64, [0 x i8*] }*
  %_2680 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2678
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2679
  %_2681 = call i64 @f()
  %_raw_array2682 = call i64* @oat_alloc_array(i64 %_2681)
  %_array2683 = bitcast i64* %_raw_array2682 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2683, { i64, [0 x i64] }** %_2680
  %_id_b2684 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2680
  %_2685 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2684, i32 0, i32 1, i32 0
  store i64 0, i64* %_2685
  %_id_b2686 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2680
  %_2687 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2686, i32 0, i32 1, i32 1
  store i64 1, i64* %_2687
  %_id_a2688 = load i64, i64* @a
  %_id_b2689 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2680
  %_index_pointer2691 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2689, i32 0, i32 1, i32 0
  %_index_value2690 = load i64, i64* %_index_pointer2691
  %_bop2692 = add i64 %_id_a2688, %_index_value2690
  %_id_b2693 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2680
  %_index_pointer2695 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2693, i32 0, i32 1, i32 1
  %_index_value2694 = load i64, i64* %_index_pointer2695
  %_bop2696 = add i64 %_bop2692, %_index_value2694
  ret i64 %_bop2696
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
