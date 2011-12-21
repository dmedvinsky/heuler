module Main
where

import Data.Function


solve = sum $ filter even $ takeWhile (< 4000000) $ fibs
  where fibs = fix $ (0:) . scanl (+) 1

main = print solve
