# Day 13: TCP, UDP and Ports

## 1. What is TCP?
TCP (Transmission Control Protocol) provides reliable and ordered data delivery between applications.

**Uses:** HTTPS, SSH, file transfers, and database connections.

## 2. What is UDP?
UDP (User Datagram Protocol) sends data without establishing a connection first. It does not guarantee delivery or order.

**Uses:** DNS queries, online gaming, and real-time voice/video.

## 3. TCP vs UDP
- **TCP:** Reliable and ordered delivery.
- **UDP:** Lower overhead, but no built-in delivery guarantee.

## 4. What is a Port?
A port number helps the operating system deliver network traffic to the correct application or service.

Common ports:
- 22 — SSH
- 53 — DNS
- 80 — HTTP
- 443 — HTTPS
- 3306 — MySQL
- 5432 — PostgreSQL

## 5. TCP Three-Way Handshake
TCP usually establishes a connection using:
1. SYN
2. SYN-ACK
3. ACK

**Note:** `Test-NetConnection` is a PowerShell command, so it does not run directly in Git Bash.

## 7. Real-World DevOps Use
If an application cannot connect to a database, check the destination IP, port, service status, routing, and firewall/security rules.

## Key Takeaway
An IP address identifies a network destination, while a port identifies the destination service. TCP provides reliable, ordered delivery; UDP does not guarantee delivery or ordering.