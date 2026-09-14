-  32-bit long addresses
-  each IP address made up of **network id** and **host id**

192.168.32.170

-  192.168.32 network id
-  170 host id

5 classes: A, B, C, D, and E
-  in class A you have fewer networks that can connect millions of devices
-  class C has millions of networks which can connect a few devices
-  remember the division of net id and host id for each class - important for subnetting

## finding the class

-  convert left most byte to binary
-  if the left most bit is 0, that is the class, if the bit is 1 - move on to the next one

## different types of addresses

-  network and broadcast are reserved - already assigned, you are not allowed to do it yourself
-  host addresses are customisable

-  **network**: addresses that identify the network
-  **broadcast**: addresses that devices use in a network
-  **host addresses**: can be assigned

## subnet mask

used to identify the network address of an IPv4 address

class A (1-126): 255.0.0.0
class B (128-191): 255.255.0.0
class C (192-223): 255.255.255.0

255 = network id
0 = host id

255 = 11111111 in binary

-  **subnet mask allows you to identify network id and host id portion**
-  **also allows you to compute the IP address of the network**

## CIDR notation

-  represents the number of bits in a network id using a slash before the number

class A = `/8`
class B = `/16`
class C = `/24`

eg. IP address 192.168.10.10 with subnet mask 255.255.255.0 is **192.160.10.10/24**

## finding the IP of the network address

-  AND process
-  use this process between the given IP address and the subnet mask in binary = turn the result into decimal to get the network address

## finding the broadcast address

-  identify network address first
-  set all bits of the host id to 1 and convert to decimal

## sending a packet from source to destination

-  unicast: one device using the IP address of another device to send a packet
-  broadcast: one device sends a packet to all devices in a specific network
-  multicast: one device sends a packet only to chosen devices in a specific network (usually use IP addresses from **class D**)

## how many devices can be connected to a specific network?

number of host addresses = 2 to the power of host id bits - 2

## special IP addresses

-  public IP addresses allow us to connect to other devices over internet
-  private IP addresses used to connect to the local network only
-  127.0.0.0 used by workstations for diagnosis purposes
-  loopback address (localhost) - packets sent go back to the same machine, they do not reach the network