Imagine your Team Lead says:

- 🚨 "The application is running on the server, but users can't access it."

You know:

- Server IP = 192.168.1.20
- Application Port = 8080

- What URL would you try from the network?


- It should follow:

- IP : PORT

- So:

- http://192.168.1.20:8080

- This doesn't guarantee it will work. You would then troubleshoot routing, firewall/security rules, application binding, and whether the service is actually listening.