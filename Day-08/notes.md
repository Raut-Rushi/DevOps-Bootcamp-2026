# Day -08: 

# 1. 🌐 Network
 -  What is a Network?

- A network is a connection between two or more devices that allows them to communicate and exchange data.

# 2. 💻 Client

- A client is a device or application that requests a service or data from another system.

- Remember

- Client = asks/request

# 3. 🖥️ Server

- A server is a computer or software that provides services or data to clients.

- Real-world example

- When you open your GitHub repository, your browser requests data from GitHub's servers.

# 4. 📍 IP Address

- IP = Internet Protocol

- An IP address is a numerical address used to identify a device on a network.

- Example:

- 192.168.1.10

# 5. 🔒 Private IP

-  A private IP address is used inside a private/local network and is not directly reachable from the public Internet.

- Example:

- 192.168.1.10
- imagine wifi in your home connected to your laptop and mobile phone , These devices can communicate with each other inside your network.

# 6. 🌍 Public IP

- A public IP address is an address used to communicate over the public Internet.

- Example:

203.0.113.10

- A server that needs to be directly reachable from the Internet may have a public IP\

# 7. 🏠 localhost

- localhost means:

- This same computer.

- It is a special hostname that refers to your own machine.

- Example:    
   curl http://localhost:8080

   - means:
- "Connect to port 8080 on my own computer."

- Real-world DevOps example

- You start your Node.js application:

- > npm start

- and it runs on:

- localhost:3000

- You open:

- http://localhost:3000

- Your browser is communicating with the application running on your own computer.

# 8. 🔢 127.0.0.1

- 127.0.0.1 is the commonly used IPv4 loopback address for localhost.
- Example:

- ping 127.0.0.1

- Your computer is basically asking:

- "Can I communicate with myself through the network stack?"

# 9. Port
- A number used to identify a network service/application.
- Example: 80 = HTTP, 443 = HTTPS, 22 = SSH.

# 10. DNS
- Domain Name System; converts domain names into IP addresses.

# 11. TCP
- Transmission Control Protocol; reliable, connection-oriented transport protocol.

# 12. UDP
- User Datagram Protocol; connectionless, lightweight transport protocol.