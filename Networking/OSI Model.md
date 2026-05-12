A conceptual 7-layer framework that separates the functions of network communication into layers.
Each layer takes a message and adds control information to it on the transmitting end. This information is intended to be processed by the same layer on the receiving end.

![[OSI_Model.png]]
Each layer includes details that answer the following questions:

**Layer 7:** 
*What is the message? What should be done with it?*
Includes things like request types, authentication headers, and resource paths in HTTP

**Layer 6:** 
*How to read the message?*
Includes things like how message is formatted, encrypted, and compressed

**Layer 5:**
*Whose turn is it to talk?*
Includes things like who is transmitting and terminating connections.

**Layer 4:** 
*Where to deliver the message inside the device?*
Includes things like source/destination port numbers, segmentation/sequencing, congestion control, error control

**Layer 3:**
*How to get this message to the right network?*
Includes things like the source IP and destination IP, TTL

**Layer 2:** 
*How to get this message to the next machine?*
Includes things like hardware addresses of next machine (not final machine, uses hop-to-hop delivery), error detection

**Layer 1:** 
This layer does not add anything. It transfers the raw bits from one machine to the other.

![[OSI_Model_with_frames.png]]