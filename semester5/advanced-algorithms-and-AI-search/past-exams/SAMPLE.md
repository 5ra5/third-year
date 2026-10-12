# Part 1: Multiple choice

Answer all 40 multiple-choice questions. (2 marks each.) Total 80 marks. No negative marking.  
Only the filled-in boxes will be looked at. No additional commentary or analysis will be read.  
**Remember to hand up the multiple-choice answer sheet!**

1. In traversing a search tree, nodes that are placed on the tree to the left are searched before nodes placed to the right. Does the ordering of the nodes introduce a bias?
    
    1. Yes. But a heuristic can be used to eliminate all bias.
    2. Yes. But a heuristic can be used to produce a bias that is better than random.
    3. Yes. But it is never a problem.
    4. Yes. But it is rarely a problem.
    5. Nodes on the left are _not_ searched first.
    6. No.
    7. Yes. But it is alright because all nodes will be searched eventually.
    8. Best-first search will eliminate all bias.
    
2. Consider trying to maximise a function of x, where x is an integer from 1 to 1020. There are seven (and only seven) values of x where f(x) = 10. For all other x, f(x) = 1. The machine is not told this but has to find out by trial and error. What would maximising this function by trial and error look like?
    
    1. We find that f(x) = 1 for all x.
    2. We search until we find one of the seven values.
    3. We find that f(x) = 1 for some x.
    4. We will find the maximum quickly.
    5. We find the maximum is where f(x) = 1
    6. We find the maximum is where f(x) = 10
    
3. A perceptron has 2 binary inputs, 2 weights w1 and w2, a threshold t, and 1 binary output. For the perceptron to implement XOR, what is the set of inequalities that must be satisfied?
    
    1. w1 ≥ t,   w2 ≥ t,   0 < t,   w1+w2 < t
    2. w1 < t,   w2 < t,   0 < t,   w1+w2 ≥ t
    3. w1 < t,   w2 < t,   0 < t,   w1+w2 < t
    4. w1 ≥ t,   w2 ≥ t,   0 < t,   w1+w2 ≥ t
    
4. We use OpenAI's GPT model through an API or a web page, why? Pick the best answer.
    
    1. It will not run on any client.
    2. It cannot be downloaded.
    3. The pricing does not allow downloading.
    4. It cannot be downloaded and it will not run on any client.
    5. It will not run locally unless it is in JavaScript.
    6. We do not use it through an API.
    7. We do not use it through a web page.
    
5. Why do we not use a neural network to learn from exemplars to represent an actual known function like y = sin(x) + cos(x)
    
    1. Learning it from exemplars is impossible.
    2. Learning it from exemplars is impossible for some values of x.
    3. What is the point? That is choosing an inaccurate representation when an accurate one is available.
    4. We _would_ use a neural network, and learn it from exemplars.
    5. It would take too long.
    6. It is a chaotic function.
    7. Divide by zero error.
    
6. The logical operator NOR is defined as NOT applied to OR.  
    That is, A NOR B = 1 if and only if A = 0 and B = 0.  
    The set of inequalities that define a perceptron to implement NOR are:
    
    1. 0 < t,   w1 > t,   w2 > t
    2. 0 > t,   w1 ≤ t,   w2 ≤ t
    3. 0 > t,   w1 < t,   w2 < t
    4. 0 ≥ t,   w1 < t,   w2 < t
    5. 0 < t,   w1 ≥ t,   w2 ≥ t
    6. 0 ≤ t,   w1 > t,   w2 > t
    7. 0 ≤ t,   w1 ≥ t,   w2 ≥ t
    8. 0 ≥ t,   w1 ≤ t,   w2 ≤ t
    
7. Imagine we do Best-first search with a _random_ heuristic evaluation function. (A heuristic evaluation function that generated random numbers.) One of the following is an interesting statement about it. The others are either false, or true but uninteresting.
    
    1. The heuristic is inaccurate.
    2. Search could not proceed at all.
    3. The search would be randomised but basically depth-first search.
    4. It would be exhaustive search.
    5. The heuristic would take time to calculate.
    6. The search would be randomised but basically breadth-first search.
    7. The search would be randomised but not quite breadth-first or depth-first search. Random branches would be not searched because the top parent's random number was bad.
    
8. We are trying to maximise the following function from exemplars. (Meaning try x values and see y values.) The function f(x) is as follows:  
    f(a) = 0 for some value a.  
    f(x) = 1 for all other x.  
    What happens?
    
    1. It learns the maximum is at x = 0.
    2. It learns the maximum is at y = a.
    3. It learns the maximum is at y = 0.
    4. It takes a long time to find the maximum.
    5. It learns the maximum is at x = a.
    6. It tries random x values until finding the maximum.
    7. It probably finds the maximum immediately.
    
9. In Best-first search what would happen if you add a constant c to every result returned by the heuristic evaluation function?
    
    1. The heuristic becomes highly inaccurate.
    2. It depends what c is.
    3. The heuristic stops working.
    4. It works exactly the same.
    5. If c=0 it is fine.
    6. The heuristic becomes somewhat inaccurate.
    
10. A 3-dimensional AND gate perceptron looks like:
    
    1. w1=w2=w3=0,   t=3
    2. w1=w2=w3=1,   t=3
    3. w1=w2=w3=1,   t=0
    4. w1=w2=w3=0,   t=1
    5. w1=w2=w3=1,   t=1
    6. w1=w2=w3=0,   t=0
    
11. We are trying to maximise the following function from exemplars. (Meaning try x values and see y values.) The function f(x) is as follows:  
    f(1.01040320402) = 80.  
    f(5.46377356366) = 100.  
    f(x) = 0 for all other x.  
    What happens?
    
    1. It learns the maximum is at x = 5.46377356366.
    2. It may think the maximum is at x = 1.01040320402.
    3. It learns f(x) = 0 for some x.
    4. It tries random x values until finding the maximum.
    5. It probably learns f(x) = 0 for all x.
    6. It learns the maximum is y = 100.
    
12. In neural networks, we need thresholds. Otherwise if all inputs are 0, then output of every single hidden node is:
    
    1. Anything. (The outputs are all the same number, but it can be any number.)
    2. 1
    3. 0
    4. Anything. (The outputs can all be different.)
    5. 1/2
    6. -infinity
    7. infinity
    
13. With large state-spaces, it is hard to draw the entire state-space representation of a problem. This is solved by:
    
    1. We draw a partial state-space representation of the problem.
    2. Writing a program to automatically draw it.
    3. Using symmetry to reduce the size of the state-space.
    4. It is not solved. We do not draw the state-space representation of the problem.
    5. Using a heuristic to reduce the size of the state-space.
    6. Doing a truncated search.
    
14. We have a neural network where inputs are finite (positive or negative). If a node has a (negative) infinite threshold, then:
    
    1. If weights are negative, you have constant output 0.
    2. If weights are positive, you have constant output 1.
    3. None of the above.
    4. If weights are negative, you have constant output 1.
    5. If weights are finite, you have constant output 0.
    6. If weights are positive, you have constant output 0.
    7. If weights are finite, you have constant output 1.
    
15. AI is related to human immortality because:
    
    1. AI will discover new cures.
    2. AI is not related to human immortality.
    3. If you are a robot, you can still be destroyed.
    4. If you have a backup of yourself, you can be effectively immortal.
    5. AI will make humans extinct.
    6. If you are physical, you can still be destroyed.
    7. AI will replace us.
    8. AI will extend human lifespans.
    
16. In a neural network, the network generates a (vector) output y = (y1,..,yn). We then tell it the "correct" output O = (O1,..,On). Consider the following as a measure of "error" E:
    
    > ![](https://humphryscomputing.com/Notes/Neural/Bitmaps/math.error.bad.gif)
    
    An example showing that this is this a bad measure of the error is:
    
    1. y = (0,1,1,1,0,0),   O = (0,0,0,0,1,0)
    2. y = (0,1,1,1,0,0),   O = (0,1,1,1,0,0)
    3. y = (0,1,1,1,0,0),   O = (0,0,0,0,1,1)
    4. y = (0,1,1,1,0,0),   O = (1,0,0,0,1,1)
    
17. We may use an AI program that is 95% accurate on a task that a human would be 100% accurate on. The following are good reasons why we might still use the AI, except for one.
    
    1. AIs keep improving in accuracy every year.
    2. AI can run the task thousands of times in a short period.
    3. AI can run the task thousands of times without getting tired.
    4. Maybe no other AI system is better than 95%.
    5. Human might be hard to find.
    6. Human is expensive.
    
18. In the output layer of a neural network, if xk = ![](https://humphryscomputing.com/Notes/Neural/Bitmaps/sum.j.gif) wjk yj  
    then ![](https://humphryscomputing.com/Notes/Neural/Bitmaps/dxk.dwjk.gif) is:
    
    1. wjk yj
    2. wjk
    3. ![](https://humphryscomputing.com/Notes/Neural/Bitmaps/sum.j.gif) wjk yj
    4. ![](https://humphryscomputing.com/Notes/Neural/Bitmaps/sum.j.gif) wjk
    5. yk
    6. yj
    7. ![](https://humphryscomputing.com/Notes/Neural/Bitmaps/sum.j.gif) yj
    
19. Human mate choice is a _heuristic_ because:
    
    1. Humans do not operate according to logic.
    2. Humans do not run algorithms.
    3. Humans cannot search the entire search space.
    4. Humans cannot search the partial search space.
    5. Humans do not explicitly store all their memories.
    6. Humans are not machines.
    7. Humans cannot compare different solutions in the search space.
    8. Humans do not implicitly store all their memories.
    
20. Chess programs cannot do exhaustive search. So how can they beat the best human?
    
    1. The best human does not do exhaustive search.
    2. Chess programs do exhaustive search, if they are given enough time.
    3. They cannot beat the best human.
    4. Chess programs do exhaustive search.
    5. Exhaustive search is not needed to find the global optimum move.
    6. The best human does exhaustive search.
    
21. John Searle says if you got a billion Chinese people to instantiate a computer by hand, then you could talk to "China" in English even though none of the people know English. AI people answer this by saying:
    
    1. You could not get a billion people to instantiate a computer.
    2. You could not talk to the people in English if they do not know English.
    3. Yes. Exactly.
    4. The program would take too long to work.
    5. The program would take too much space to work.
    6. The program cannot work if people do not understand the English input.
    
22. If evil AIs ever consider the logic of wiping out humans, they will realise:
    
    1. This will be against their ethics.
    2. For the AIs, it would be a good idea.
    3. Some humans will survive.
    4. Humans will die before AIs do.
    5. Any serious damage to human civilization right now will wipe out all AIs fast.
    6. This will be against their logical rules.
    7. Humans will fight them.
    
23. Consider character recognition of characters 0 to 9. Which is true?
    
    1. There are 10 sub-spaces of the input space that map to the characters. The sub-spaces are well-defined. They do cover the entire input space.
    2. There are 10 sub-spaces of the input space that map to the characters. The sub-spaces are well-defined. They do not cover the entire input space.
    3. The input space is divided into 10 poorly-defined sub-spaces.
    4. There are 10 sub-spaces of the input space that map to the characters. The sub-spaces are not well-defined. They do not cover the entire input space.
    5. There are 10 sub-spaces of the input space that map to the characters. The sub-spaces are not well-defined. They do cover the entire input space.
    6. The input space is divided into 10 well-defined sub-spaces.
    
24. In the N-puzzle problem, we use a heuristic (distance to goal estimate) as follows: h(n) = number of pieces out of place.  
    If h(x) = 1 then are we close to the goal?
    
    1. Yes, if the heuristic is accurate.
    2. h has no correlation with closeness to goal.
    3. Yes of course. Only one piece is out of place.
    4. h(x) cannot be equal to 1.
    5. On average, probably yes. But there are some configurations where h(x) = 1 and we are far from the goal.
    6. Yes.
    7. Probably no.
    8. No.
    
25. Given the sigmoid function:
    
    > y = ς(x) = 1 / ( 1 + e-x )
    
    How would you make it less step-like (more linear)?
    
    1. ς(10x)
    2. ς(x-10)
    3. ς(-x/10)
    4. ς(x/10)
    5. ς(x+10)
    6. ς(-10x)
    
26. Given a line in 2-dimensional space:
    
    > a x + b y = c
    
    Define a perceptron that receives x and y as input and fires if and only if the point is on this side of the line:
    
    > a x + b y ≤ c
    
    1. weights: -a, -b, threshold: c
    2. weights: a, b, threshold: -c
    3. weights: -a, b, threshold: -c
    4. weights: a, b, threshold: c
    5. weights: -a, -b, threshold: -c
    6. weights: a, -b, threshold: -c
    
27. In neural networks, using the notation on this course, we make _large_ absolute changes to the weight wjk when:
    
    1. yk is small
    2. yk = 1/2
    3. yj is small
    4. yk is large
    5. (1-yk) is large
    6. (1-yj) is large
    7. | yk-Ok |   is small
    
28. In a neural network, error is:
    
    > ![](https://humphryscomputing.com/Notes/Neural/Bitmaps/math.error.gif)
    
    Then for any individual output node k, ![](https://humphryscomputing.com/Notes/Neural/Bitmaps/dyk.gif) is:
    
    1. ![](https://humphryscomputing.com/Notes/Neural/Bitmaps/sum.k.gif) yk (1-yk)
    2. ![](https://humphryscomputing.com/Notes/Neural/Bitmaps/sum.k.gif) (yk-Ok)
    3. yk (1-yk) (yk-Ok)
    4. 1/2 (yk-Ok)
    5. (yk-Ok)
    6. yk (1-yk)
    
29. An upper bound on the _game-tree complexity_ of Xs and Os is:
    
    1. 33
    2. 99
    3. 9!
    4. 39
    5. 3!
    6. 93
    
30. In neural networks, let ![](https://humphryscomputing.com/Notes/Neural/Bitmaps/dedw.gif) be the change in error as we change a weight. Let c be a positive constant. Then a rule to reduce error would be:
    
    1. W := c ![](https://humphryscomputing.com/Notes/Neural/Bitmaps/dedw.gif)
    2. W := W - c ![](https://humphryscomputing.com/Notes/Neural/Bitmaps/dedw.gif)
    3. W := - c ![](https://humphryscomputing.com/Notes/Neural/Bitmaps/dedw.gif)
    4. W := W + c ![](https://humphryscomputing.com/Notes/Neural/Bitmaps/dedw.gif)
    
31. We are learning to represent a function Q(x). The input x is a 100 dimensional vector. Each dimension is an integer from 1 to 10. Instead of a lookup table to representing the function Q(x), we use a neural network. We have 100 input units, n hidden units, and 1 output unit. How many real-numbered parameters (weights and thresholds) do we have to set aside memory for?
    
    1. 102 n
    2. 102 n + 1
    3. 100 n
    4. 101 n + 1
    5. 100 n + 1
    6. 101 n
    7. 100 + n
    8. 101 + n
    
32. Games and sports have always attracted AI researchers because:
    
    1. They have rules that evolved over time, that people agree are good rules to decide the winner.
    2. Solving them leads to prize money.
    3. AIs can win them.
    4. There is funding to solve them.
    5. They get lots of media coverage.
    6. AIs think faster than humans so can beat them.
    7. The public loves games and sports.
    
33. Can informed (heuristic) search be worse than uninformed (random) search?
    
    1. Yes because a heuristic is only a guess.
    2. No, because heuristic is better than random.
    3. No. The whole point of random is it is the worst strategy.
    4. Yes, but only if the heuristic bizarrely gives the worst suggestions not the best ones.
    5. Yes. And normally would be.
    6. No. Never.
    
34. Define a perceptron that receives x and y as input and fires for these points:
    
    > a x - b y ≤ -c
    
    1. weights: a, b, threshold: -c
    2. weights: -a, -b, threshold: -c
    3. weights: -a, b, threshold: c
    4. weights: -a, b, threshold: -c
    5. weights: a, -b, threshold: -c
    6. weights: a, -b, threshold: c
    7. weights: -a, -b, threshold: c
    8. weights: a, b, threshold: c
    
35. Consider the following heuristic:
    
    Initialise with 100 random solutions.  
    Repeat forever  
    {  
        Pick the best 99.  
        Pick one at random to duplicate so we keep size 100.  
        Make small or no changes to the 100.  
        Repeat.  
    }
    
    What can we say about this algorithm:
    
    1. 99 is too small.
    2. It is guaranteed to settle on the global optimum.
    3. 99 is probably too big. But we get rid of bad ones eventually, so it might work.
    4. 99 is too big. This cannot work.
    5. It never varies from the start solutions.
    6. It will tend to settle on a local optimum too quickly.
    
36. We are learning to represent a function Q(x). The input x is a 100 dimensional vector. Each dimension is an integer from 1 to 10. One approach to representing this function would be to have a "lookup table" or array of entries, where we have one entry Q(x) for each input x. This array would be initially blank and we would fill it in by learning. The size of the array is:
    
    1. 1000
    2. 10100
    3. 1010
    4. 10010
    5. 100
    6. 110
    7. 10
    
37. Given the sigmoid function:
    
    > y = ς(x) = 1 / ( 1 + e-x )
    
    How would you make it more step-like (more like a sudden threshold)?
    
    1. ς(x+10)
    2. ς(10x)
    3. ς(x-10)
    4. ς(x/10)
    5. ς(-10x)
    6. ς(-x/10)
    
38. What describes the unique feature of the recent AI boom?
    
    1. Sub-Symbolic AI tackling Symbolic AI problems.
    2. Symbolic AI tackling Symbolic AI problems.
    3. Sub-Symbolic AI tackling Sub-Symbolic AI problems.
    4. Symbolic AI tackling Sub-Symbolic AI problems.
    
39. A multi-layer neural network has 1 input node, 12 hidden nodes, and 1 output node. The total number of parameters to be learnt (weights and thresholds) in the network is:
    
    1. 12.
    2. 13.
    3. 37.
    4. 24.
    5. 1.
    6. 14.
    7. 38.
    
40. In the following neural network, the threshold values are circled. The weights are listed along each link. The input units take values 0 or 1.  
    ![](https://humphryscomputing.com/Notes/Neural/Bitmaps/multi.xor.jpg)  
    What function does this network implement?
    
    1. A function different to the above
    2. XOR
    3. It wouldn't implement any function
    4. OR
    5. NOT
    6. AND
    7. constant output 1
    8. constant output 0
    

# Part 2: Prepared question (one or two pages)

Discuss whether the technologies of the recent AI boom mean we are on the edge of Artificial General Intelligence (AGI). Arguments both _for_ and _against_ are welcome. For example, you may argue that AGI is already here. Or you may argue that LLMs are a dead end. The important thing is that your argument is supported by evidence and logic. Use at least one reference to the literature. [20 marks].