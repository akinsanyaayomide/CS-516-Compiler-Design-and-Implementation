; generated from: hw4programs/gnomesort.oat
target triple = "x86_64-apple-macosx10.13.0"
define void @gnomeSort({ i64, [0 x i64] }* %a, i64 %len) {
  %_a39 = alloca { i64, [0 x i64] }*
  %_len40 = alloca i64
  %_41 = alloca i64
  %_42 = alloca i64
  %_59 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a39
  store i64 %len, i64* %_len40
  store i64 1, i64* %_41
  store i64 2, i64* %_42
  br label %_start92
_start92:
  %_id_len44 = load i64, i64* %_len40
  %_id_i43 = load i64, i64* %_41
  %_45 = icmp slt i64 %_id_i43, %_id_len44
  br i1 %_45, label %_body93, label %_else94
_body93:
  br label %_start88
_start88:
  %_id_a51 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a39
  %_id_i52 = load i64, i64* %_41
  %_index_pointer53 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a51, i32 0, i32 1, i64 %_id_i52
  %_index_value54 = load i64, i64* %_index_pointer53
  %_id_a46 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a39
  %_id_i47 = load i64, i64* %_41
  %_48 = sub i64 %_id_i47, 1
  %_index_pointer49 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a46, i32 0, i32 1, i64 %_48
  %_index_value50 = load i64, i64* %_index_pointer49
  %_55 = icmp sle i64 %_index_value50, %_index_value54
  br i1 %_55, label %_then89, label %_else90
_then89:
  %_id_j56 = load i64, i64* %_42
  store i64 %_id_j56, i64* %_41
  %_id_j57 = load i64, i64* %_42
  %_58 = add i64 %_id_j57, 1
  store i64 %_58, i64* %_42
  br label %_post91
_else90:
  %_id_a60 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a39
  %_id_i61 = load i64, i64* %_41
  %_62 = sub i64 %_id_i61, 1
  %_index_pointer63 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a60, i32 0, i32 1, i64 %_62
  %_index_value64 = load i64, i64* %_index_pointer63
  store i64 %_index_value64, i64* %_59
  %_id_a65 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a39
  %_id_i66 = load i64, i64* %_41
  %_index_pointer67 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a65, i32 0, i32 1, i64 %_id_i66
  %_index_value68 = load i64, i64* %_index_pointer67
  %_id_a69 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a39
  %_id_i70 = load i64, i64* %_41
  %_71 = sub i64 %_id_i70, 1
  %_72 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a69, i32 0, i32 1, i64 %_71
  store i64 %_index_value68, i64* %_72
  %_id_tmp73 = load i64, i64* %_59
  %_id_a74 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a39
  %_id_i75 = load i64, i64* %_41
  %_76 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a74, i32 0, i32 1, i64 %_id_i75
  store i64 %_id_tmp73, i64* %_76
  %_id_i77 = load i64, i64* %_41
  %_78 = sub i64 %_id_i77, 1
  store i64 %_78, i64* %_41
  br label %_start84
_start84:
  %_id_i79 = load i64, i64* %_41
  %_80 = icmp eq i64 %_id_i79, 0
  br i1 %_80, label %_then85, label %_else86
_then85:
  %_id_j81 = load i64, i64* %_42
  store i64 %_id_j81, i64* %_41
  %_id_j82 = load i64, i64* %_42
  %_83 = add i64 %_id_j82, 1
  store i64 %_83, i64* %_42
  br label %_post87
_else86:
  br label %_post87
_post87:
  br label %_post91
_post91:
  br label %_start92
_else94:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1 = alloca i64
  %_argv2 = alloca { i64, [0 x i8*] }*
  %_3 = alloca { i64, [0 x i64] }*
  %_22 = alloca i64
  %_26 = alloca i64
  store i64 %argc, i64* %_argc1
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2
  %_raw_array4 = call i64* @oat_alloc_array(i64 8)
  %_array5 = bitcast i64* %_raw_array4 to { i64, [0 x i64] }*
  %_20 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5, i32 0, i32 1, i32 7
  store i64 0, i64* %_20
  %_18 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5, i32 0, i32 1, i32 6
  store i64 2, i64* %_18
  %_16 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5, i32 0, i32 1, i32 5
  store i64 99, i64* %_16
  %_14 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5, i32 0, i32 1, i32 4
  store i64 30, i64* %_14
  %_12 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5, i32 0, i32 1, i32 3
  store i64 65, i64* %_12
  %_10 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5, i32 0, i32 1, i32 2
  store i64 1, i64* %_10
  %_8 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5, i32 0, i32 1, i32 1
  store i64 200, i64* %_8
  %_6 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5, i32 0, i32 1, i32 0
  store i64 5, i64* %_6
  store { i64, [0 x i64] }* %_array5, { i64, [0 x i64] }** %_3
  store i64 8, i64* %_22
  %_id_arr23 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3
  %_id_len24 = load i64, i64* %_22
  call void @gnomeSort({ i64, [0 x i64] }* %_id_arr23, i64 %_id_len24)
  store i64 0, i64* %_26
  br label %_start36
_start36:
  %_id_i27 = load i64, i64* %_26
  %_28 = icmp slt i64 %_id_i27, 8
  br i1 %_28, label %_body37, label %_else38
_body37:
  %_id_arr29 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3
  %_id_i30 = load i64, i64* %_26
  %_index_pointer31 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr29, i32 0, i32 1, i64 %_id_i30
  %_index_value32 = load i64, i64* %_index_pointer31
  call void @print_int(i64 %_index_value32)
  %_id_i34 = load i64, i64* %_26
  %_35 = add i64 %_id_i34, 1
  store i64 %_35, i64* %_26
  br label %_start36
_else38:
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
