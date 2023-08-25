; generated from: hw4programs/lib9.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2342 = alloca i64
  %_argv2343 = alloca { i64, [0 x i8*] }*
  %_2344 = alloca i64
  store i64 %argc, i64* %_argc2342
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2343
  store i64 1, i64* %_2344
  br label %_start2355
_start2355:
  %_id_argc2346 = load i64, i64* %_argc2342
  %_id_i2345 = load i64, i64* %_2344
  %_2347 = icmp slt i64 %_id_i2345, %_id_argc2346
  br i1 %_2347, label %_body2356, label %_else2357
_body2356:
  %_id_argv2348 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2343
  %_id_i2349 = load i64, i64* %_2344
  %_index_pointer2350 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_id_argv2348, i32 0, i32 1, i64 %_id_i2349
  %_index_value2351 = load i8*, i8** %_index_pointer2350
  call void @print_string(i8* %_index_value2351)
  %_id_i2353 = load i64, i64* %_2344
  %_2354 = add i64 %_id_i2353, 1
  store i64 %_2354, i64* %_2344
  br label %_start2355
_else2357:
  %_id_argc2358 = load i64, i64* %_argc2342
  ret i64 %_id_argc2358
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
