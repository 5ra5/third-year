data BinTree t = Empty | Root t (BinTree t) (BinTree t)
    derive (Eq, Ord, Show)

inorder :: BinTree t -> [t]
inorder (Root x left right) =
    inorder left ++ [x] ++ inorder right