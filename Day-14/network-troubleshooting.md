# Network Troubleshooting Scenario

## Incident
A developer reports that an application website is not loading.

## Investigation Steps

1. Run `ipconfig` to check the local IP address and Default Gateway.
2. Run `nslookup app.company.com` to check hostname resolution.
3. Run `ping <gateway-ip>` to test gateway reachability.
4. Run `route print` to inspect available routes.
5. Run `tracert app.company.com` to investigate the network path.
6. Run `curl.exe -I https://app.company.com` to check the HTTP response.

## Important Observations
- DNS resolution failure may indicate a DNS issue.
- Gateway failure may indicate a local network or gateway problem.
- A routing failure may prevent traffic from reaching the destination.
- An HTTP error can indicate that the server is reachable but the application or web server has a problem.
- Firewalls may block ping or traceroute traffic, so use multiple checks.

## Conclusion
Check evidence at each layer before deciding the root cause. Do not change configurations until the likely cause is identified.