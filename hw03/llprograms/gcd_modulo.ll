define i64 @main(i64 %argc, i8** %arcv) {
  %1 = alloca i64
  %2 = alloca i64
  store i64 1760, i64* %1
  store i64 2740, i64* %2
  br label %gcd
gcd:
  %3 = load i64, i64* %2
  %4 = icmp eq i64 0, %3
  br i1 %4, label %exit, label %modulo
modulo:
  %5 = load i64, i64* %1
  %6 = load i64, i64* %2
  %7 = icmp sgt i64 %6, %5
  br i1 %7, label %swap, label %mod_cont
mod_cont:
  %8 = sub i64 %5, %6
  store i64 %8, i64* %1
  br label %modulo
swap:
  store i64 %5, i64* %2
  store i64 %6, i64* %1
  br label %gcd
exit:
  %9 = load i64, i64* %1
  ret i64 %9
}

