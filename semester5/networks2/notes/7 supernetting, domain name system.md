# supernetting
merging multiple small networks into a large one

why?
-  reducing the size of routing tables - assuming you have hundreds of subnets and a few routers, that means that each router needs to have an entry for each of these subnets
-  instead of having multiple entries, we have one entry so that the process is faster and more efficient - the internal system knows to forward info to a specific router

for supernets we borrow bits from the NetID

**rules to create supernets**:
1.  make sure the networks are contiguous - they follow each other
2. number of networks aggregated should be the power of 2 (2, 4, 8, 16, ...)
3.  the value of the first non-common byte in the first IP address should be either 0 or multiple of number of networks to be aggregated (if the number is 4, then the number should be 0 or 4 or 8 or 16 etc.)

## how to supernet

1.  convert everything to binary = set the common bits to 1 and set the remaining bits to 0
	- 2 networks - how many bits do we need to create supernet?
	-  one
	-  borrow only one bit from network ID
2.  supernet IP address will be the address of the 1st network in the list with the new subnet mask 

**questions similar to what appears in the exam:**
## example

how many networks are we aggregating? = 4 because there is 16 IP addresses and 2 to the power of 4 is 16
default subnet mask for class C = `/24`
new subnet mask = `/20`

## example 2

-  class C = `/24`
-  4 networks - 2 to the power of 2, so we take away 2 bits from the network ID
-  new subnet mask = `/22`
-  address of the supernet - always take the first one = `205.100.0.0/22`

## exercise

can both addresses appear in the routing table?
```
205.100.0.0/22
205.100.0.0/20
```

`205.100.0.0/22`
-  class C IP address
-  default address is `/24`
-  we borrowed 2 bits
-  supernet has 4 class C networks

`205.100.0.0/20`
-  we aggregated 16 class C networks
-  this one just includes more networks
-  this means that this one can be the only one included because it contains the networks from the first supernet

answer: NO, only the second one must be included because it contains all networks from the first one so the first one is obsolete

## exercise

```
192.20.4.0/22
```

what is the subnet mask in decimal?
-  255.255.252.0

what is the broadcast address?
-  192.20.7.255

how many class C networks in the supernet?
-  4 (2 to the power of 2)

what are their addresses?
-  192.20.4.0/22
-  192.20.5.0/22
-  192.20.6.0/22
-  192.20.7.0/22

what are the addresses of the first and last host in this supernet?
-  first host: 192.20.4.1
-  last host: 192.20.7.254 (the one before broadcast address)