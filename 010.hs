module Main
where


primes = 2 : filter ((== 1) . length . primeFactors) [3, 5 ..]

primeFactors n = factorize n primes
  where factorize n primes@(p:ps)
          | p * p > n      = [n]
          | n `mod` p == 0 = p : (factorize (n `div` p) primes)
          | otherwise      = factorize n ps

solve = sum $ takeWhile (< 2000000) primes

main = print solve
