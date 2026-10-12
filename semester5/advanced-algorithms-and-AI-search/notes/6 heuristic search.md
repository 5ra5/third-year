algorithm A - "distance from start" combined with "distance to goal"

```
f(n) = total, best-first heuristic search
g(n) = distance from the start state to state n along current, known path(haven't yet searched other paths, may find there are multiple different ways to get to n)
h(n) = heuristic estimated ditsance from n to goal

f(n) = g(n) + h(n)
h = f - g
```
