# [System Time Discovery]()

## Exploit description:
Gather the system time and/or time zone from a local or remote system.

## Exploit syntax:
* net time / hostname

## Detection Technique:
* Observe Situational Awareness commands such as net.exe. 
* Possible Kibana queries (“net.exe start” or “net.exe” and “start”)
