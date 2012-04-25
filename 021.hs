solve = sum $ flatten $ amicablePairs $ dPairs $ [1..10000]

type IntPair = (Int, Int)

--           x  ->  x, d(x)
dPairs :: [Int] -> [IntPair]
dPairs = map (\x -> (x, d x))
  where
    d = sum . divisors
    divisors x = [y | y <- [1..x-1], x `mod` y == 0]

amicablePairs :: [IntPair] -> [IntPair]
amicablePairs xs = [(fst x1, fst x2) | x1 <- xs, x2 <- xs,
                                       fst x1 /= fst x2,
                                       fst x1 == snd x2,
                                       snd x1 == fst x2]

flatten :: [IntPair] -> [Int]
flatten = map fst


main :: IO ()
main = print solve
