# [Network Service Scanning](https://attack.mitre.org/techniques/T1046/)

## Exploit Description: 
Obtain a listing of services running on remote hosts

## Exploit syntax:
In Poshc2, run 
```sh
portscan <ipaddress> <Port-Range> ## For remote Scan

sharpps netstat -ano  ##For local ports of implant
```
## Detection Technique:
* Investigate instances of a single host attempting to make connections to another single host on multiple ports below 1000. Timeframe may vary, but the faster- the more suspicious.
