# [Network Share Discovery](https://attack.mitre.org/techniques/T1135/)

## Exploit syntax:

```powershell
sharpps net share
````

## Detection Technique:
* Kibana queries to detect Network Share Discovery 
	* `net.exe share` 
	* prcoess.name: `net.exe`
	* prcoess.command.line: `C:\Windows\system32\net1 share ADMIN$`