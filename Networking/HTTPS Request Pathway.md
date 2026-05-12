What happens when you make a network request in an application?
[[OSI Model]]

1) Make request in python script

```
import requests

requests.post(
    "https://api.example.com/v1/orders",
    json={"item": "book", "quantity": 1},
    headers={"Authorization": "Bearer abc123"}
)
```

>This will create the HTTP request with headers and data 

![[HTTP_Request.png]]
>This is Application layer in OSI model

2) Python library or OS Resolver makes DNS request for IP address corresponding to host name
>DNS is another Application level protocol. Commonly uses UDP port 53
>This is Application layer in OSI model

3) Python asks OS to create network connection using OS socket API
>OS will identify connection by (source IP, source port, destination IP, destination port, protocol) 
   Destination port depends on request type. For HTTPS request, port 443 is used. For HTTP request, port 80 is used.
>Source port is an ephemeral port assigned by OS.
>This is Network and Transport layer in OSI model

4) TCP establishes connection with a three-way handshake
>A reliable, ordered, byte-stream is created between the machine and the server
>This is Presentation layer in OSI model

5) TLS handshake occurs after TCP connection is setup. This allows messages to be encrypted.
>TLS authenticates server and allows for encryption

6) The message is sent down the network stack.
>HTTP data is sent through the TLS/TCP connection. It is encrypted using TLS. It is segmented using TCP. The IP packet is created by the OS and the message is sent to the network card and is forwarded router to router until it reaches destination IP.

7) At the server side, the message moves up the network stack. 
>The TCP connection is already set up and the server OS is maintaining state regarding the connection. Things like sequence number, client IP, client port, acknowledgement numbers. The message may be split across many packets, so it is reassembled. The message is decrypted with TLS and the server application handles the HTTP request.


Request either:
1) Returns a response object with status code, headers and body
2) Raises an exception:
*Timeout Exception*
- Connection Timeout: connection was not established in time
- Connected, but response did not arrive in time
*Connection Exception
- DNS resolution failed
- TCP connection failed
- connection refused
- TLS certificate validation failed
- connection reset (server restarted or closed connection)
- network unreachable
*Request Exception*
- Failed to parse JSON body
