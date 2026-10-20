every f value is the same!

if grid is 9 x 6 for all squares
to get to square:
down n, across m
g = n+m

h value
down 6-n-1 to go
across 9-m-1 to go

therefore for ALL squares
```
f = n+m + 6-n-1 + 9-m-1
  = 13
```

in general f = number of squares across + number of squares down - 2