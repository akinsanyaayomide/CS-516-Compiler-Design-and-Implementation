define i64 @manhattan(i64 %x1, i64 %y1, i64 %x2, i64 %y2) {
  %3 = sub i64 %x2, %x1
  %4 = sub i64 %y2, %y1
  %5 = add i64 %3, %4
  ret i64 %5
}

define i64 @main(i64 %argc, i8** %arcv) {
  %1 = alloca i64
  store i64 0, i64* %1
  %2 = call i64 @manhattan(i64 -5, i64 3, i64 8, i64 12)
  ret i64 %2
}
