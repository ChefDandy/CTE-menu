# [Network Share Discovery](https://attack.mitre.org/techniques/T1135/)

## Exploit syntax:
* Look for folders and drives shared on remote systems.

## Detection Technique:
* Kibana queries to detect Network Share Discovery 
	*“net.exe share” or “net.exe” and “share”