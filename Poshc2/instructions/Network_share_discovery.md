# [Network Share Discovery](https://attack.mitre.org/techniques/T1135/)

## Exploit syntax:

```powershell

sharpps net share

````

## Detection Technique:
* Kibana queries to detect Network Share Discovery 
	*“net.exe share” or “net.exe” and “share”