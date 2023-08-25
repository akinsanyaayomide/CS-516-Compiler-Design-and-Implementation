; generated from: hw4programs/run14.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f({ i64, [0 x i64] }* %a) {
  %_a1297 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a1297
  %_id_a1298 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1297
  %_index_pointer1300 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a1298, i32 0, i32 1, i32 1
  %_index_value1299 = load i64, i64* %_index_pointer1300
  ret i64 %_index_value1299
}

define i64 @g(i64 %x) {
  %_x1278 = alloca i64
  %_arr1281 = alloca { i64, [0 x i64] }*
  %_i1282 = alloca i64
  store i64 %x, i64* %_x1278
  %_raw_array1279 = call i64* @oat_alloc_array(i64 3)
  %_array1280 = bitcast i64* %_raw_array1279 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1280, { i64, [0 x i64] }** %_arr1281
  store i64 0, i64* %_i1282
  br label %_cond1292
_cond1292:
  %_id_i1283 = load i64, i64* %_i1282
  %_bop1284 = icmp slt i64 %_id_i1283, 3
  br i1 %_bop1284, label %_if1293, label %_merge1291
_if1293:
  %_id_x1285 = load i64, i64* %_x1278
  %_id_arr1286 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1281
  %_id_i1287 = load i64, i64* %_i1282
  %_1288 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1286, i32 0, i32 1, i64 %_id_i1287
  store i64 %_id_x1285, i64* %_1288
  %_id_i1289 = load i64, i64* %_i1282
  %_bop1290 = add i64 %_id_i1289, 1
  store i64 %_bop1290, i64* %_i1282
  br label %_cond1292
_merge1291:
  %_id_arr1294 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1281
  %_index_pointer1296 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1294, i32 0, i32 1, i32 1
  %_index_value1295 = load i64, i64* %_index_pointer1296
  ret i64 %_index_value1295
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1216 = alloca i64
  %_argv1217 = alloca { i64, [0 x i8*] }*
  %_a1220 = alloca { i64, [0 x i64] }*
  %_i1221 = alloca i64
  %_arr1235 = alloca { i64, [0 x i64] }*
  %_i1236 = alloca i64
  %_arr01252 = alloca { i64, [0 x i64] }*
  %_i1253 = alloca i64
  store i64 %argc, i64* %_argc1216
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1217
  %_raw_array1218 = call i64* @oat_alloc_array(i64 3)
  %_array1219 = bitcast i64* %_raw_array1218 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1219, { i64, [0 x i64] }** %_a1220
  store i64 0, i64* %_i1221
  br label %_cond1231
_cond1231:
  %_id_i1222 = load i64, i64* %_i1221
  %_bop1223 = icmp slt i64 %_id_i1222, 3
  br i1 %_bop1223, label %_if1232, label %_merge1230
_if1232:
  %_id_i1224 = load i64, i64* %_i1221
  %_id_a1225 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1220
  %_id_i1226 = load i64, i64* %_i1221
  %_1227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a1225, i32 0, i32 1, i64 %_id_i1226
  store i64 %_id_i1224, i64* %_1227
  %_id_i1228 = load i64, i64* %_i1221
  %_bop1229 = add i64 %_id_i1228, 1
  store i64 %_bop1229, i64* %_i1221
  br label %_cond1231
_merge1230:
  %_raw_array1233 = call i64* @oat_alloc_array(i64 4)
  %_array1234 = bitcast i64* %_raw_array1233 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1234, { i64, [0 x i64] }** %_arr1235
  store i64 0, i64* %_i1236
  br label %_cond1248
_cond1248:
  %_id_i1237 = load i64, i64* %_i1236
  %_bop1238 = icmp slt i64 %_id_i1237, 4
  br i1 %_bop1238, label %_if1249, label %_merge1247
_if1249:
  %_id_i1239 = load i64, i64* %_i1236
  %_id_i1240 = load i64, i64* %_i1236
  %_bop1241 = mul i64 %_id_i1239, %_id_i1240
  %_id_arr1242 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1235
  %_id_i1243 = load i64, i64* %_i1236
  %_1244 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1242, i32 0, i32 1, i64 %_id_i1243
  store i64 %_bop1241, i64* %_1244
  %_id_i1245 = load i64, i64* %_i1236
  %_bop1246 = add i64 %_id_i1245, 1
  store i64 %_bop1246, i64* %_i1236
  br label %_cond1248
_merge1247:
  %_raw_array1250 = call i64* @oat_alloc_array(i64 3)
  %_array1251 = bitcast i64* %_raw_array1250 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1251, { i64, [0 x i64] }** %_arr01252
  store i64 0, i64* %_i1253
  br label %_cond1264
_cond1264:
  %_id_i1254 = load i64, i64* %_i1253
  %_bop1255 = icmp slt i64 %_id_i1254, 3
  br i1 %_bop1255, label %_if1265, label %_merge1263
_if1265:
  %_id_i1256 = load i64, i64* %_i1253
  %_bop1257 = mul i64 2, %_id_i1256
  %_id_arr01258 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01252
  %_id_i1259 = load i64, i64* %_i1253
  %_1260 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr01258, i32 0, i32 1, i64 %_id_i1259
  store i64 %_bop1257, i64* %_1260
  %_id_i1261 = load i64, i64* %_i1253
  %_bop1262 = add i64 %_id_i1261, 1
  store i64 %_bop1262, i64* %_i1253
  br label %_cond1264
_merge1263:
  %_id_arr1266 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1235
  %_index_pointer1268 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_arr1266, i32 0, i32 1, i32 3
  %_index_value1267 = load i64, i64* %_index_pointer1268
  %_id_a1269 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1220
  %_index_pointer1271 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_a1269, i32 0, i32 1, i32 1
  %_index_value1270 = load i64, i64* %_index_pointer1271
  %_bop1272 = add i64 %_index_value1267, %_index_value1270
  %_id_arr01273 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01252
  %_1274 = call i64 @f({ i64, [0 x i64] }* %_id_arr01273)
  %_bop1275 = add i64 %_bop1272, %_1274
  %_1276 = call i64 @g(i64 4)
  %_bop1277 = add i64 %_bop1275, %_1276
  ret i64 %_bop1277
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
