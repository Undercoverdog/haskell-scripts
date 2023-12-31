-- F(n) = F(n-1) + F(n-2)
-- F(0) = 1

fibonacci :: Int -> Int
fibonacci n
    | n == 0 = 0
    | n == 1 = 1
    | otherwise = fibonacci (n - 1) + fibonacci (n - 2)


fibonacciWithDying :: Int -> Int -> Int
fibonacciWithDying n lt
    | n <= 0 = 0
    | n == 1 = 1
    | otherwise = fibonacciWithDying (n - 1) lt + fibonacciWithDying (n - 2) lt - fibonacciWithDying (n - lt) lt


{-
- Suppose you have a pair of rabbits. Rabbits reach maturity after one month and can produce a new pair of rabbits every month.
- That pair of rabbits also takes one month to mature, and once mature, they produce a new pair every month as well.
- The sequence of the number of rabbit pairs is generated by the Fibonacci sequence.
-
- n ≙ Amount of Months
- 
- Only for fibonacciWithDying
-
- lt ≙ Lifetime (How many Months a Rabbit Lives) 
-}