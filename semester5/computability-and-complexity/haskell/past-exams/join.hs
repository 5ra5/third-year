join :: (Eq a) => [a] -> [a] -> [a]

join [] ys = ys

join (x:xs) ys =
    if elem x ys
    then join xs ys
    else x : join xs ys