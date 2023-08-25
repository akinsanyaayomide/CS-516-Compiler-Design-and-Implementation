; generated from: hw4programs/run48.oat
target triple = "x86_64-apple-macosx10.13.0"
@a = global i64 1

define i64 @f() {
  %_id_a2721 = load i64, i64* @a
  %_bop2722 = add i64 %_id_a2721, 1
  store i64 %_bop2722, i64* @a
  %_id_a2723 = load i64, i64* @a
  ret i64 %_id_a2723
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2700 = alloca i64
  %_argv2701 = alloca { i64, [0 x i8*] }*
  %_2702 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2700
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2701
  %_2703 = call i64 @f()
  %_raw_array2704 = call i64* @oat_alloc_array(i64 %_2703)
  %_array2705 = bitcast i64* %_raw_array2704 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2705, { i64, [0 x i64] }** %_2702
  %_2706 = call i64 @f()
  %_id_b2707 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2702
  %_2708 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2707, i32 0, i32 1, i32 0
  store i64 %_2706, i64* %_2708
  %_2709 = call i64 @f()
  %_id_b2710 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2702
  %_2711 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2710, i32 0, i32 1, i32 1
  store i64 %_2709, i64* %_2711
  %_id_a2712 = load i64, i64* @a
  %_id_b2713 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2702
  %_index_pointer2715 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2713, i32 0, i32 1, i32 0
  %_index_value2714 = load i64, i64* %_index_pointer2715
  %_bop2716 = add i64 %_id_a2712, %_index_value2714
  %_id_b2717 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2702
  %_index_pointer2719 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_b2717, i32 0, i32 1, i32 1
  %_index_value2718 = load i64, i64* %_index_pointer2719
  %_bop2720 = add i64 %_bop2716, %_index_value2718
  ret i64 %_bop2720
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
