🚨 Production Alert

Users are reporting that shop.technova.com is not opening.

A junior engineer says:

"Let's restart the server."

❌ Don't do that blindly.

A DevOps engineer first asks:
Is DNS working?
       ↓
Is networking working?
       ↓
Is load balancer working?
       ↓
Is application working?
       ↓
Is database working?
- This is called layered troubleshooting
---------------------------------------------------------------------------------------------------------------------------------
🚨 REAL PRODUCTION SCENARIO — DNS CACHE

Suppose your company moves its application:

Old server:

10.10.10.20

New server:

20.20.20.30

DNS gets updated.

But some users still reach the old server.

Why?

One possible reason is cached DNS information based on the previous TTL.

This is why DNS changes can create confusing situations during migrations.
---------------------------------------------------------------------------------------------------------------------------------
# 🎮 16. DEVOPS BOSS FIGHT

## Incident

Your company's website:

https://shop.company.com

is not opening.

You run:

nslookup shop.company.com

and get:

DNS request timed out.


## 1. What does this result suggest?

"DNS request timed out" means our computer sent a DNS query but did not receive a DNS response within the expected time.

This suggests a possible DNS communication problem.

Important:
It does NOT immediately prove that the website/server is down.

The problem could be:
- Local machine
- DNS resolver
- Network connection
- Firewall
- DNS server problem


## 2. What components could be involved?

The DNS request may involve:

Your Computer
     ↓
Network
     ↓
DNS Resolver
     ↓
Root DNS
     ↓
TLD DNS
     ↓
Authoritative DNS
     ↓
DNS Response


Possible problem areas:

1. Local machine
2. Network connection
3. DNS resolver
4. Firewall/security rules
5. Authoritative DNS
6. Website/application server


## 3. What would you check next?

Do not immediately assume the website is down.

### Step 1: Check local network

Check whether your computer has a valid network connection/IP configuration.

Windows:

ipconfig


### Step 2: Test basic connectivity

Try:

ping 8.8.8.8

If this works, basic Internet connectivity is likely working.

If this fails, investigate the local network/Internet connection first.


### Step 3: Test DNS using another DNS server

Try:

nslookup shop.company.com 8.8.8.8

If this works but the normal nslookup timed out, the configured DNS resolver may be the problem.


### Step 4: Check another domain

Try:

nslookup google.com

If google.com also times out, the problem may be with the local DNS configuration, resolver, or network path.

If google.com works but shop.company.com does not, the problem may be specific to company.com's DNS.


### Step 5: Check the authoritative DNS

If possible, check the domain's authoritative DNS servers and verify that the required DNS record exists.

For example:

shop.company.com
        ↓
A / CNAME record
        ↓
Correct destination


### Step 6: Check the application

Once DNS resolution works, test the actual website:

curl -I https://shop.company.com

This checks whether the web service is responding.

A DNS problem and an application problem are different.


## 4. How do we decide where the problem is?

### A. Local Machine Problem

Possible signs:

- Other devices can resolve the domain.
- Your machine cannot.
- DNS settings on your machine are incorrect.
- Network configuration is incorrect.

Check:

ipconfig


### B. DNS Resolver Problem

Possible signs:

- Normal DNS resolver times out.
- Another DNS resolver works.

Example:

nslookup shop.company.com

fails

but:

nslookup shop.company.com 8.8.8.8

works.

This points toward the configured DNS resolver or its path.


### C. Authoritative DNS Problem

Possible signs:

- Multiple DNS resolvers cannot resolve shop.company.com.
- Other domains work normally.
- The domain's authoritative DNS server or DNS records may have a problem.

Check the domain's authoritative DNS records.


### D. Network Connectivity Problem

Possible signs:

- Internet connectivity is unavailable.
- Other network tests also fail.
- You cannot reach external IP addresses.

Check:

ipconfig
ping 8.8.8.8


### E. Application/Server Problem

Possible signs:

DNS works and returns the correct IP, but the website still does not respond.

For example:

nslookup shop.company.com
        ↓
Correct IP returned ✅
        ↓
curl https://shop.company.com
        ↓
Connection/HTTP error ❌

Then investigate:

- Web server
- Application
- Port
- Firewall
- Load balancer
- Cloud infrastructure


# 🧠 Final Troubleshooting Flow

Website not opening
        ↓
DNS request timed out
        ↓
Is local network working?
        ↓
Check ipconfig / connectivity
        ↓
Does another DNS resolver work?
        ↓
Yes → Configured DNS resolver may be the issue
        ↓
No
        ↓
Does the domain work through other resolvers?
        ↓
No → Investigate authoritative DNS / DNS records
        ↓
DNS works?
        ↓
Test website with curl
        ↓
DNS works + curl fails
        ↓
Investigate application/server/network/port


# 🔥 Key Lesson

Do not think:

"nslookup timed out → website server is down."

Instead think:

"nslookup timed out → DNS resolution is currently failing, so I need to identify whether the failure is local, network-related, resolver-related, or authoritative DNS-related."

Simple troubleshooting mindset:

DNS → Network → Application