define i64 @modulo(i64 %x1, i64 %x2) {
  %3 = sub i64 %x1, %x2
  %4 = icmp sgt i64 %x2, %3
  br i1 %4, label %ret1, label %rec
ret1:
  ret i64 %3
rec:
  %5 = call i64 @modulo(i64 %3, i64 %x2)
  ret i64 %5
}

define i64 @main(i64 %argc, i8** %arcv) {
  %1 = alloca i64
  %2 = alloca i64
  store i64 2740, i64* %1
  store i64 1760, i64* %2
  br label %gcd
gcd:
  %3 = load i64, i64* %2
  %4 = icmp eq i64 0, %3
  br i1 %4, label %exit, label %mod
mod:
  %5 = load i64, i64* %1
  %6 = call i64 @modulo(i64 %5, i64 %3)
  store i64 %3, i64* %1
  store i64 %6, i64* %2
  br label %gcd
exit:
  %7 = load i64, i64* %1
  ret i64 %7
}

