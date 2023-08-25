; generated from: hw4programs/lfsr.oat
target triple = "x86_64-apple-macosx10.13.0"
@lfsr_iterations = global i64 5
@lfsr_length = global i64 4
@lfsr_init_values = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 1, i1 0, i1 1, i1 0 ] }
@_raw_string94 = global [2 x i8] c"T\00"
@_raw_string96 = global [2 x i8] c"F\00"
@_raw_string69 = global [2 x i8] c" \00"

define i1 @xor(i1 %x, i1 %y) {
  %_x101 = alloca i1
  %_y102 = alloca i1
  store i1 %x, i1* %_x101
  store i1 %y, i1* %_y102
  %_id_y109 = load i1, i1* %_y102
  %_id_x107 = load i1, i1* %_x101
  %_108 = and i1 %_id_x107, 0
  %_110 = and i1 %_108, %_id_y109
  %_id_y104 = load i1, i1* %_y102
  %_105 = and i1 %_id_y104, 0
  %_id_x103 = load i1, i1* %_x101
  %_106 = and i1 %_id_x103, %_105
  %_111 = or i1 %_106, %_110
  ret i1 %_111
}

define i8* @string_of_bool(i1 %b) {
  %_b91 = alloca i1
  store i1 %b, i1* %_b91
  br label %_start97
_start97:
  %_id_b92 = load i1, i1* %_b91
  br i1 %_id_b92, label %_then98, label %_else99
_then98:
  %_result_id93 = bitcast [2 x i8]* @_raw_string94 to i8*
  ret i8* %_result_id93
_else99:
  %_result_id95 = bitcast [2 x i8]* @_raw_string96 to i8*
  ret i8* %_result_id95
}

define void @print_lfsr({ i64, [0 x i1] }* %lfsr_register, i64 %len) {
  %_lfsr_register74 = alloca { i64, [0 x i1] }*
  %_len75 = alloca i64
  %_76 = alloca i64
  store { i64, [0 x i1] }* %lfsr_register, { i64, [0 x i1] }** %_lfsr_register74
  store i64 %len, i64* %_len75
  store i64 0, i64* %_76
  br label %_start88
_start88:
  %_id_len78 = load i64, i64* %_len75
  %_id_i77 = load i64, i64* %_76
  %_79 = icmp slt i64 %_id_i77, %_id_len78
  br i1 %_79, label %_body89, label %_else90
_body89:
  %_id_lfsr_register80 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register74
  %_id_i81 = load i64, i64* %_76
  %_index_pointer82 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_register80, i32 0, i32 1, i64 %_id_i81
  %_index_value83 = load i1, i1* %_index_pointer82
  %_84 = call i8* @string_of_bool(i1 %_index_value83)
  call void @print_string(i8* %_84)
  %_id_i86 = load i64, i64* %_76
  %_87 = add i64 %_id_i86, 1
  store i64 %_87, i64* %_76
  br label %_start88
_else90:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1 = alloca i64
  %_argv2 = alloca { i64, [0 x i8*] }*
  %_3 = alloca { i64, [0 x i1] }*
  %_7 = alloca i64
  %_23 = alloca i64
  %_27 = alloca i1
  %_39 = alloca i64
  store i64 %argc, i64* %_argc1
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2
  %_id_lfsr_length4 = load i64, i64* @lfsr_length
  %_raw_array5 = call i64* @oat_alloc_array(i64 %_id_lfsr_length4)
  %_array6 = bitcast i64* %_raw_array5 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array6, { i64, [0 x i1] }** %_3
  store i64 0, i64* %_7
  br label %_start20
_start20:
  %_id_lfsr_length9 = load i64, i64* @lfsr_length
  %_id_i8 = load i64, i64* %_7
  %_10 = icmp slt i64 %_id_i8, %_id_lfsr_length9
  br i1 %_10, label %_body21, label %_else22
_body21:
  %_id_lfsr_init_values11 = bitcast { i64, [4 x i1] }* @lfsr_init_values to { i64, [0 x i1] }*
  %_id_i12 = load i64, i64* %_7
  %_index_pointer13 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_init_values11, i32 0, i32 1, i64 %_id_i12
  %_index_value14 = load i1, i1* %_index_pointer13
  %_id_lfsr_register15 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3
  %_id_i16 = load i64, i64* %_7
  %_17 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_register15, i32 0, i32 1, i64 %_id_i16
  store i1 %_index_value14, i1* %_17
  %_id_i18 = load i64, i64* %_7
  %_19 = add i64 %_id_i18, 1
  store i64 %_19, i64* %_7
  br label %_start20
_else22:
  store i64 0, i64* %_23
  br label %_start62
_start62:
  %_id_lfsr_iterations25 = load i64, i64* @lfsr_iterations
  %_id_i24 = load i64, i64* %_23
  %_26 = icmp slt i64 %_id_i24, %_id_lfsr_iterations25
  br i1 %_26, label %_body63, label %_else64
_body63:
  %_id_lfsr_register28 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3
  %_id_lfsr_length29 = load i64, i64* @lfsr_length
  %_30 = sub i64 %_id_lfsr_length29, 1
  %_index_pointer31 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_register28, i32 0, i32 1, i64 %_30
  %_index_value32 = load i1, i1* %_index_pointer31
  %_id_lfsr_register33 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3
  %_id_lfsr_length34 = load i64, i64* @lfsr_length
  %_35 = sub i64 %_id_lfsr_length34, 2
  %_index_pointer36 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_register33, i32 0, i32 1, i64 %_35
  %_index_value37 = load i1, i1* %_index_pointer36
  %_38 = call i1 @xor(i1 %_index_value32, i1 %_index_value37)
  store i1 %_38, i1* %_27
  %_id_lfsr_length40 = load i64, i64* @lfsr_length
  %_41 = sub i64 %_id_lfsr_length40, 1
  store i64 %_41, i64* %_39
  br label %_start54
_start54:
  %_id_j42 = load i64, i64* %_39
  %_43 = icmp sgt i64 %_id_j42, 0
  br i1 %_43, label %_body55, label %_else56
_body55:
  %_id_lfsr_register44 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3
  %_id_j45 = load i64, i64* %_39
  %_46 = sub i64 %_id_j45, 1
  %_index_pointer47 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_register44, i32 0, i32 1, i64 %_46
  %_index_value48 = load i1, i1* %_index_pointer47
  %_id_lfsr_register49 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3
  %_id_j50 = load i64, i64* %_39
  %_51 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_register49, i32 0, i32 1, i64 %_id_j50
  store i1 %_index_value48, i1* %_51
  %_id_j52 = load i64, i64* %_39
  %_53 = sub i64 %_id_j52, 1
  store i64 %_53, i64* %_39
  br label %_start54
_else56:
  %_id_new_first57 = load i1, i1* %_27
  %_id_lfsr_register58 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3
  %_59 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id_lfsr_register58, i32 0, i32 1, i32 0
  store i1 %_id_new_first57, i1* %_59
  %_id_i60 = load i64, i64* %_23
  %_61 = add i64 %_id_i60, 1
  store i64 %_61, i64* %_23
  br label %_start62
_else64:
  %_id_lfsr_init_values65 = bitcast { i64, [4 x i1] }* @lfsr_init_values to { i64, [0 x i1] }*
  %_id_lfsr_length66 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_id_lfsr_init_values65, i64 %_id_lfsr_length66)
  %_result_id68 = bitcast [2 x i8]* @_raw_string69 to i8*
  call void @print_string(i8* %_result_id68)
  %_id_lfsr_register71 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3
  %_id_lfsr_length72 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_id_lfsr_register71, i64 %_id_lfsr_length72)
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
