-  DHCP request is done after DHCP offer from a server because the device might get the offer from multiple servers, so it needs to notify which server it took the offer from so that other servers can pull back their offers

four steps
1.  DHCP discover from host (broadcast message )
2.  DHCP offer from server (unicast message)
3.  DHCP request from host
4.  DHCP ack from server

## allocation methods

-  dynamic = you get a different IP address every time
-  automatic = server will try to remember your previous IP address and will assign you the same one if it is available, otherwise you get a new one
-  static = host allocated reserved IP addresses for their MAC addresses = mapping between them (allocation table keeps track of the mapping between the two) - we can use this with servers (eg. web servers) so that they do not change the IP addresses

-  dynamic and automatic are used for devices that come and go to and from the network
