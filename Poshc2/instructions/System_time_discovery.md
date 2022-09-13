# [System Time Discovery]()

## Exploit description:
Gather the system time and/or time zone from a local or remote system.

## Exploit syntax:
In PoshC2, run 
```sh
sharpps net time \\<ipAddress> ##For remote computer time

sharpps net time ##For the implants time
```
## Detection Technique:
* Observe Situational Awareness commands such as net.exe. 
* Possible Kibana queries (“net.exe start” or “net.exe” and “start”)
