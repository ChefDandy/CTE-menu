# [Network Share Discovery](https://attack.mitre.org/techniques/T1135/)

## Exploit syntax:

```powershell
sharpps net share
```
---

## Detection Technique:
* Kibana queries to detect Network Share Discovery 
	* `net.exe` 
	* process.name: `net.exe`
	* process.command.line: `C:\Windows\system32\net1 share ADMIN$`
		* May need to utilize as a filter instead of query

---

## Resources