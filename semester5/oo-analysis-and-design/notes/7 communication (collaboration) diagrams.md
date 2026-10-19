why do we use it?
-  showing interactions focusing on RELATIONSHIPS between objects
-  communication vs sequence = sequence focuses on time, not relationships but both show interactions between objects

## anatomy

-  frame (optional but recommended)
-  lifelines (actors)
-  messages (communication)

### frame
sd = sequence diagram + context identifier (class name)
pentagon = labelling of the frame

### lifeline

no dash line unlike sequence diagram
rectangle
`ObjectName[selector]:ClassName`
eg. `:User` , `x[k]:X`, `data:Stock`
### messages

-  shown as a line with sequence expression and arrow above the line
-  arrow indicates the direction of the communication

### sequence expressions: language of order

```
sequence-term.sequence-term.sequence-term : messageName(paramterers)
```

example:
```
3b.2.2:m5
```

3b = parallel process
2.2 = substep

we use letters to use simultaneous processes within the diagram

what is one of the steps is unable to be performed? should you change existing diagram or draw a new one?
-  depends on the use case - if they cover all scenarios
-  one use case = one diagram
-  multiple use cases = multiple diagrams

## exercise

analyse this sequence
```
- 3.1a: authenticate()
- 3.1b: logAccess()
- 3.2: authorize()
```