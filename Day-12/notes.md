# Day 12: Subnetting and Network Segmentation

## 1. What is Subnetting?
Subnetting is the process of dividing a large network into smaller networks called subnets.

## 2. Why is Subnetting Important?
- Improves network organization.
- Helps manage IP addresses efficiently.
- Supports network segmentation and security policies.
- Makes network management easier.

## 3. What is CIDR?
CIDR (Classless Inter-Domain Routing) represents the network prefix using notation such as `/24` or `/26`.

Example: `/24` means 24 bits are used for the network portion.

## 4. What is a Subnet Mask?
A subnet mask identifies the network portion and host portion of an IPv4 address.

Example: `/24` = `255.255.255.0`

## 5. Subnetting Formula
- Host bits = `32 - CIDR prefix`
- Total addresses = `2^(host bits)`
- Traditional usable hosts = Total addresses - 2

## 6. Example: 192.168.1.0/26
- Subnet mask: `255.255.255.192`
- Total addresses: 64
- Network address: `192.168.1.0`
- First usable IP: `192.168.1.1`
- Last usable IP: `192.168.1.62`
- Broadcast address: `192.168.1.63`
- Traditional usable hosts: 62

## 7. What is VLSM?
VLSM (Variable Length Subnet Masking) allows different subnets to use different sizes according to their host requirements.

## 8. Real-World DevOps Use
Companies use subnets to separate public-facing services, application servers, and databases. In AWS, subnets help organize resources inside a VPC.

## Key Takeaway
Subnetting divides networks into smaller ranges. CIDR helps determine each subnet's size, and proper network design helps with organization, routing, and security.