used to slow down the exhaustion of IPv4 addresses in the 90s

IANA responsible for controlling and assigning IP addresses to regions

regional internet registries assigns IP addresses to internet service provider (in europe and northern asia it's RIPE)

IP addresses are assigned based on requirements - homes usually get just one public IP address that is assigned to the router because private IP addresses cannot access the internet

all traffic goes through the NAT router: replaces the destintaion IP in the packed with the appropriate private IP address
-  uses translation table to determine private IP address the packet should go to

think of NAT router as proxy

what happens if the same device is supposed to get two packets at the same time?
IP address + port number
-  two different port numbers but the same destination
-  5 column NAT translation table (private address, private port, external address, external port, protocol)
-  private ports are numbered differently (eg. 1400 and 1401)

if you have a private IP address at home, you have a NAT enabled router (99.9% of them)