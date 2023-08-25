; generated from: hw4programs/run32.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 11

define i64 @f() {
  %_307 = alloca i64
  store i64 12, i64* %_307
  %_id_i308 = load i64, i64* %_307
  ret i64 %_id_i308
}

define i64 @g() {
  %_305 = alloca i64
  store i64 10, i64* %_305
  %_id_i306 = load i64, i64* %_305
  ret i64 %_id_i306
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc298 = alloca i64
  %_argv299 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc298
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv299
  %_id_i303 = load i64, i64* @i
  %_301 = call i64 @g()
  %_300 = call i64 @f()
  %_302 = add i64 %_300, %_301
  %_304 = add i64 %_302, %_id_i303
  ret i64 %_304
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
