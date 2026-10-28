# exam 1

Q1. Write *an expression that evaluates to a list* of the even numbers that are a multiple of 3 and 7 and less than 100. A simple list with numbers is not an acceptable answer! (1 marks)
```haskell
[x | x <- [0..99], even x, x `mod` 3 == 0, x `mod` 7 == 0]
```

Q2. Write a function, **union** that takes two lists and returns a list that is all the elements of the first list and second list but does not include any duplicates between the lists, e.g. `union[1,2,3,5,6,7][2,4,6,8]` evaluates to `[1,2,3,4,5,6,7,4,8]` (2 marks)
```haskell
union :: (Eq a) => [a] -> [a] -> [a]

union x [] = x
union x (y:ys) = 
	if elem y x
	then union x ys
	else union (x ++[y]) ys
```

Q3. Write a function that takes an integer and returns **True** if it is a prime number and **False** otherwise (`mod x y` returns the remainder after dividing x by y). (3 mark)
```haskell
isPrime :: Integral a => a -> Bool

isPrime x =
	x >= 2 &&
	[n | n <- [2..x-1], x `mod` n == 0] == []
```

Q4. Write a data type for a binary tree. (1 marks)
```haskell
data BinTree t = Empty 
				 | Root t (BinTree t)(BinTree t)
				 deriving (Eq, Ord, Show)
```

Q5. Write a function that converts a binary tree into a list by doing an inorder traversal of the binary tree. Remember an inorder traversal visits the left child, then the parent node and then the right child. (3 marks)
```haskell
inorder :: BinTree a -> [a]

inorder Empty = []
inorder (Root x left right) = 
	inorder left ++ [x] ++ inorder right
```
# exam 2

Q1. Write an expression that evaluates to a list of the odd number that are a multiple of 7 and less than 100. (1 marks)
```haskell
[x | x <- [1..99], odd x, x `mod` 7 == 0]
```

Q2. Write a function that takes two integers and evaluates to their sum if either integer is odd, otherwise evaluates to their product. (2 mark)
```haskell
sumOrProduct :: Integral a => a -> a -> a

sumOrProduct x y =
	if x `mod` 2 /= 0 || y `mod` 2 /= 0
	then x + y
	else x * y
```

Q3. Write a function, join, that takes two lists and returns a list that is the concatenation of both lists except that elements in the first list that are already in the second list are not added to the resulting list, e.g. `join [1,2,3] [2,4,6,8]` evaluates to `[1,3,2,4,6,8]` (3 marks)
```haskell
join :: (Eq a) => [a] -> [a] -> [a]

join [] ys = ys
join (x:xs) ys =
	if elem x ys
	then join xs ys
	else x : join xs ys
```

Q4. Write a data type for a binary tree. (1 marks)
```haskell
data BinTree t = Empty 
				 | Root t (BinTree t)(BinTree t)
				 deriving (Eq, Ord, Show)
```

Q5. Write a function that converts a binary tree into a list by doing a preorder traversal of the binary tree. Remember a preorder traversal visits the parent node, then the left child and then the right. (3 marks)
```haskell
preorder :: BinTree a -> [a]

preorder Empty = []
preorder (Root x left right) = 
	[x] ++ preorder left ++ preorder right
```

# github solutions

Q1. Write a function `delAll` that takes a value and a list, and returns the list with all occurrences of that value removed.
```haskell
delAll :: Eq a => a -> [a] -> [a]
delAll l list = [x | x <- list, l /= x]
```

Q2. Write a function that takes three numbers and returns `True` if one of them is the product of the other two, and `False` otherwise.
```Haskell
isProduct :: Float -> Float -> Float -> Bool
isProduct x y z = (x * y == z) || (x * z == y) || (y * z == x)
```

Q3.  Write a function that takes a list of lists and returns the longest inner list.
```haskell
longest :: [[a]] -> [a]
longest [] = []
longest [x] = x
longest (x:y:list) =
	if length y > length x
	then longest(y:list)
	else otherwise = longest(x:list)
```

Q4. Write a function that counts the number of occurrences of a given element in the list.
```haskell
num :: Eq a => a -> [a] -> Int
num y [] = 0
num y (x:xs) =
	if y == x
	then 1 + (num y xs)
	else num y xs
```

Q5. Write a function that counts how many times y appears in a list, but assume that the list is sorted.
```haskell
numSorted :: Ord a => a -> [a] -> Int
numSorted y [] = 0
numSorted y (x:xs) = 
	if y == x
	then 1 + (numSorted y xs)
	else if y < x
		then 0
		else numSorted y xs
		
--- guards version
numSorted :: Ord a => a -> [a] -> Int
numSorted y [] = 0
numSorted y (x:xs)
	| y == x = 1 + (numSorted y xs)
	| y < x = 0
	| otherwise = numSorted y xs
```