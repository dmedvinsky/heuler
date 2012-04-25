solve = sum $ digits $ fact 100

digits :: Integer -> [Int]
digits = map read . split . show
  where
    split :: [Char] -> [[Char]]
    split = foldr ((:) . return) []

fact :: Integer -> Integer
fact x = foldr1 (*) [1..x]


main :: IO ()
main = print solve
