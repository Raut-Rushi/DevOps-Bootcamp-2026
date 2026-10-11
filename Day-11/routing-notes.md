# Day 11: IP Routing and Default Gateway

## 1. What is Routing?
Routing is the process of deciding the path that network packets take to reach their destination.

## 2. What is a Router?
A router connects different networks and forwards packets between them.

## 3. What is a Default Gateway?
A default gateway is usually a router that sends traffic from our local network to other networks, such as the internet.

## 4. Local vs Remote Network
- **Local network:** Devices communicate within the same subnet.
- **Remote network:** The destination is outside the local subnet, so a router is generally needed.

## 5. What is a Routing Table?
A routing table contains rules that tell a computer or router where to send network traffic.

## 6. What is a Default Route?
`0.0.0.0/0` is the IPv4 default route. It is used when no more specific route matches the destination.

## 7. Static vs Dynamic Routing
- **Static routing:** Routes are configured manually.
- **Dynamic routing:** Routers learn and update routes using routing protocols.

## 8. Important Commands

- `ipconfig` — Displays Windows network configuration.
- `route print` — Displays the Windows routing table.
- `ping <IP>` — Tests network reachability using ICMP.
- `tracert google.com` — Shows the network hops toward a destination.
- `nslookup google.com` — Queries DNS information.
- `curl -I https://google.com` — Checks HTTP response headers.

## 9. How DNS and Routing Work Together

1. DNS resolves a hostname into an IP address.
2. The computer checks its routing table.
3. It sends traffic directly on the local network or through a gateway.
4. Routers forward packets toward the destination.

## 10. Real-World DevOps Example

If an application server cannot connect to a database, check the destination IP, routing, firewall/security rules, and database port. Verify each layer before deciding the root cause.

## Key Takeaway
**DNS finds the destination's IP address; routing determines where network traffic should go.**