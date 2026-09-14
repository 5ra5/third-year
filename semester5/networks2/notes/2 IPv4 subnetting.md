## broadcast domains

-  the simplest definition: network that's connected to a router 
- the network you can broadcast a package to
-  any network that's connected to a router is a broadcast domain = all the devices in your home that are connected to the router can send the broadcast messages, but they are only transmitted in your home, not the internet
-  routers don't forward broadcast frames unlike switches

## problems with large broadcast domains

-  slow network operation = too much traffic generated
-  slow device operation = each device needs to process each broadcast message

### solution - subnetting

-  reducing the size of the network to create smaller broadcast domains
-  dividing a network into smaller ones = subnetting

-  reducing security policies (communication between subnets, hardware faults, malicious attacks)

## creating subnets

-  borrow bits from hostid
-  subnet mask used to differentiate between netid and hostid portion
-  we can't borrow more than 6 bits = network id would have 31 bits, and network id would have only 1 bit - you are not able to connect any devices to the network