; generated from: hw4programs/run7.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1126 = alloca i64
  %_argv1127 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc1126
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1127
  %_raw_array1180 = call i64* @oat_alloc_array(i64 2)
  %_array1181 = bitcast i64* %_raw_array1180 to { i64, [0 x i64] }*
  %_1184 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1181, i32 0, i32 1, i32 1
  store i64 40, i64* %_1184
  %_1182 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1181, i32 0, i32 1, i32 0
  store i64 30, i64* %_1182
  %_raw_array1174 = call i64* @oat_alloc_array(i64 2)
  %_array1175 = bitcast i64* %_raw_array1174 to { i64, [0 x i64] }*
  %_1178 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1175, i32 0, i32 1, i32 1
  store i64 20, i64* %_1178
  %_1176 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1175, i32 0, i32 1, i32 0
  store i64 10, i64* %_1176
  %_raw_array1172 = call i64* @oat_alloc_array(i64 2)
  %_array1173 = bitcast i64* %_raw_array1172 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1200 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1173, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1193, { i64, [0 x i64] }** %_1200
  %_1198 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1173, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1187, { i64, [0 x i64] }** %_1198
  %_raw_array1162 = call i64* @oat_alloc_array(i64 1)
  %_array1163 = bitcast i64* %_raw_array1162 to { i64, [0 x i64] }*
  %_1164 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1163, i32 0, i32 1, i32 0
  store i64 5, i64* %_1164
  %_raw_array1160 = call i64* @oat_alloc_array(i64 1)
  %_array1161 = bitcast i64* %_raw_array1160 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1170 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1161, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1167, { i64, [0 x i64] }** %_1170
  %_raw_array1138 = call i64* @oat_alloc_array(i64 2)
  %_array1139 = bitcast i64* %_raw_array1138 to { i64, [0 x i64] }*
  %_1142 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1139, i32 0, i32 1, i32 1
  store i64 4, i64* %_1142
  %_1140 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1139, i32 0, i32 1, i32 0
  store i64 3, i64* %_1140
  %_raw_array1132 = call i64* @oat_alloc_array(i64 2)
  %_array1133 = bitcast i64* %_raw_array1132 to { i64, [0 x i64] }*
  %_1136 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1133, i32 0, i32 1, i32 1
  store i64 2, i64* %_1136
  %_1134 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1133, i32 0, i32 1, i32 0
  store i64 1, i64* %_1134
  %_raw_array1130 = call i64* @oat_alloc_array(i64 2)
  %_array1131 = bitcast i64* %_raw_array1130 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1158 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1131, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1151, { i64, [0 x i64] }** %_1158
  %_1156 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1131, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1145, { i64, [0 x i64] }** %_1156
  %_raw_array1128 = call i64* @oat_alloc_array(i64 3)
  %_array1129 = bitcast i64* %_raw_array1128 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_1278 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1129, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1245, { i64, [0 x { i64, [0 x i64] }*] }** %_1278
  %_1276 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1129, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1233, { i64, [0 x { i64, [0 x i64] }*] }** %_1276
  %_1274 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1129, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1203, { i64, [0 x { i64, [0 x i64] }*] }** %_1274
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1129, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_id_arr1280 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_index_pointer1282 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_id_arr1280, i32 0, i32 1, i32 2
  %_index_value1281 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_index_pointer1282
  %_index_pointer1284 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_index_value1281, i32 0, i32 1, i32 0
  %_index_value1283 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1284
  %_index_pointer1286 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1283, i32 0, i32 1, i32 1
  %_index_value1285 = load i64, i64* %_index_pointer1286
  ret i64 %_index_value1285
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
