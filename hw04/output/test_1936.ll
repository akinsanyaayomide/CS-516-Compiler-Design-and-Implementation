; generated from: hw4programs/fibo.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @fibR(i64 %n) {
  %_n2293 = alloca i64
  store i64 %n, i64* %_n2293
  br label %_start2296
_start2296:
  %_id_n2294 = load i64, i64* %_n2293
  %_2295 = icmp eq i64 %_id_n2294, 0
  br i1 %_2295, label %_then2297, label %_else2298
_then2297:
  ret i64 0
_else2298:
  br label %_post2299
_post2299:
  br label %_start2302
_start2302:
  %_id_n2300 = load i64, i64* %_n2293
  %_2301 = icmp eq i64 %_id_n2300, 1
  br i1 %_2301, label %_then2303, label %_else2304
_then2303:
  ret i64 1
_else2304:
  br label %_post2305
_post2305:
  %_id_n2309 = load i64, i64* %_n2293
  %_2310 = sub i64 %_id_n2309, 2
  %_2311 = call i64 @fibR(i64 %_2310)
  %_id_n2306 = load i64, i64* %_n2293
  %_2307 = sub i64 %_id_n2306, 1
  %_2308 = call i64 @fibR(i64 %_2307)
  %_2312 = add i64 %_2308, %_2311
  ret i64 %_2312
}

define i64 @fibI(i64 %n) {
  %_n2259 = alloca i64
  %_2260 = alloca i64
  %_2261 = alloca i64
  %_2279 = alloca i64
  store i64 %n, i64* %_n2259
  store i64 0, i64* %_2260
  store i64 1, i64* %_2261
  br label %_start2265
_start2265:
  %_id_n2262 = load i64, i64* %_n2259
  %_2263 = icmp eq i64 %_id_n2262, 0
  br i1 %_2263, label %_then2266, label %_else2267
_then2266:
  %_id_a2264 = load i64, i64* %_2260
  ret i64 %_id_a2264
_else2267:
  br label %_post2268
_post2268:
  br label %_start2272
_start2272:
  %_id_n2269 = load i64, i64* %_n2259
  %_2270 = icmp eq i64 %_id_n2269, 1
  br i1 %_2270, label %_then2273, label %_else2274
_then2273:
  %_id_b2271 = load i64, i64* %_2261
  ret i64 %_id_b2271
_else2274:
  br label %_post2275
_post2275:
  br label %_start2287
_start2287:
  %_id_n2276 = load i64, i64* %_n2259
  %_2277 = sub i64 %_id_n2276, 2
  %_2278 = icmp sgt i64 %_2277, 0
  br i1 %_2278, label %_body2288, label %_else2289
_body2288:
  %_id_b2280 = load i64, i64* %_2261
  store i64 %_id_b2280, i64* %_2279
  %_id_a2282 = load i64, i64* %_2260
  %_id_b2281 = load i64, i64* %_2261
  %_2283 = add i64 %_id_b2281, %_id_a2282
  store i64 %_2283, i64* %_2261
  %_id_old2284 = load i64, i64* %_2279
  store i64 %_id_old2284, i64* %_2260
  %_id_n2285 = load i64, i64* %_n2259
  %_2286 = sub i64 %_id_n2285, 1
  store i64 %_2286, i64* %_n2259
  br label %_start2287
_else2289:
  %_id_b2291 = load i64, i64* %_2261
  %_id_a2290 = load i64, i64* %_2260
  %_2292 = add i64 %_id_a2290, %_id_b2291
  ret i64 %_2292
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2246 = alloca i64
  %_argv2247 = alloca { i64, [0 x i8*] }*
  %_2248 = alloca i64
  store i64 %argc, i64* %_argc2246
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2247
  store i64 1, i64* %_2248
  br label %_start2254
_start2254:
  %_2251 = call i64 @fibI(i64 12)
  %_2252 = icmp eq i64 %_2251, 144
  %_2249 = call i64 @fibR(i64 12)
  %_2250 = icmp eq i64 %_2249, 144
  %_2253 = and i1 %_2250, %_2252
  br i1 %_2253, label %_then2255, label %_else2256
_then2255:
  store i64 0, i64* %_2248
  br label %_post2257
_else2256:
  br label %_post2257
_post2257:
  %_id_val2258 = load i64, i64* %_2248
  ret i64 %_id_val2258
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
