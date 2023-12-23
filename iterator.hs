-- c = a + b
-- a = 2a + c

iterator :: Int -> Int -> Int -> Int  -> (Int, Int, Int)
iterator i a b c
    |   i <= 0 =  (a, b, c)
    |   otherwise = 
        let newC = a + b
            newA = 2 * a + newC
            newI = i - 1
            in iterator newI newA b newC