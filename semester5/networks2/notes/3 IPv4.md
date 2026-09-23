-  web browsing = TCP/IP (open a connection with server and then start sending data)

internet layer - 3 services
1.  addressing - devices are assigned unique addreses called IP addresses
2.  packetising - organisind data received from the transport layer in packets passed to network access layer
3.  routing - carries data packets from the source to the destination

3 characteristics
1.  connectionless (no establishing connection, similar to UDP)
2.  best effort (no reliability when it comes to IP, no ack mechanism used)
3.  media independent (operates in the same way as the other device)

exhausted around 2011 - 4 billion IPv4 addresses in the world

## IPv4 header
-  size: 4 bit
-  VER: version of IP we are currently using, can be 4 or 6 (currently v4)
-  HLEN: specifies the total length of the header - between 20 and 60 bytes - needed because it's a variable