define i64 @weighted_sum(i64 %X0, i64 %X1, i64 %X2, i64 %X3, i64 %X4, i64 %X5, i64 %X6, i64 %X7, i64 %X8){
  
  %1 = mul i64 %X0, 0
  %2 = mul i64 %X1, 1
  %3 = add i64 %2, %1
  %4 = mul i64 %X2, 2
  %5 = add i64 %4, %3
  %6 = mul i64 %X3, 3
  %7 = add i64 %6, %5
  %8 = mul i64 %X4, 4
  %9 = add i64 %7, %8
  %10 = mul i64 %X5, 5
  %11 = add i64 %10, %9
  %12 = mul i64 %X6, 6
  %13 = add i64 %12, %11
  %14 = mul i64 %X7, 7
  %15 = add i64 %14, %13
  %16 = mul i64 %X8, 8
  %17 = add i64 %15, %16

  ret i64 %17
  
}
define i64 @main(i64 %argc, i8** %arcv) {
  %1 = call i64 @weighted_sum (i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8)
  ret i64 %1
}