### Design the network

**Your company needs three subnets for a small internal lab.**
You have been given:

`192.168.10.0/24`


The requirements are:
- Subnet A needs up to 50 hosts.
- Subnet B needs up to 25 hosts.
- Subnet C needs up to 10 hosts.

Your task is to choose suitable subnet sizes.
Hint: A /26 traditionally supports 62 usable hosts,
 /27 supports 30, and 
 /28 supports 14.
- Think carefully: these subnets must not overlap, and all must fit inside the original /24 range.

--->

- overlap? -> overlap means two subnets includes the same IP address.
Example: Subnet A: 192.168.10.0 - 192.168.10.63
         Subnet B: 192.168.10.32 - 192.168.10.63

- These overlap because both include addresses from .32 to .63.

# step by step solution:

Allocate the largest subnet first.

**Subnet A: needs 50 host.**
choose /26 beacause it supports 62 usable hosts
- Network : 192.168.10.0/26
- Usable IPs : 192.168.10.1 - 192.168.10.62
- Broadcast : 192.168.10.63
- Total addresses : 64

**Subneet B: needs 25 host.**
choose /27 beacause it supports 30 usable hosts
- Network : 192.168.10.64/27
- Usable IPs : 192.168.10.65 - 192.168.10.94
- Broadcast : 192.168.10.95
- Total addresses : 32

**Subnet c: needs 10 hosts.**
choose /28 because it supports 14 usable hosts.
The next available subnet starts at .96.
- Network: 192.168.10.96/28
- Usable IPs: 192.168.10.97 – 192.168.10.110
- Broadcast: 192.168.10.111
- Total addresses: 16

*Start at .0, allocate 64 addresses, then start at .64. Allocate 32, then start at .96. Allocate 16.*


