# Production Troubleshooting: Application Cannot Connect to Database

## Problem

- Application Server: `10.0.2.15`
- Database Server: `10.0.3.20`
- Both servers are running, but the application cannot connect to the database.

## Investigation Steps

### 1. Check the application configuration
Verify that the database IP address and port are correct.
``` pwd ```
``` ls -a```
- if ls get found including hidden files .env,app.conf,or config then read it by:
```cat app.conf```
- verify the database setting :
``` DB_HOST=10.0.3.20
DB_PORT=5432 
```
-  check:
Is DB_HOST set to the correct database IP?

Is DB_PORT set to the correct database port?

The example port 5432 is commonly used by PostgreSQL. The actual port depends on the database.


### 2. Check network connectivity
```bash
ping 10.0.3.20
```
- Success: The database IP responds to ping.
- Failure: Network or firewall issues may exist, but ping could be blocked.

### 3. Check routing
```bash
traceroute 10.0.3.20
```
This helps investigate the network path to the database. On Windows, use `tracert 10.0.3.20`.

### 4. Check logs
```bash
tail -n 20 application.log
```
Look for connection errors or authentication failures.

### 5. Identify the root cause
Possible causes:
- Incorrect database IP or port.
- Network routing problem.
- Firewall blocking traffic.
- Database service not listening.
- Incorrect username or password.

## Troubleshooting Order

**Configuration → Network → Route → Logs → Root Cause**

**Important:** Both servers running does not guarantee that they can communicate. Use the test results and logs to identify the actual problem before making changes.