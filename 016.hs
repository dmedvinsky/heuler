module Main
where

import ListUtil


solve = sum $ digits $ n
  where
    n = 2 ^ 1000
    digits :: Integer -> [Integer]
    digits = map read . splitEvery 1 . show

main = print solve
