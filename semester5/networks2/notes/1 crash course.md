## what is a network?
-  two or more connected devices in order to do something (communication, sharing files, sharing storage...)

## different types of networks
-  personal area network - **span of 10 meters**, shortest network you can have typically using bluetooth like headphones connected to your phone
-  local area network - **span of 1 kilometre**, network that you have at your home
-  metropolitan area network - **span of a city**, used in cases where you have a number of locations scattered across one city
-  wider area network - **span of a country**, used in cases where you have a number of locations scattered across a country, it's a collection of multiple metropolitan area networks

## network topologies:
-  bus topology - the simplest one, the cheapest one, using only one cable, challenge in terms of management: if the cable encounters a problem, the whole network is down, it is difficult to tell which device is encountering a problem, you need to have a mechanism to know which information to send to which device (who will be accessing the bus)
-  star topology - central device that all devices are connected to (usual home setup with a wifi router), every device has it's own cable so no issues like with the bus topology, if there is a problem with a cable, we can easily determine which one is it, we are using more cables, which makes it more expensive, also if the network device fails, the whole network is down
-  ring topology - each device is connected to the next one to from a ring, **the signal travels only in one direction**, you need a device to arbitrate who can send the data, we use tokens
-  hybrid topology - a collection of all topologies we mentioned, most common in modern time

## transmission media:
-  twisted pair cable - **span of 100 meters**, you need to use a repeater if the span needs to be bigger or the signal will slowly die, most common in LAN (unshielded and shielded twisted pair, shielded has a plastic cover over cables, but unshielded is used more because it's cheaper and easier to manipulate)
-  coaxial cable - **span of 500 meters**, you need to use a repeater if the span is bigger, it is used in a core network (all the equipment for network companies) more so than user networks 
-  fibre optic cable - most common, does not have electrical power like previous cables, it has light so it is much faster than others
-  radio waves - wi-fi, bluetooth

## network devices:
-  network interface card (NIC) - physical layer, used to connect devices to networks, each has unique ID (MAC address)
-  repeater - physical layer, amplify and regenerate the signal when the span runs out
-  hub - physical layer, a repeater with multiple ports, once it receives a signal it broadcasts it to all ports except the one it got the signal from, it is a dumb device (has no intelligence)
-  bridge - data link layer, filters messages using MAC addresses, connects multiple LANs that use the same protocol
-  switch - data link layer, does the same thing as the bridge but it performs error checking before sending the data so if the data has any errors, it will drop it
-  router - network layer, connecting LANs and WANs, has to maintain a routing table to route the data correctly, also performs error checking

## network models:
-  OSI - application, presentation, session, transport, network, data link, physical
-  TCP/IP - application, transport, internet, network access (application does the same thing as session, presentation and application in OSI)

TCP/IP created first, OSI created later to create a standard for others to create their networks
TCP/IP specifies which protocols are used in which layer, it is more practical than OSI

what does a network model do?
-  routing using IP addresses, routing tables, packetising (packing info and sending it as a unit)

two main protocols in transport layer
-  TCP and UDP
-  TCP is more connection oriented (it needs to establish a connection before sending data), three way handshake before sending data
-  UDP is connectionless, it starts sending data without needing to establish a connection
-  application layer - FTP, DNS, HTTP, DHCP
-  transport - TCP, UDP
-  internt - IP
-  network access - Ethernet, 802.11

## data encapsulation - key concept

-  each layer adds a header (included in protocol data unit PDU) to the message it receives and then send it to the next layer
-  checksum - the number that is computed on in error checking on data
-  all networking uses this process