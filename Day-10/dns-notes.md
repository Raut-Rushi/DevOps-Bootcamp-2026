

## 1. What is DNS?

DNS = Domain Name System.

DNS converts a domain name into an IP address.

Example:
google.com → IP address

DNS is like the **phonebook of the Internet**.


## 2. Why does DNS exist?

Humans remember names easily:

google.com

Computers communicate using IP addresses:

142.x.x.x

So DNS converts:

Domain Name → IP Address


## 3. How DNS Resolution Works

When we request:

google.com

The basic flow is:

Client
  ↓
DNS Resolver
  ↓
Root DNS
  ↓
TLD DNS (.com)
  ↓
Authoritative DNS
  ↓
IP Address
  ↓
Client

If the resolver already has the answer in its cache, it can return it directly.


## 4. DNS Hierarchy

DNS is organized like a hierarchy:

Root
  ↓
TLD
  ↓
Domain
  ↓
DNS Records

Example:

google.com

.com → TLD
google.com → Domain


## 5. DNS Resolver

A DNS Resolver receives a DNS query from a client and finds the required DNS information.

Example:

Computer → Resolver → IP address

It acts as a middleman between the client and DNS servers.


## 6. Recursive vs Iterative Queries

Recursive Query:
The resolver is asked to find the final answer.

Simple:
"Find the answer for me."

Iterative Query:
A DNS server gives the best information it has or refers the requester to another DNS server.

Simple:
"Ask this next server."


## 7. Root DNS

Root DNS servers are at the top of the DNS hierarchy.

They do not normally provide the final IP address.

They direct queries toward the correct TLD server.

Example:

google.com
   ↓
Root
   ↓
.com TLD


## 8. TLD DNS

TLD = Top-Level Domain.

Examples:

.com
.org
.net
.in

TLD DNS servers direct the query toward the authoritative DNS server for the domain.


## 9. Authoritative DNS

An authoritative DNS server contains the actual DNS records for a domain.

Example:

example.com → DNS records

It gives the final authoritative answer for the domain.


## 10. DNS Records

DNS records are entries that tell DNS information about a domain.

Common records:

A
AAAA
CNAME
MX
NS
TXT


## 11. A Record

A = Address Record.

Maps a domain name to an IPv4 address.

Example:

example.com → 192.168.1.10


## 12. AAAA Record

AAAA maps a domain name to an IPv6 address.

Example:

example.com → IPv6 address


## 13. CNAME Record

CNAME = Canonical Name.

It creates an alias from one domain name to another domain name.

Example:

www.example.com → example.com


## 14. MX Record

MX = Mail Exchange.

It specifies the mail servers responsible for receiving email for a domain.

Example:

example.com → mail server


## 15. NS Record

NS = Name Server.

It specifies the authoritative DNS servers for a domain.

Example:

example.com → ns1.example.com


## 16. TXT Record

TXT = Text Record.

It stores text information in DNS.

Common uses:
- Domain verification
- Email security information
- SPF records


## 17. TTL and DNS Caching

TTL = Time To Live.

TTL tells DNS caches how long a DNS record can be cached.

Example:

TTL = 3600 seconds

This means the record can normally be cached for 1 hour.

DNS caching reduces repeated DNS queries and improves performance.


## 18. nslookup

`nslookup` is a command used to check DNS information.

Example:

nslookup google.com

It helps us check:

Domain → IP address

Useful for DNS troubleshooting.


## 19. DNS Troubleshooting

If a website is not working:

1. Check DNS resolution:

nslookup example.com

2. Check network reachability:

ping example.com

3. Check the web service:

curl https://example.com

Simple troubleshooting:

DNS problem → nslookup
Network problem → ping
Application/HTTP problem → curl


## 20. Real Production DNS Incident

Example:

A company changes the IP address of its website.

Old IP:
10.0.0.10

New IP:
10.0.0.20

Some users may still reach the old IP because DNS records are cached.

Possible result:

Some users → Old server
Some users → New server

This can cause temporary website access problems.

Main concept:

DNS change + caching + TTL
        ↓
Old information may remain temporarily


## 21. DNS in DevOps / Cloud

DNS is used heavily in cloud and DevOps.

Common uses:

- Connect domain names to cloud applications
- Route traffic to servers/load balancers
- Manage application endpoints
- Service discovery
- Domain verification
- Email configuration

Example:

User
  ↓
app.example.com
  ↓
DNS
  ↓
AWS Load Balancer
  ↓
Application


## Quick Revision

DNS
→ Converts domain names to IP addresses.

Resolver
→ Finds DNS information for the client.

Root
→ Directs query to the correct TLD.

TLD
→ Directs query toward authoritative DNS.

Authoritative DNS
→ Provides the actual DNS records.

A
→ Domain → IPv4

AAAA
→ Domain → IPv6

CNAME
→ Alias → Another domain

MX
→ Mail server

NS
→ Authoritative name servers

TXT
→ Text/verification/email-security information

TTL
→ How long DNS data can be cached.

nslookup
→ Check DNS resolution.