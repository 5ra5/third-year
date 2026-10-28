myIntersect :: (Eq a) => [a] -> [a] -> [a]

myIntersect [] _ = []
myIntersect (x:xs) y =
    if elem x y
    then x:(myIntersect xs y)
    else (myIntersect xs y)