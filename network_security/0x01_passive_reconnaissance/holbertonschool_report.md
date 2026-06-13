# Passive Reconnaissance Report: holbertonschool.com
 
## 1. Objective
 
The goal of this exercise is to perform **passive reconnaissance** against the
domain `holbertonschool.com` using **Shodan**, in order to:
 
- Identify the IP ranges associated with the domain.
- Identify the technologies and frameworks running on subdomains of
  `holbertonschool.com`.
All information gathered here is from publicly available, passively indexed
data (Shodan, WHOIS, DNS, certificate transparency). No active scanning was
performed against the target's infrastructure.
 
> **Note:** This template is structured to be filled in with results from
> live Shodan queries (CLI or web interface). Replace the placeholder rows
> below with the actual data returned by your queries.
 
---
 
## 2. Methodology
 
### Step 1 — Initial DNS / WHOIS lookup
```bash
whois holbertonschool.com
dig holbertonschool.com A
dig holbertonschool.com MX
dig holbertonschool.com TXT
```
 
### Step 2 — Subdomain enumeration
```bash
subfinder -d holbertonschool.com -o subdomains.txt
# or
amass enum -passive -d holbertonschool.com -o subdomains.txt
```
 
### Step 3 — Resolve subdomains to IPs
```bash
for sub in $(cat subdomains.txt); do
  ip=$(dig +short "$sub" | tail -n1)
  echo "$sub -> $ip"
done
```
 
### Step 4 — Shodan host lookups
```bash
shodan host <IP>
shodan search hostname:holbertonschool.com
shodan search org:"<organization name>"
```
 
Shodan's `host` output provides:
- Open ports and running services/banners
- HTTP response headers (`Server`, `X-Powered-By`, etc.)
- TLS/SSL certificate details (issuer, subject CN/SAN — useful for
  discovering additional subdomains)
- Detected products/technologies (CMS, web frameworks, JS libraries)
### Step 5 — Determine IP ranges (CIDR)
For each unique IP returned, note the ASN and organization/ISP reported by
Shodan, then look up the announced netblock (e.g. via `whois <IP>` or
Shodan's "Network" field) to determine the CIDR range it belongs to.
 
---
 
## 3. IP Ranges Identified
 
| IP Address | CIDR Range | ASN | Organization / Hosting Provider | Notes |
|------------|-----------|-----|----------------------------------|-------|
| _TBD_      | _TBD_     | _TBD_ | _TBD_                           | _TBD_ |
 
---
 
## 4. Subdomains Discovered
 
| Subdomain | Resolved IP | Source (Shodan / CT logs / Subfinder) | Notes |
|-----------|-------------|----------------------------------------|-------|
| _TBD_     | _TBD_       | _TBD_                                   | _TBD_ |
 
---
 
## 5. Technologies & Frameworks per Host
 
| Host / Subdomain | IP | Web Server | CMS / Framework | Programming Language / Stack | Other Open Services | TLS Cert Issuer |
|-------------------|----|-------------|------------------|-------------------------------|----------------------|------------------|
| _TBD_             | _TBD_ | _TBD_   | _TBD_            | _TBD_                         | _TBD_                | _TBD_            |
 
---
 
## 6. Summary of Findings
 
- _Summarize hosting providers used (e.g. shared hosting, CDN, cloud provider)._
- _Note any common technology stack across subdomains._
- _Highlight any services exposed beyond standard HTTP/HTTPS (e.g. SSH, FTP, databases)._
- _Note any outdated software versions disclosed in banners._
---
 
## 7. Recommendations
 
- Minimize information disclosure in HTTP headers (`Server`, `X-Powered-By`).
- Ensure no unnecessary services are exposed to the internet.
- Keep software/frameworks up to date to avoid version-based fingerprinting.
- Monitor certificate transparency logs for unexpected subdomain issuance.
---
 
## 8. Tools Used
 
- Shodan (CLI / Web)
- whois
- dig / nslookup
- subfinder / amass (subdomain enumeration)# Passive Reconnaissance Report: holbertonschool.com
 
## 1. Objective
 
The goal of this exercise is to perform **passive reconnaissance** against the
domain `holbertonschool.com` using **Shodan**, in order to:
 
- Identify the IP ranges associated with the domain.
- Identify the technologies and frameworks running on subdomains of
  `holbertonschool.com`.
All information gathered here is from publicly available, passively indexed
data (Shodan, WHOIS, DNS, certificate transparency). No active scanning was
performed against the target's infrastructure.
 
> **Note:** This template is structured to be filled in with results from
> live Shodan queries (CLI or web interface). Replace the placeholder rows
> below with the actual data returned by your queries.
 
---
 
## 2. Methodology
 
### Step 1 — Initial DNS / WHOIS lookup
```bash
whois holbertonschool.com
dig holbertonschool.com A
dig holbertonschool.com MX
dig holbertonschool.com TXT
```
 
### Step 2 — Subdomain enumeration
```bash
subfinder -d holbertonschool.com -o subdomains.txt
# or
amass enum -passive -d holbertonschool.com -o subdomains.txt
```
 
### Step 3 — Resolve subdomains to IPs
```bash
for sub in $(cat subdomains.txt); do
  ip=$(dig +short "$sub" | tail -n1)
  echo "$sub -> $ip"
done
```
 
### Step 4 — Shodan host lookups
```bash
shodan host <IP>
shodan search hostname:holbertonschool.com
shodan search org:"<organization name>"
```
 
Shodan's `host` output provides:
- Open ports and running services/banners
- HTTP response headers (`Server`, `X-Powered-By`, etc.)
- TLS/SSL certificate details (issuer, subject CN/SAN — useful for
  discovering additional subdomains)
- Detected products/technologies (CMS, web frameworks, JS libraries)
### Step 5 — Determine IP ranges (CIDR)
For each unique IP returned, note the ASN and organization/ISP reported by
Shodan, then look up the announced netblock (e.g. via `whois <IP>` or
Shodan's "Network" field) to determine the CIDR range it belongs to.
 
---
 
## 3. IP Ranges Identified
 
| IP Address | CIDR Range | ASN | Organization / Hosting Provider | Notes |
|------------|-----------|-----|----------------------------------|-------|
| _TBD_      | _TBD_     | _TBD_ | _TBD_                           | _TBD_ |
 
---
 
## 4. Subdomains Discovered
 
| Subdomain | Resolved IP | Source (Shodan / CT logs / Subfinder) | Notes |
|-----------|-------------|----------------------------------------|-------|
| _TBD_     | _TBD_       | _TBD_                                   | _TBD_ |
 
---
 
## 5. Technologies & Frameworks per Host
 
| Host / Subdomain | IP | Web Server | CMS / Framework | Programming Language / Stack | Other Open Services | TLS Cert Issuer |
|-------------------|----|-------------|------------------|-------------------------------|----------------------|------------------|
| _TBD_             | _TBD_ | _TBD_   | _TBD_            | _TBD_                         | _TBD_                | _TBD_            |
 
---
 
## 6. Summary of Findings
 
- _Summarize hosting providers used (e.g. shared hosting, CDN, cloud provider)._
- _Note any common technology stack across subdomains._
- _Highlight any services exposed beyond standard HTTP/HTTPS (e.g. SSH, FTP, databases)._
- _Note any outdated software versions disclosed in banners._
---
 
## 7. Recommendations
 
- Minimize information disclosure in HTTP headers (`Server`, `X-Powered-By`).
- Ensure no unnecessary services are exposed to the internet.
- Keep software/frameworks up to date to avoid version-based fingerprinting.
- Monitor certificate transparency logs for unexpected subdomain issuance.
---
 
## 8. Tools Used
 
- Shodan (CLI / Web)
- whois
- dig / nslookup
- subfinder / amass (subdomain enumeration)
