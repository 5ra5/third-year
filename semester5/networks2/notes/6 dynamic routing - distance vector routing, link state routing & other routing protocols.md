# distance vector routing

autonomous system = network or group of networks that are all managed and supervised by a single specific entity or organisation (eg. DCU has different campuses - but it is one entity that controls all routers and end devices in the autonomous system)
-  this entity is responsible for anything that happens to the system
-  multiple systems interconnected together
-  it can be one or multiple networks (multiple networks includes all routers around the campus - as well as other campuses)
-  there are links that connect routers within the same autonomous system = INTRAdomain links
-  links that connect routers with other systems within the same autonomous systems - INTERdomain links

## intradomain

INTERIOR GATEWAY PROTOCOLS (IGPs)
there a protocols that we can enable to build their own routing systems
-  Routing Information Protocol (RIP)
-  Open Shortest Path First (OSPF)
-  Enhanced Interior Gateway Routing Protocol (EIGRP) - open source now, was previously licensed by CISCO

## interdomain

EXTERIOR GATEWAY PROTOCOLS (EGPs)
-  Border Gateway Protocol (BGP) - new protocol

## distance vector routing

distance = how far
vector = what direction
sending route tables to neighbours - routers update each other on a fixed interval
-  not great candidate for large complex networks
-  can calculate shortest path easily

### example

how many networks?
-  five networks = count the number of links that connect the routers
-  four routers
-  if the router is directly connected to the network = 0 hop count (router itself can forward a packet to the network)
-  all hop counts are 0 = all routers are directly connected

every router updates its routing table using Bellman-Ford algorithm based on the routing tables received from other routers
-  while routers are trying to build their routing tables, data transmission will not be possible - it is possible only after routers take time to build routing tables
-  every router sends its routing table to its neighbours

### issue with distance vector routing

-  count to infinity problem = happens when one of links/routers goes down
-  routers use routes to other routers - if one of them goes down, other routers might not know this happened and still think there are paths to other routers through the router that doesn't have the connection to them anymore
-  this leads to incorrect values in routing tables being passed back and forth
-  and this process continues indefinitely

### RIP - routing information protocol

-  application layer protocol
-  every router needs to send its complete routing table to neighbours every 30 seconds (there are special time intervals we set for protocols like this)
-  hop counts = best path to a remote network
-  max hop count = 15 (used to avoid loops and to mitigate the problem of count to infnitiy)
-  inefficient in large networks - takes a long time to convert because routers take a long time to build their routing tables (not able to send data until they're finished)

2 versions:
RIPv1 = no verifications of the source (all broadcasts accepted)
-  sensitive to malicious routers

RIPv2 = supports VLSM, doesn't use broadcast but multicast (creating a group of all routers in the network), supports router authentication

invalid routes can stay in a routing table for several minutes (conversion time is slow)
solution: link goes down - send immediate update

count to infinity
solution: 
1.  **max hop count** of 15 
2.  a router does not advertise routes to the router from which it learned those routes - **split horizon** (look back at the example - A will not advertise back to B after B passes the routing table saying there is no connection to D)

# link state routing

link state routing is an improvement to distance vector routing because distance vector routing was too slow (long to converge)

-  maintains more info on the inter-network than distance vector routing

-  routing table
-  neighbour table
-  topology table: built based on routing tables that are received from other routers

## phase 1: neighbour discovery

-  one router sends HELLO message on every link it is connected to
-  other routers respond and identify themselves (IP, subnet mask, etc.)
-  router puts this info into neighbour table

## phase 2: measuring link distance to neighbouring routers

computing link distance based on delay (how long it takes to send data), bandwidth (how much data we can send to the router) or combo of both
ping command= check the reachability of another device
special echo packets = something like ping
-  timer is started when echo packet is put into a traffic queue (if the traffic load is to be considered)
-  otherwise started once the echo packet is about to be transmitted

## phase 3: building a link state advertisement (LSA)

 each router creates a message (LSA) which contains a table that has all  its neighbours and corresponding distance
 -  LSA starts with the ID of the sending router
 -  we build them periodically (say every few minutes) or after a change in topology (eg. a link or routing goes down)
 -  using flooding for distribution of LSA - sequence number is ignored by other routers until it is changed, when a router receives an updated sequence number, it passes it to other routers
 -  flooding helps all routers to build a link based database so that routers can use Djikstras algorithm to find the shortest path

## open shortest path first (OSFP)

-  interior gateway protocol = used in order to compute routes in the same autonomous systems
-  widely used
-  layer 3 protocol in OSI model, network protocol
-  main difference with RIP: RIP has a main protocol where routers are sending their routing tables in an interval, in OSFP once we build routing tables there is no need to share them constantly with other routers unless there is change in topology (eg. router or link fails, there is a change)

### area concept
-  dividing autonomous systems into multiple areas - making sure we can accelerate the process of computing the shortest path to other routers
-  key for OSFP - you need to have backbone area or area 0 (this is main important one)
-  routers don't need to keep track of the entire topology, just of their area
-  ASBR - autonomous system border routers connect AS to the internet
-  every router in area 0 is directly connected to every other router in that area - this is a mandatory requirement
-  this is not mandatory in other areas
-  communication between different areas has to go through area 0 (for example area 1 and area 2 can't be directly connected, just through area 0)

### route types

-  intra-area = within the same area
-  full inter-area = between different areas (route that connects two different areas)
-  external = routes to the internet or to any other autonomous system

### area types

-  **stub** = area without access to the internet (ASBR)
-  any external routing info that would be forwarded to a stub is not advertised within the stub, there is a default route
-  if there is an external destination that routers in a stub need to forward packets to - you need to send them to another router in area 0, which are then able to forward packets to ASBR router that has a connection to the internet

-  **totally stubby** - neither external info nor routing info from other areas are advertised

-  **not-so-stubby** = stub area that contains ASBR (direct access to the internet)
-  advertising routing info to other areas, but not external routing info learned by routers from outside the area

designated router = routers send and receive routing info to and from the designated router only (routers in every area vote to make one designated router)
-  backup designated routers is selected in case original DR fails = network doesn't stop

# other routing protocols

## enhanced interior gateway routing protocol (EIGRP)

-  network layer (layer 3) protocol created by CISCO
-  required licence before, now it's open standard (it can be used without licence)
-  combines both distance vector and link state approach = hybrid interior gateway protocol
-  builds neighbour and topology tables and sends routing updates only when topology change occurs
-  sends hello messages to maintain router neighbour relationship
-  uses multicast
-  default metric = bandwidth + delay
-  selects the route with the lowest cumulative metric
-  if a router has multiple paths to other routers, EIGRP breaks up packet and sends it through those multiple paths to shorten the delay - loading balance traffic across paths
-  routers need to know which autonomous system they belong to
-  only border routers can belong to multiple autonomous systems

## border gateway protocol

-  application layer protocol (layer 7)
-  complex to implement - comes from how paths are computed and number of parameters you need to consider to compute the best/quickest path to the destination
-  only protocol used on the internet (exterior routing protocol)
-  hop = entire autonomous system
-  BGP doesn't care how the traffic is routed within an autonomous system, there could be hundreds of routers in them
-  **manually implemented and configured, can't be dynamically configured**
-  admin needs to configure border gateway

best path selection parameters:
-  weight of the interface
-  source of the path
-  path length
-  preferred path
-  preferred autonomous system entry point

**weakness**: BGP routers are very slow in building their routing tables (takes hours in case something happens)
-  clients of internet service provides have no access to the internet for multiple hours

focus: security and scalability (amount of autonomous systems connected) in design and implementation, **NOT** efficiency (speed)