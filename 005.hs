module Main
where


solve = foldl1 lcm [1 .. 20]
  where
    lcm :: Integer -> Integer -> Integer
    lcm 0 0 = 0
    lcm m n = m * n `div` (gcd m n)

    gcd :: Integer -> Integer -> Integer
    gcd 0 m = m
    gcd m 0 = m
    gcd m n
        | m == n    = m
        | n > m     = gcd n m
        | otherwise = gcd n (m `mod` n)

main = print solve
