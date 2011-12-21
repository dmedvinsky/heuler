module Main
where


triplets n = [[a, b, c] | a <- [1..] , b <- [a+1..n] , c <- [b+1..n]
                        , a + b + c == n
                        , a ^ 2 + b ^ 2 == c ^ 2]

solve = product $ head triplets 1000

main = print solve
