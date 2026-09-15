-  purely functional
-  does not evaluate an expression unless it has to
-  statically typed - the type of everything is known at compile time

basic types:
-  int
-  float
-  char
-  bool

compound types:
-  tuple
-  list
-  string
-  function

## functions

```haskell
rectangleArea x y = x * y
```

-  parameters x and y are separated by a space

```haskell
rectangleArea :: Float -> Float -> Float
rectangleArea x y = x * y
```

## if... then... else

```haskell
doubleSmallNumber x = if x > 100
						then x
						else x*2
```

used inside another expression
```haskell
incDoubleSmallNumber x = (if x > 100 then x else x*2) + 1
```

## lists

-  when adding to a list, never add from the end of the list, always the front

don't do this
```haskell
[1, 2, 3] : 4
```

always do this
```haskell
element : list
```

## list functions

### take

infinite list `[1, 2, ...]`

-  you can pass it to Haskell and ask it to find the third element like this
```haskell
take 3 [1, 2, ...]
```

use two backwards single quotes to make prefix functions infix

```haskell
elem 4 [2, 4, 8, 6]

4 `elem` [2, 4, 8, 6]
```