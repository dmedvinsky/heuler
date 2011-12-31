module Main
where

import Primes


solve = last $ primeFactors n
  where n = 600851475143

main = print solve
