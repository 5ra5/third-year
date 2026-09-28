written in 8 block of 2 bytes - quartets

using hexadecimal digits

blocks separated with :

problem compared to IPv4: network admins find it difficult to work with IPv6 because it's much longer that IPv4

we can abbreviate:
1.  removing leading 0s, you can remove them (not trailing 0s though)
```
0000:0000:0000:0000:0000:0000:0000:0001
becomes
0:0:0:0:0:0:0:1
```

2.  blocks of 0s can be replaced with `::` 
-  this can only be done ONCE - you wouldn't know how many blocks were included if you did it more
```
0:0:0:0:0:0:0:1
becomes
::1
```

exercise: abbreviate the following IPv6 address
```
0fd3:0000:5e4a:b290:0000:0000:700a:00df
Rule 1: fd3:0:5e4a:b290:0:0:700a:df
Rule 2: fd3:0:5e4a:b290::700a:df
```

## types of IPv6 addresses

**main thing to remember**: what each type of address starts with and what it means

already seen in IPv4:
**unicast**: specific device address
**multicast**: communicating with a set of devices within the whole network - this is a replacement for broadcast in IPv4

new type:
**anycast**: similar to multicast where you have a group or set of devices which you can reach, but here the routers try to forward packets to the nearest DHCP server - this is mainly used with servers and loadbalancing (the server will not be overloaded with requests, so you can use the router to forward traffic to other DHCP servers)

### types of unicast addresses

**global**: similar to public IP address - allows the device to connect to the internet (usually starts with 2000)
structure:
-  128 bits long - first 3 bits always set to 001 because 001 = 2000 in hex (start with 2000 in hex)
-  next 45 bits assigned by the internet authority: global routing prefix
-  3 bits + 45 bits = used for ISP
-  next 16 bits are subnet ID
-  last 64 bits is interface ID (host ID) 

**link local**: required for all IPv6 enabled devices - allows for packets being sent over the local subnet (usually starts with fe80, eg. school of computing subnet)
structure:
-  first 10 bits always set to 1111111010 = fe80 in hex
-  54 bits all 0s
-  64 bits host ID
-  this can be derived automatically or manually

**unique local**: used to send packets to devices within the site (they start with fd00, eg. glasnevin campus that has all subnets like school of computing, school of nursing etc.)

## multicast address structure

first 8 bits set to  11111111  = ff00 in hex

4 flags:
-  reserved
-  rendezvous point
-  network prefix
-  transient

T flag - transient:
set to 0 - this is a permanent multicast address and it is assigned by internet authority
set to 1 - dynamic or temporary address - assigned by devices and servers

| value(hex) | scope        |
| ---------- | ------------ |
| 1          | node         |
| 2          | link         |
| 5          | site         |
| 8          | organisation |
| E          | global       |
## unspecified address

-  0:0:0:0:0:0:0:0
-  address not yet determined
-  used by host

## loopback address

-  0:0:0:0:0:0:0:1
-  allows users to test whether the TCP/IP protocol stack is installed properly on a specific address
-  like 127.0.0.1 in IPv4

## IPv4 to IPv6 translation

write the IPv4 address in the last 32 bits of the IPv6 address in hexadecimal

| 80 bits      | 16 bits | 32 bits               |
| ------------ | ------- | --------------------- |
| 00000...0000 | ffff    | IPv4 address (in hex) |

