myUnion :: (Eq a) => [a] -> [a] -> [a]

myUnion x [] = x
myUnion x (y:ys) = if elem y x
    then myUnion x ys
    else myUnion (x ++[y]) ys                