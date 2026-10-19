## example of unknown or postulated functions

1.  character recognition = classification issue
	  -  input multi-dimensional x (vector - bunch of pixels) representing a bitmap of hand-written character
	  -  n by n input (dimension of the image)
	  -  output is number 1 to 10 (0-9)
	  -  small number of outputs - problem is easier
	  -  should we have 1 output, integer, takes values 0 to 9
	  -  or
	  -  10 outputs `(y0,..,y9)` and each takes value from 0 to 1 (confidence, probability) - more sophisticated,  machine is easier to debug and train
2.  mapping from input "state" to output "behaviour"
3.  pattern recognition of all forms
4.  anything where explicit rules are hard to come by, but correct feedback is possible to construct (medical diagnosis, financial prediction, robot actions)

## discontinuous function

-  no learning, only memorisation 
-  mappings of input to output
-  there is only a disjoint, discrete mapping of certain inputs to certain outputs and in 
-  eg. if you know the name of a poets mother, you don't know the name of every poets mother
-  every argument has a unique value
-  eg. each country has a unique capital
-  usually happens with historical data

## have we listed all the inputs to construct a predictable function?

postulated function = function that is assumed to exist, but properties are unknown (and maybe unknowable)

example: horse racing prediction
-  not enough data, you can't predict a horse race outcome based on the weight of the jockey
-  you want to know everything about the horse
-  you want to know previous results
-  you want to know the weather days before each race and todays race
-  etc.
```
With jockey of weight 8 stone, our horse won the race.
With jockey of weight 8.5 stone, our horse lost the race.
With jockey of weight 9 stone, our horse won the race.

With jockey of weight 8.25 stone, will our horse win or lose?
With jockey of weight 8.75 stone, will our horse win or lose?
```


how do you know you have all inputs that you need? (in general learning function)
-  the machine keeps giving you right answers for each situation
-  you might even have too many

## probabilitstic / stochastic / non-deterministic functions

exemplars may contradict each other:
```
If x=0, answer is 0.
If x=100, answer is 100.
If x=0, answer is 10.
If x=100, answer is 30.
If x=100, answer is 100.
```

-  the world is changed
-  may be caused by missing inputs
-  or probabilistic world

## multi-dimensional funcitons

if input x has 900 dimensions (2 physical dimensions, input state is one pixel for each dimension though - so 900 dimensions)

-  looking at previous inputs, context matters

# building a prediction machine using distance

just memory - no interpolation and extrapolation

the algorithm
```
given a new input x,
find the past exemplar with the smallest distance from x
return the output for that past exemplar
```

no issue if x is one dimensional integer, but...
## distance in multi-dimensions

if x is multi-dimensional vector - then what is "nearby"?
-  define the hamming distance - used a lot in a lot of things, especially binary number examples
-  issue = adding multiple values
example: given a new input x find the past exemplar with the smallest Hamming distance from x
```
x = (3, 0, 7)
y = (0, 0, 20)

*distance = sum of the absolute values between each dimension*
	distance(x, y) = |x1-y1| + |x2-y2| + |x3-y3|
				= |3-0| + |0-0| + |7-20|
				= 3 + 0 + 13
				= 16
				
if distance(x, y) = 0 then x = y
```

## hamming distance adds different quantities

exemplars:
```
Temperature 22 degrees, pressure 1000 [millibars]. No rain.
Temperature 15 degrees, pressure 990 mb. Rain.
```

question:
```
Temperature 17 degrees, pressure 1.010 bars. Will there be rain?
```

if we are calculating in millibars, we are closer to the first exemplar, it we are calculating in bars, we are closer to the second one
-  same data, different outputs
-  matter of opinion?
-  defined by empirical observation - if it rains, we are closer to first and if it doesn't, we are closer to the second

## same issue with any distance metric, it weighs every dimension the same

-  trying to distinguish happy faces from sad faces
-  bunch of input
-  introducing a new happy face with a similar haircut to one of the exemplars with a sad face
-  haircut area of the bitmap scores so many hits under the distance metric that this becomes the exemplar that matches - we guess that the new input is a sad face

solutions:
-  get enough exemplars(more data) - happy and sad faces of every haircut
-  pre-process the input to only show mouth and eyes - we decide which parts of input are important

**wishlist = an algorithm that learns which inputs are important because they have a stronger affect on output**
-  we just feed inputs into it
-  if they are irrelevant it will ignore them

## performance - do we have to compare to all other exemplars?

-  this doesn't scale well
-  takes too long to compare every pixel of the input with every pixel of a large number of previous exemplars every single time

alternative: neural network


# neural network data structure

we build a machine rather than look for an equation based on distance metric
we developed a wish list as data structure

neural networks = type of data structure that address most of this wish list
1.  represent a function from real-valued multi-dimensional input to real-valued multi-dimensional output
2.  learn a general non-linear, continuous, non-chaotic functions
3.  learn which parts of the input are important and which are not
4.  remove entirely parts of the input that are not important - set weight to 0
5.  build up the representation from scratch based only on seeing exemplars

6.  can do this in a fixed-size data structure - remains fixed in size as the representation improves (**fixed memory cost**)
7.  low computational cost (exemplars are encoded)
8.  fixed computational cost - returns an answer in a finite time (exactly the same time for all inputs)
9.  return an answer for inputs never seen before (can make predictions)
10.  represent a behaviour-generating module from the start

## optical character recognition (OCR)

-  problem where we get many exemplar pairs, but it's hard to figure out the function that relates input to output
exemplar pairs = input, output
OCR of printed books should be easier than recognition of handwriting
but older printed books might represent problems = prepared by hand, characters slightly different, differently aligned, different spellings than today etc.
newer printer books = prepared by a computer, there is more order (all letters are the same size, fixed spacing etc.)

## what is memory? how does the brain use its experience?

different approaches to solving a problem:
1.  reasoning, looking at rules, looking ahead, you can do that without memory of previous games
2.  compare current state to everything you remember from all the previous games
	-  computational cost and memory cost get worse - worse output, takes a lot longer to compare all previous games to current state
3.  pattern recognition - run current state through a neural machine that you have building for a long time, changing its parameters with every match you play - you don't remember all matches, but some of them
	-  computational cost - output given after limited amount of computation (same amount of computation for all inputs)
	-  memory cost - more limited - machine grows, but nothing changes except values of parameters (weights)

human playing chess:
1.  amateur player - can only do limited look ahead
2.  brain unable to do except remembering some memorable moves
3.  expert player - not thinking about rules, just knowing the next move

computer playing chess (better than human but still runs into same problems):
1.  state-space search
2.  better than human but still limited - growing memory and computational cost
3.  neural network type approach

opaque AI = black-box AI
-  we know how it works but the inner workings are incomprehensible
-  we try to achieve explainable AI