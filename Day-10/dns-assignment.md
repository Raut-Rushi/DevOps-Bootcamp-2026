Q1. What is DNS and why do we need it?

DNS = Domain Name System.

DNS converts human-readable domain names into IP addresses.

Example:
google.com → IP address

We need DNS because humans remember names easily, while computers communicate using IP addresses.


Q2. What happens when you type google.com in a browser?

Major steps:

1. Browser checks its cache for the IP address.
2. DNS resolver finds the IP address of google.com if needed.
3. Browser connects to the destination IP.
4. A connection is established using the required transport protocol.
5. For HTTPS, TLS encryption is established.
6. Browser sends an HTTP/HTTPS request.
7. Google server sends the response.
8. Browser displays the webpage.

Simple flow:

google.com
   ↓
DNS
   ↓
IP address
   ↓
Connection
   ↓
HTTPS request
   ↓
Server response
   ↓
Webpage


Q3. What is a DNS resolver?

A DNS resolver is a DNS service that receives a domain-name query and finds the IP address for the client.

Example:

Your computer → DNS Resolver → IP address of google.com

It acts like a middleman between your device and DNS servers.


Q4. Difference between Recursive and Iterative DNS queries?

Recursive Query:
The resolver is asked to find the final answer and does the work of contacting other DNS servers.

Iterative Query:
A DNS server gives the best information it currently has, often referring the requester to another DNS server.

Simple:

Recursive → "Find the final answer for me."

Iterative → "Here is the next server you should ask."


Q5. What are Root, TLD and Authoritative DNS servers?

Root DNS Server:
The top level of the DNS hierarchy. It directs queries to the correct TLD server.

TLD DNS Server:
TLD = Top-Level Domain.

Examples:
.com
.org
.in

It directs the query toward the authoritative DNS server for the domain.

Authoritative DNS Server:
Contains the actual DNS records for a domain.

Example:
It can provide the IP address for google.com.


Simple flow:

Client
  ↓
DNS Resolver
  ↓
Root
  ↓
TLD (.com)
  ↓
Authoritative DNS
  ↓
IP address


Q6. Explain A, AAAA, CNAME, MX, NS, TXT.

A:
Maps a domain name to an IPv4 address.

Example:
example.com → 192.168.1.10

AAAA:
Maps a domain name to an IPv6 address.

CNAME:
Makes one domain name an alias of another domain name.

Example:
www.example.com → example.com

MX:
MX = Mail Exchange.
Specifies the mail servers responsible for receiving email for a domain.

NS:
NS = Name Server.
Specifies the authoritative DNS servers for a domain.

TXT:
Stores text information in DNS.
Commonly used for domain verification and email-security records such as SPF.


Q7. What is TTL?

TTL = Time To Live.

In DNS, TTL tells DNS caches how long a DNS record can be cached before it should be queried again.

Example:

TTL = 3600 seconds

This means the record can normally be cached for 1 hour.


Q8. Why can a DNS change take time to appear everywhere?

Because DNS records are cached by browsers, operating systems, DNS resolvers, and other systems.

If you change a DNS record, some users may still receive the old cached value until its TTL expires.

Example:

Old IP → 10.0.0.1
New IP → 10.0.0.2

Some users may temporarily get the old IP while their cached record is still valid.

Simple:

DNS change
    ↓
Existing caches
    ↓
Wait for TTL/cache expiration
    ↓
New DNS information appears