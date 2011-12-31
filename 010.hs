module Main
where

import Primes


solve = sum $ takeWhile (< 2000000) primes

main = print solve
