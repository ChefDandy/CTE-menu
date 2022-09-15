# [Network Service Scanning](https://attack.mitre.org/techniques/T1046/)

## Exploit Description: 
Obtain a listing of services running on remote hosts
---
## Exploit syntax:
In Poshc2, run 
```sh
portscan <ipaddress> <Port-Range> ## For remote Scan

sharpps netstat -ano  ##For local ports of implant
```
---
## Detection Technique:
* Investigate instances of a single host attempting to make connections to another single host on multiple ports below 1000. Timeframe may vary, but the faster- the more suspicious.

### Kibana visualization example for portscanning:

* Query - source.ip:192.168.5.0/24 AND NOT destination.ip:192.168.5.0/24
    * > Searching for scans happening from a network by looking for traffic leaving it. The destination can alternatively be changed to individual CIDRs of another network.
* Metric: count
    * Bucket 1
        * Aggregation: Terms
        * Field: source.ip
        * Order: either
        * Size: 5
    * Bucket 2
        * Aggregation: Terms
        * Field: destination.ip
        * Order: ascending
        * Size: 100
    * Bucket 3
        * Aggregation: Terms
        * Field: destination
        * Order: ascending
        * Size: 100

### Sharpps netstat -ano
* process.parent.name: nope.exe     
* process.name: NETSTAT.EXE
* event.code:1
* Process Create (rule: ProcessCreate)
---  
