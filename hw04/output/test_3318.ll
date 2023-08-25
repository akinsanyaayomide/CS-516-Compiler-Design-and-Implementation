; generated from: hw4programs/run16.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1212 = alloca i64
  %_argv1213 = alloca { i64, [0 x i8*] }*
  %_1214 = alloca i64
  %_1215 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1275 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1212
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1213
  store i64 10, i64* %_1214
  %_id_x1260 = load i64, i64* %_1214
  %_bop1261 = add i64 %_id_x1260, 2
  %_bop1262 = add i64 %_bop1261, 2
  %_id_x1257 = load i64, i64* %_1214
  %_bop1258 = add i64 %_id_x1257, 2
  %_bop1259 = add i64 %_bop1258, 1
  %_id_x1254 = load i64, i64* %_1214
  %_bop1255 = add i64 %_id_x1254, 2
  %_bop1256 = add i64 %_bop1255, 0
  %_raw_array1252 = call i64* @oat_alloc_array(i64 3)
  %_array1253 = bitcast i64* %_raw_array1252 to { i64, [0 x i64] }*
  %_1267 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1253, i32 0, i32 1, i32 2
  store i64 %_bop1262, i64* %_1267
  %_1265 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1253, i32 0, i32 1, i32 1
  store i64 %_bop1259, i64* %_1265
  %_1263 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1253, i32 0, i32 1, i32 0
  store i64 %_bop1256, i64* %_1263
  %_id_x1243 = load i64, i64* %_1214
  %_bop1244 = add i64 %_id_x1243, 1
  %_bop1245 = add i64 %_bop1244, 2
  %_id_x1240 = load i64, i64* %_1214
  %_bop1241 = add i64 %_id_x1240, 1
  %_bop1242 = add i64 %_bop1241, 1
  %_id_x1237 = load i64, i64* %_1214
  %_bop1238 = add i64 %_id_x1237, 1
  %_bop1239 = add i64 %_bop1238, 0
  %_raw_array1235 = call i64* @oat_alloc_array(i64 3)
  %_array1236 = bitcast i64* %_raw_array1235 to { i64, [0 x i64] }*
  %_1250 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1236, i32 0, i32 1, i32 2
  store i64 %_bop1245, i64* %_1250
  %_1248 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1236, i32 0, i32 1, i32 1
  store i64 %_bop1242, i64* %_1248
  %_1246 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1236, i32 0, i32 1, i32 0
  store i64 %_bop1239, i64* %_1246
  %_id_x1226 = load i64, i64* %_1214
  %_bop1227 = add i64 %_id_x1226, 0
  %_bop1228 = add i64 %_bop1227, 2
  %_id_x1223 = load i64, i64* %_1214
  %_bop1224 = add i64 %_id_x1223, 0
  %_bop1225 = add i64 %_bop1224, 1
  %_id_x1220 = load i64, i64* %_1214
  %_bop1221 = add i64 %_id_x1220, 0
  %_bop1222 = add i64 %_bop1221, 0
  %_raw_array1218 = call i64* @oat_alloc_array(i64 3)
  %_array1219 = bitcast i64* %_raw_array1218 to { i64, [0 x i64] }*
  %_1233 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1219, i32 0, i32 1, i32 2
  store i64 %_bop1228, i64* %_1233
  %_1231 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1219, i32 0, i32 1, i32 1
  store i64 %_bop1225, i64* %_1231
  %_1229 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1219, i32 0, i32 1, i32 0
  store i64 %_bop1222, i64* %_1229
  %_raw_array1216 = call i64* @oat_alloc_array(i64 3)
  %_array1217 = bitcast i64* %_raw_array1216 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_1273 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1217, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1253, { i64, [0 x i64] }** %_1273
  %_1271 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1217, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1236, { i64, [0 x i64] }** %_1271
  %_1269 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1217, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1219, { i64, [0 x i64] }** %_1269
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1217, { i64, [0 x { i64, [0 x i64] }*] }** %_1215
  %_id_a1276 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1215
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id_a1276, { i64, [0 x { i64, [0 x i64] }*] }** %_1275
  %_id_b1277 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1275
  %_index_pointer1278 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_b1277, i32 0, i32 1, i32 2
  %_index_value1279 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_pointer1278
  %_index_pointer1280 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index_value1279, i32 0, i32 1, i32 1
  %_index_value1281 = load i64, i64* %_index_pointer1280
  ret i64 %_index_value1281
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
