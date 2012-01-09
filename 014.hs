module Main
where

import Data.List


mySequence :: Integer -> [Integer]
mySequence n
  | n == 1    = [n]
  | even n    = n : (mySequence $ n `div` 2)
  | otherwise = n : (mySequence $ 3 * n + 1)

myLength :: [a] -> (Int, a)
myLength xs = (length xs, head xs)


solve = maximumBy (\x1 x2 -> fst x1 `compare` fst x2) $ map myLength $ map mySequence [1..1000000]

main = print solve
