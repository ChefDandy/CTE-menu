# [Domain Trust Discovery](https://attack.mitre.org/techniques/T1482/)

## Exploit syntax:
```powershell
sharpps Nltest.exe /domain_trusts 
```
---

## Detection Technique:
* Investigate any queries of a service with “domain” as a key word
* (Kibana): Search on possible string queries based on powershell domain trust enumeration commands
	* Get-DomainTrusts
	* Get-NetDomainTrusts

--- 

## Resources