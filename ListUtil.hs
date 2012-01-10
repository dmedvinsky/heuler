module ListUtil (splitEvery)
where

splitEvery :: Int -> [a] -> [[a]]
splitEvery n xs
    | length xs >= n = take n xs : splitEvery n (drop n xs)
    | length xs >  0 = [xs]
    | otherwise      = []
