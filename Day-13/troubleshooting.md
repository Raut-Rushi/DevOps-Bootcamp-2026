# Incident #002: Database Connection Failed

**Time:** 10:30 AM  
**Application Server:** `10.0.2.15`  
**Database Server:** `10.0.3.20`  
**Database Port:** `5432`

## Problem
The application can access the website but cannot connect to the database.

## Investigation Steps

### 1. Check application configuration
```bash
pwd
ls -a
cat app.conf
```
Verify that the database IP is `10.0.3.20` and the port is `5432`. The filename may differ.

### 2. Check network connectivity
```bash
ping 10.0.3.20
```
If ping fails, investigate network or firewall issues. Remember, ping may be blocked even when the database is reachable.

### 3. Check the network route
```bash
traceroute 10.0.3.20
```
On Windows, use `tracert 10.0.3.20`. This helps investigate the path to the database.

### 4. Check application logs
```bash
tail -n 20 application.log
```
Look for connection timeouts, refused connections, or authentication errors.

### 5. Identify possible causes
- Incorrect database IP or port.
- Database not listening on port `5432`.
- Routing or firewall issue.
- Cloud security rules blocking traffic.
- Database access controls or incorrect credentials.

### 6. Take action based on evidence
If the configuration is correct but the connection still fails, ask the database or network team to verify the listening port, routing, firewall rules, and database access controls.

## Troubleshooting Order

**Configuration → Network → Route → Logs → Identify cause → Fix**

**Important:** Both servers running does not guarantee that the database connection works. Investigate first and change settings only after identifying the likely cause.