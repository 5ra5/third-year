behavioural diagram - how we make a transition from one object to another in response to events
lives in ANALYSIS + DESIGN phase

two types: **protocol state machine diagram** and **behavioural state machine diagram**
in design and implementation phase you are turning protocol to behavioural one because behavioural one is a lot more detailed than protocol (which is more abstract)

example car: if in reverse mode, it can only go in reverse (that is the state of the car at the moment)
if you want to go forward, you have to shift to a gear (which is changing the state of the car)

if the object is in idle state - it is in **active** mode (it continuously senses and listens for an activity)

types of activities - alarm clock example:
-  entry/activity (certain time comes)
-  do/activity (continuous ringing)
-  exit/activity (it is shut down by the user)

types of states - coin counter example:
-  idle
-  total
-  display total

behavioural includes entry/exit points, protocol does not

simple state = state with no substates (atomic)
composite state = state with other states (can be sequential/disjoint OR concurrent/orthogonal)

sequential = one substate active at the time
concurrent = multiple substates active at the same time (separated by vertical dashed line)

**composite state vs submachine state**
composite = multiple states in one state
submachine = abstract state inside of composite state which refers to another composite state

**pseudostates** = do not provide any information, just connect transitions in complex ways
-  initial
-  terminate
-  entry point
-  exit point
-  choice
-  join
-  fork
-  junction
-  shallow history = represents most recent active substate of its containing state (notation: circle with H inside)
-  deep history = represents most recent active config of the composite state that directly contains this pseudostate (same notation)

protocol = what methods can be called - but no guard conditions

in a composite state with co
B)

you have a state with trans
