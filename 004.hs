module Main
where

import Control.Applicative
import Data.List


solve = maximum $ filter isPalindrome $ (*) <$> [100..999] <*> [100..999]
  where isPalindrome n = (show n) == (reverse $ show n)

main = print solve
