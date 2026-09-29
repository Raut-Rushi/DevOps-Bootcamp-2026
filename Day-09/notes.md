## IPv4 → Network Bits → Host Bits → Subnet Mask → CIDR

1. IPv4
- IPv4 = Internet Protocol Version 4.

- An IPv4 address is 32 bits long.
It is divided into 4 octets, and each octet contains 8 bits.

- Example:
- 192.168.1.10

- 192       .168       .1        .10
- 8 bits    8 bits     8 bits     8 bits

- 8 + 8 + 8 + 8 = 32 bits


2. Network Bits and Host Bits

- The 32 bits of an IPv4 address are divided into:

- Network Bits + Host Bits

- Network Bits:
- Identify the network to which the device belongs.

- Host Bits:
- Identify a particular device/host within that network.

- Example:
- 192.168.1.10/24

- 24 bits → Network bits
- 8 bits  → Host bits

~ 24 + 8 = 32 bits


3. Subnet Mask

- A subnet mask tells us which part of an IPv4 address is the
Network portion and which part is the Host portion.

- Example:

- IP Address:
- 192.168.1.10

- Subnet Mask:
- 255.255.255.0

- Binary:

- 11111111.11111111.11111111.00000000
- ←──── 24 Network bits ────→ ←8 Host→

- In a subnet mask:
1 → Network bit

0 → Host bit


4. CIDR

CIDR = Classless Inter-Domain Routing.

- CIDR represents the number of Network bits using a slash (/).

Example:

192.168.1.10/24

- /24 means:
24 bits → Network
8 bits  → Host

Because:

32 - 24 = 8


5. Common CIDR Examples

- /8  → 8 Network bits  + 24 Host bits
     → 255.0.0.0

- /16 → 16 Network bits + 16 Host bits
     → 255.255.0.0

- /24 → 24 Network bits + 8 Host bits
     → 255.255.255.0




6. Important Formula

Host Bits = 32 - CIDR Prefix

Example:

/24 → 32 - 24 = 8 Host bits
/26 → 32 - 26 = 6 Host bits
/28 → 32 - 28 = 4 Host bits


7. Complete Flow

IPv4
 ↓
32 bits
 ↓
Network Bits + Host Bits
 ↓
Subnet Mask
 ↓
Identifies Network and Host portions
 ↓
CIDR
 ↓
Represents the number of Network bits


8. Easy Example

192.168.1.10/24

IP Address  = 192.168.1.10
CIDR        = /24
Network     = 24 bits
Host        = 8 bits
Subnet Mask = 255.255.255.0

Interview Answer:

CIDR tells us how many bits of an IPv4 address are used for
the network portion, while the remaining bits are used for hosts.