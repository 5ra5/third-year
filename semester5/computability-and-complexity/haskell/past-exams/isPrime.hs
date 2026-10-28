isPrime :: Integral a => a -> Bool

isPrime x =
    x >= 2 &&
    [n | n <- [2..x-1], x `mod` n == 0] == []