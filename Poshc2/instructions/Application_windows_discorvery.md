# [Application Window Discovery](https://attack.mitre.org/techniques/T1010/)

## Exploit Description: 
Obtain a listing of open application windows.

---
## Exploit syntax:

  
### List processes
```powershell
getprocesslist
```

```powershell 
ps 
```
### Get a process
```powershell 
getprocess <explore>
```

```powershell 
sharpps get-process 
```
---

## Detection Technique:
* Look for any process enumeration (ls / get-process / dir)
* Event.code: 1
* process.args:<command and/or arguments>

## Resources