#Networking
![[TCP_Segment.png]]
- **Sequence Number:** The byte number of the first byte of the message
- **Acknowledgment Number:** The next byte number that the receiver expects to receive
- The source and destination use their ACK and SEQ numbers independently allowing duplex communication
- **Offset:** Used to indicate how long the header and where the data begins. Actually data length is determined from this offset and the IP packet length.
- **Window Size:** Used for congestion control. Indicates how many bytes the receiver willing to accept before the sender must wait for an acknowledgement
- **Checksum:** Used for error detection
- **Options:** Used for optional headers (max of 40 bytes)
- Total header size can be up to 60 bytes

**Connection Sequence:**
1) Source sends message with SYN flag set
2) Destination responds with SYN-ACK set
3) Source Responds with SYN set

**Data Transmission:**
1) If the recipient receives a packet for a sequence number it is not expecting(expected 37 but received 69), it can send a message with the ack number of 37 so the sender resends the message for bytes starting with 37

**Finish Sequence:**
1) Closer sends message with FIN flag set
2) Destination responds with ACK-FIN set
3) Closer responds with SYN set

**Properties:**
- Stateful connection
- Reliable transmission
- Ordering
- Full duplex communication

**Uses:**
Services that require reliable transmission:
Email, Web browsing, file transfers


