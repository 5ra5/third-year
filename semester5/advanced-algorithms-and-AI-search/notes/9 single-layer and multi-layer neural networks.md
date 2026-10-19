single layer = not useful
multi layer = useful

## perceptions

-  input multi-dimensional (can be a vector)
```
input x = (I1, I2, ..., In)
```

-  input nodes (units) connected (typically fully) to a node (or multiple) in the next layer
-  summed input = each I has an associated weight Wi - we sum them

example
```
input x = ( I1, I2, I3) = ( 5, 3.2, 0.1 )

summed input: 5 w1 + 3.2 w2 + 0.1 w3
```

what do we do with this?
-  if summed input is equal or greater than a certain value, then it fires (equal or greater to 1)
-  else doesn't fire (it's 0)

**this implements a function**
-  from multi-dimensional real input to binary output

-  we can imagine multi-layer networks - output node is one of the inputs into next layer (points to the next node - there can be multiple nodes)

to make input node irrelevant to the output = set its weight to 0
-  summed input same no matter what is in the 1st dimension of the input

-  weights can be negative too (higher positive input tends to lead to NOT fire)
-  positive + negative inputs and/or weights an cancel each other out 

## sample perceptions
### perception for AND

2 inputs - 1 output
```
w1 = 1
w2 = 1
t (threshold) = 2
```

fires if both inputs are 1
doesn't fire if one of them is 0

**Question**
what is the general set of inequalities for w1 and w2 and t that must be satisfied for an AND perception?
-  need 0 0 not fire
-  therefore `0 w1 + 0 w2 < t`
-  need t > 0

-  need 0 1 not fire
-  need `0 w1 + 1 w2 < t`
-  w2 < t

-  w1 < t

-  1 1 should fire
-  `w1 + w2 >= t`

general:
```
set of inequalities needed for AND:
t > 0
w1 < t
w2 < t
w1 + w2 >= t
```

example:
```
w1 = w2 = 1,  1 < t <= 2
```