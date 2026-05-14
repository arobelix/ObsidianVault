#Networking
**User Datagram Protocol**
Header Structure:

| Source Port | Dest Port | Length  | ChkSum  |
| ----------- | --------- | ------- | ------- |
| 2 bytes     | 2 bytes   | 2 bytes | 2 bytes |
- Source Port=senders port
- Destination Port=destination port
- Length: header + data in bytes

**Properties:**
- Error detection: This is optional depending on if Checksum is included
- Lossy: packets could be dropped
- Broadcast: Can send a message with special destination IP address: (255.255.255.255). This will trigger network cards to pick up the request and push out of all physical ports. Every machine on network will receive this message at the destination port
- Multicast: Can broadcast messages to specific clients. This requires routers to manage subscribers to the messages. This is only possible on private networks where every router supports this.

**Uses:**
VoIP : Voice over Internet Protocol
>Another protocol (RTP: Real Time Transfer Protocol) is used on top of UDP. It provides timestamp/sequence information to the destination. The destination can then handle lost packets. This has much lower latency then TCP (< 150ms)
