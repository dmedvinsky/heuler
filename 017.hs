solve = sum $ map (length . skip . say) [1..1000]
  where skip = filter (not . (`elem` [' ', '-']))

say :: Integer -> String
say 1    = "one"
say 2    = "two"
say 3    = "three"
say 4    = "four"
say 5    = "five"
say 6    = "six"
say 7    = "seven"
say 8    = "eight"
say 9    = "nine"
say 10   = "ten"
say 11   = "eleven"
say 12   = "twelwe"
say 13   = "thirteen"
say 14   = "fourteen"
say 15   = "fifteen"
say 16   = "sixteen"
say 17   = "seventeen"
say 18   = "eighteen"
say 19   = "nineteen"
say 20   = "twenty"
say 30   = "thirty"
say 40   = "forty"
say 50   = "fifty"
say 60   = "sixty"
say 70   = "seventy"
say 80   = "eighty"
say 90   = "ninety"
say 1000 = "one thousand"
say x
  | x < 100  = let (d, m) = x `divMod` 10; y = d * 10
               in if m == 0 then say y
                            else (say y) ++ "-" ++ (say m)
  | x < 1000 = let (d, m) = x `divMod` 100
               in if m == 0 then (say d) ++ " hundred"
                            else (say d) ++ " hundred and " ++ (say m)
  | otherwise = error $ "can't say " ++ show x


main :: IO ()
main = print solve
