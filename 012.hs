module Main
where

import Data.List

import Primes


triangleNumbers = scanl1 (+) [1..]

factors = nub . map product . subsequences . primeFactors

solve = head $ dropWhile (not . (> 500) . length . factors) triangleNumbers

main = print solve
