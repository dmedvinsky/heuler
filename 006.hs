module Main
where


solve = abs $ sumOfSquares - squareOfSums
  where
    sumOfSquares = sum $ map (^2) [1..100]
    squareOfSums = (sum [1..100]) ^2

main = print solve
