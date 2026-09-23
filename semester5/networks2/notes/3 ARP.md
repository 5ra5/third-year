two things that a device needs to connect to another computer: IP address/port, MAC address

mechanism: how will a device get MAC address from another device: ARP (address resolution protocol)

-  between data link layer and network layer in OSI model
-  request/reply mechanism
-  we broadcast the message asking which device has a specific IP address, that device replies with its MAC address

-  **a router will never forward a broadcast message**
-  the broadcast message will stay within the same network, it will not go beyond
-  proxy arp = router plays a role of a proxy