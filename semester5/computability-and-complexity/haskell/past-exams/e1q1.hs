oddMultiplesOf7 :: [Int]
oddMultiplesOf7 =
    [x | x <- [0..99], odd x, x `mod` 7 == 0]