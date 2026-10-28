isSum :: Int -> Int -> Int -> Bool

isSum x y z
    | x + y == z = True
    | x + z == y = True
    | z + y == x = True
    | otherwise = False